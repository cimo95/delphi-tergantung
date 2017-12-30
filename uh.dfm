object hf: Thf
  Left = 285
  Top = 213
  Width = 640
  Height = 480
  BorderStyle = bsSizeToolWin
  Caption = 'Help Me !'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    632
    452)
  PixelsPerInch = 96
  TextHeight = 13
  object c0: TRichEdit
    Left = 8
    Top = 8
    Width = 617
    Height = 441
    Cursor = crArrow
    Anchors = [akLeft, akTop, akRight, akBottom]
    Color = clBtnFace
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    Lines.Strings = (
      'HOME PAGE'
      
        '1.'#9'QUESTION : Type your sentence only letters, numbers and space' +
        's allowed, push peek button to make sure your sentence is correc' +
        't'
      ''
      
        '2.'#9'CLUE : Type your sentence'#39's clue, to limit guesser knowledge ' +
        'and make it easier'
      ''
      '3.'#9'BEGIN THE EXECUTION! : Begin the game'
      ''
      ''
      'PLAYING PAGE'
      
        '1.'#9'GUESS BOX : Here the main section of the game, the blue line ' +
        'shows the sum of letters should be guessed by the guesser, and t' +
        'he red letter means the used letter along the game'
      ''
      '2.'#9'CLUE : Show the question'#39's clue'
      ''
      
        '3.'#9'ANSWER : Type the letter you think correct, then hit Enter or' +
        ' push SUBMIT button to deal'
      ''
      
        '4.'#9'STATISTIC : => PROGRESS : Shows the level of success of your ' +
        'game || => WIN RATE : Shows your correct letters rate, each corr' +
        'ect letter you have 1 point up, and vice versa. This is for use ' +
        'with the game helper')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
end
