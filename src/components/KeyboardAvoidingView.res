include NativeElement

type behavior = 
  | @as("height") Height 
  | @as("position") Position 
  | @as("padding") Padding 

type props = {
  ref?: ref,
  ...View.viewProps,
  behavior?: behavior,
  contentContainerStyle?: Style.View.t,
  enabled?: bool,
  keyboardVerticalOffset?: float,
}

@module("react-native")
external make: React.component<props> = "KeyboardAvoidingView"
