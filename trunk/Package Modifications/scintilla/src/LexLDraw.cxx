// Scintilla source code edit control
/** @file LexLDraw.cxx
 ** Lexer for LDraw
 **/
// Copyright 2008 by Orion Pobursky <billthefish@yahoo.com>
// The License.txt file describes the conditions under which this software may be distributed.

#include <stdlib.h>
#include <string.h>
#include <ctype.h>
#include <stdio.h>
#include <stdarg.h>

#include "Platform.h"

#include "PropSet.h"
#include "Accessor.h"
#include "StyleContext.h"
#include "KeyWords.h"
#include "Scintilla.h"
#include "SciLexer.h"
#include "CharacterSet.h"

#ifdef SCI_NAMESPACE
using namespace Scintilla;
#endif

static inline bool IsWhiteSpace(int ch) {
	return IsASpaceOrTab(ch) || (ch == '\n') || (ch == '\r');
}

static inline bool IsAWordChar(int ch) {
	return ch >= 0x80 || isalnum(ch) || ch == '_' ||
		   ch == '-' || ch == '.' || ch == '/' || ch == '\\';
}

static int ArgNumber(StyleContext &sc, Accessor &styler) {
	int pos = sc.currentPos;
	int lineCurrent = styler.GetLine(pos);
	int linestart = styler.LineStart(lineCurrent);
	int args = 0;

	if (!IsWhiteSpace(sc.ch)) {
		for (int i = linestart; i <= pos; i++) {
			if (IsAWordChar(styler.SafeGetCharAt(i)) && !IsAWordChar(styler.SafeGetCharAt(i-1))) {
				args++;
			}
		}	
	}
	return args;
}

static void ColouriseLDrawDoc(unsigned int startPos, int length, int initStyle,
						   WordList *keywordlists[], Accessor &styler) {

	WordList &keywords = *keywordlists[0];
	WordList &keywords2 = *keywordlists[1];

	char linetype = ' ';

	styler.StartAt(startPos);

	StyleContext sc(startPos, length, initStyle, styler);

	for (; sc.More(); sc.Forward()) {
		// prevent line leak
		if (sc.atLineStart) {
			linetype = ' ';
			sc.SetState(SCE_LDRAW_DEFAULT);
		}

		if (IsWhiteSpace(sc.ch) && (sc.state != SCE_LDRAW_COMMENT)) {
			if (sc.state == SCE_LDRAW_META) {
				sc.SetState(SCE_LDRAW_COMMENT);
			} else {
				sc.SetState(SCE_LDRAW_DEFAULT);
			}
		}
		if (sc.state == SCE_LDRAW_COMMENT) {
			if (!IsWhiteSpace(sc.ch)) {
				SString word;

				sc.SetState(SCE_LDRAW_META);

				while (!IsWhiteSpace(sc.ch)) {
					word += static_cast<char>(sc.ch);
					sc.Forward();
				}

				if (!keywords2.InList(word.c_str())) {
					sc.ChangeState(SCE_LDRAW_COMMENT);
				}
				sc.SetState(SCE_LDRAW_COMMENT);
			}
		} else if (sc.state == SCE_LDRAW_DEFAULT) {
			switch (ArgNumber(sc, styler)) {
				case 1:
					if (linetype = ' ') {
						linetype = sc.ch;
						switch (sc.ch) {
							case '0':
								sc.SetState(SCE_LDRAW_COMMENT);
								break;
							case '1':
								sc.SetState(SCE_LDRAW_SUBFILE);
								break;
							case '2':
								sc.SetState(SCE_LDRAW_LINE);
								break;
							case '3':
								sc.SetState(SCE_LDRAW_TRIANGLE);
								break;
							case '4':
								sc.SetState(SCE_LDRAW_QUAD);
								break;
							case '5':
								sc.SetState(SCE_LDRAW_OPLINE);
								break;
						}
					}					break;
				case 2:
					if (linetype >= '1') {
						sc.SetState(SCE_LDRAW_COLOR);
					}
					break;
				case 3:
				case 4:
				case 5:
					if (linetype == '1') {
						sc.SetState(SCE_LDRAW_POSITION);
					} else if (linetype >= '2') {
						sc.SetState(SCE_LDRAW_TRIPLE1);
					}
					break;
				case 6:
				case 7:
				case 8:
					if (linetype == '1') {
						sc.SetState(SCE_LDRAW_MATRIX1);
					} else if (linetype >= '2') {
						sc.SetState(SCE_LDRAW_TRIPLE2);
					}
					break;
				case 9:
				case 10:
				case 11:
					if (linetype == '1') {
						sc.SetState(SCE_LDRAW_MATRIX2);
					} else if (linetype >= '3') {
						sc.SetState(SCE_LDRAW_TRIPLE3);
					}
					break;
				case 12:
				case 13:
				case 14:
					if (linetype == '1') {
						sc.SetState(SCE_LDRAW_MATRIX3);
					} else if (linetype >= '4') {
						sc.SetState(SCE_LDRAW_TRIPLE4);
					}
					break;
				case 15:
					if (linetype == '1') {
						sc.SetState(SCE_LDRAW_UNOFFICIAL_FILENAME);
						SString word;

						while (!IsWhiteSpace(sc.ch)) {
							word += static_cast<char>(tolower(sc.ch));
							sc.Forward();
						}

						if (keywords.InList(word.c_str())) {
							sc.ChangeState(SCE_LDRAW_OFFICIAL_FILENAME);
						}
					}
					break;
			}
		}
	}
	sc.Complete();
}

static void FoldLDrawDoc(unsigned int startPos, int length, int initStyle,
					   WordList *[], Accessor &styler) {
}

static const char * const ldrawWordListDesc[] = {
	"Official Files",
	"Meta Commands",
	0
};

LexerModule lmLDraw(SCLEX_LDRAW, ColouriseLDrawDoc, "ldraw", FoldLDrawDoc, ldrawWordListDesc);

