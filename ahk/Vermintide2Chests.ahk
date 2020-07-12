#MaxThreadsPerHotkey 2

CoordMode, Mouse, Screen

Width := 3440
Height = 1440
Active := 0

MiddleX := Width / 2
MiddleY := Height / 2

ButtonY := Height * 0.95

LeftItemX := Width / 3
RightItemX := (Width * 2) / 3

F1::
  Active := !Active
  
  loop
  {
    if not Active
      break

    ; Open chest
    Gosub, ClickButton

    ; Wait for animation
    Sleep, 2500

    ; Left item
    Click, %LeftItemX%, %MiddleY%
    ; Middle item
    Click, %MiddleX%, %MiddleY%
    ; Right item
    Click, %RightItemX%, %MiddleY%

    ; Wait for continue button to appear
    Sleep, 500

    ; Continue
    Gosub, ClickButton

    Sleep, 1000
  }


ClickButton:
  Click, %MiddleX%, %ButtonY%
  return