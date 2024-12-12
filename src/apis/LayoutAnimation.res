type animationType =
  | @as("spring") Spring
  | @as("linear") Linear
  | @as("easeInEaseOut") EaseInEaseOut
  | @as("easeIn") EaseIn
  | @as("easeOut") EaseOut
  | @as("keyboard") Keyboard

type property =
  | @as("opacity") Opacity
  | @as("scaleX") ScaleX
  | @as("scaleY") ScaleY
  | @as("scaleXY") ScaleXY

type animationConfig = {
  duration?: float,
  delay?: float,
  springDamping?: float,
  initialVelocity?: float,
  @as("type") type_?: animationType,
  property?: property,
}

type layoutAnimationConfig = {
  duration: float,
  create?: animationConfig,
  update?: animationConfig,
  delete?: animationConfig,
}

// multiple externals
@module("react-native") @scope("LayoutAnimation")
external configureNext: layoutAnimationConfig => unit = "configureNext"

// multiple externals
@module("react-native") @scope("LayoutAnimation")
external configureNextWithEndCallback: (layoutAnimationConfig, unit => unit) => unit =
  "configureNext"

@module("react-native") @scope("LayoutAnimation")
external create: (
  ~duration: float,
  ~type_: animationType,
  ~property: property,
) => layoutAnimationConfig = "create"

@module("react-native") @scope("LayoutAnimation")
external easeInEaseOut: unit => unit = "easeInEaseOut"

@module("react-native") @scope("LayoutAnimation")
external linear: unit => unit = "linear"

@module("react-native") @scope("LayoutAnimation")
external spring: unit => unit = "spring"

module Presets = {
  @module("react-native") @scope(("LayoutAnimation", "Presets"))
  external easeInEaseOut: layoutAnimationConfig = "easeInEaseOut"

  @module("react-native") @scope(("LayoutAnimation", "Presets"))
  external linear: layoutAnimationConfig = "linear"

  @module("react-native") @scope(("LayoutAnimation", "Presets"))
  external spring: layoutAnimationConfig = "spring"
}
