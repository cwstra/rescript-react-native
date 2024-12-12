include NativeElement

type android_hyphenationFrequency =
  | @as("normal") Normal
  | @as("none") None
  | @as("full") Full

type dataDetectorType =
  | @as("phoneNumber") PhoneNumber
  | @as("link") Link
  | @as("address") Address
  | @as("calendarEvent") CalendarEvent
  | @as("none") None
  | @as("all") All

type ellipsizeMode =
  | @as("clip") Clip
  | @as("head") Head
  | @as("middle") Middle
  | @as("tail") Tail

type textBreakStrategy =
  | @as("simple") Simple
  | @as("highQuality") HighQuality
  | @as("balanced") Balanced

type lineBreakStrategyIOS =
  | @as("none") None
  | @as("standard") Standard
  | @as("hangul-word") HangulWord
  | @as("push-out") PushOut

type accessibilityProps = {
  accessible?: bool,
  accessibilityActions?: array<Accessibility.actionInfo>,
  accessibilityHint?: string,
  accessibilityLabel?: string,
  accessibilityLanguage?: string,
  accessibilityRole?: Accessibility.role,
  // `role` has precedence over the accessibilityRole prop
  role?: Role.t,
  accessibilityState?: Accessibility.state,
  onAccessibilityAction?: Accessibility.actionEvent => unit,
}

type props = {
  ref?: ref,
  ...accessibilityProps,
  ...View.gestureResponderHandlersProps,
  ...View.webProps,
  // view props
  nativeID?: string,
  onLayout?: Event.layoutEvent => unit,
  style?: Style.Text.t,
  testID?: string,
  children?: React.element,
  // text props
  adjustsFontSizeToFit?: bool,
  allowFontScaling?: bool,
  android_hyphenationFrequency?: android_hyphenationFrequency,
  ariaLevel?: int,
  dataDetectorTypes?: array<dataDetectorType>,
  disabled?: bool,
  ellipsizeMode?: ellipsizeMode,
  lineBreakStrategyIOS?: lineBreakStrategyIOS,
  maxFontSizeMultiplier?: int,
  minimumFontScale?: float,
  numberOfLines?: int,
  onLongPress?: Event.pressEvent => unit,
  onPress?: Event.pressEvent => unit,
  onPressIn?: Event.pressEvent => unit,
  onPressOut?: Event.pressEvent => unit,
  onTextLayout?: Event.textLayoutEvent => unit,
  pressRetentionOffset?: Rect.t,
  selectable?: bool,
  selectionColor?: string,
  suppressHighlighting?: bool,
  textBreakStrategy?: textBreakStrategy,
  value?: string,
}

@module("react-native")
external make: React.component<props> = "Text"
