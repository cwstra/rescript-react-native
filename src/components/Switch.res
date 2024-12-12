include NativeElement

type trackColor = {
  @as("true") whenTrue?: Color.t,
  @as("false") whenFalse?: Color.t,
}

type props = {
  ref?: ref,
  ...View.viewProps,
  disabled?: bool,
  trackColor?: trackColor,
  ios_backgroundColor?: Color.t,
  onValueChange?: bool => unit,
  thumbColor?: Color.t,
  value?: bool,
}

@module("react-native")
external make: React.component<props> = "Switch"
