�
 TFORM1 0f  TPF0TForm1Form1Left TopzWidthHeightACaption'SynEdit Code Completion Demo for ctCodeColor	clBtnFaceFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style OldCreateOrderOnCreate
FormCreateOnShowFormShowPixelsPerInch`
TextHeight TPageControlPageControl1LeftTopWidth�Height
ActivePageCodeCompletionTabOrder  	TTabSheetCodeCompletionCaptionCodeCompletion TLabelLabel3LeftTopWidth@HeightCaptionBiggestWord:  TLabelLabel4Left� TopWidthHeightCaptionTitle:  TSynEditSynTestLeft�TopWidthAHeight�Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style ParentColor
ParentFontTabOrder
Gutter.Font.CharsetDEFAULT_CHARSETGutter.Font.ColorclWindowTextGutter.Font.Height�Gutter.Font.NameTerminalGutter.Font.Style Gutter.VisibleLines.Strings"This is a Demo to show you how theCode Completion component works when the default kind is ctCode. BiggestWord: If you are using%  PrettyText then this is the biggest#  word that will show up before the  *bold* words !CaseSensitive: makes the text you  type and the matching in the  dropdown list case sensitive AnsiStrings  : Use Ansi string   comparisons instead of default  string comparisons #UsePrettyText: Allows you to format%  the text displayed in the dropdown.%  Please refer to the tsyncompletion-&  proposal.html file for a description  of the available commands. #UseInsertList: Lets you display one"  thing in the dropdown and insert#  another thing when they choose an  item.  Like in Delphi, the  dropdown might display%  "procedure foo(AVariable: Integer)"  and only insert foo when you!  select it.  The InsertList must$  have as many items as the ItemList"  or you will get a list index out!  of bounds error when you select  an item outside of the range. LimitToMatchedText: Limits the$  dropdown to the items matching the%  text you have typed, similar to the  way the D6 does it. RemovedKeystrokesCommandecContextHelpShortCutp  AddedKeystrokesCommandecContextHelpShortCutp@    TEditedBiggestWordLeftPTopWidthyHeightTabOrder TextconstructorOnChangeedBiggestWordChange  	TCheckBoxcbCaseTagLeftTop(Width� HeightCaptionCase SensitiveTabOrderOnClickCheckBoxClick  	TCheckBoxcbAnsiTagLeftTop@Width� HeightCaptionAnsi StringsTabOrderOnClickCheckBoxClick  	TCheckBoxcbPrettyTextTagLeftTopXWidth� HeightCaptionUse Pretty TextChecked	State	cbCheckedTabOrderOnClickCheckBoxClick  	TCheckBoxcbUseInsertListTagLeftToppWidth� HeightCaptionUse Insert ListChecked	State	cbCheckedTabOrderOnClickCheckBoxClick  	TCheckBoxcbLimitToMatchedTextTagLeftTop� Width� HeightCaptionLimit To Matched TextChecked	State	cbCheckedTabOrderOnClickCheckBoxClick  TSynEditSynEdit1LeftTop� Width�HeightXFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style ParentColor
ParentFontTabOrder	Gutter.Font.CharsetDEFAULT_CHARSETGutter.Font.ColorclWindowTextGutter.Font.Height�Gutter.Font.NameTerminalGutter.Font.Style Lines.Strings*Use Ctrl+Space to activate Code Completion#with a shortcut, or use the '.' keyto activate it with a timer   RemovedKeystrokesCommandecContextHelpShortCutp  AddedKeystrokesCommandecContextHelpShortCutp@    TEditedTitleLeft TopWidth� HeightTabOrderTextCompletion Proposal DemoOnChangeedTitleChange  TButtonButton3Left� ToppWidthKHeightCaptionFontTabOrderOnClickButton3Click  TButtonButton4LeftHToppWidthKHeightCaption
Title FontTabOrderOnClickButton4Click   	TTabSheet	TabSheet2CaptionInsert and Item Lists
ImageIndex TLabelLabel1LeftTopWidth9HeightCaptionInsert ListFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TLabelLabel2LeftTop� Width-HeightCaptionItemListFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.StylefsBold 
ParentFont  TMemo	mmoInsertLeftTopWidth�Height� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Lines.Strings	mmoInsert 
ParentFontTabOrder   TMemommoItemLeftTop Width�Height� Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameCourier New
Font.Style Lines.StringsmmoItem 
ParentFontTabOrderWantTabs	  TButtonButton1LeftTop� Width� HeightCaptionUpdate Insert ListTabOrderOnClickButton1Click  TButtonButton2LeftTop�Width� HeightCaptionUpdate Item ListTabOrderOnClickButton2Click    TSynCompletionProposalscpDemoOptionsscoLimitToMatchedTextscoUseInsertListscoUsePrettyTextscoUseBuiltInTimerscoEndCharCompletionscoCompleteWithTabscoCompleteWithEnter WidthEndOfTokenChr()[]. TriggerChars.TitleCompletion Proposal DemoFont.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style TitleFont.CharsetDEFAULT_CHARSETTitleFont.Color	clBtnTextTitleFont.Height�TitleFont.NameMS Sans SerifTitleFont.StylefsBold ColumnsBiggestWordconstructor  ShortCut @EditorSynEdit1Left�   TFontDialogFontDialog1Font.CharsetDEFAULT_CHARSET
Font.ColorclWindowTextFont.Height�	Font.NameMS Sans Serif
Font.Style MinFontSize MaxFontSize Left\TopP   