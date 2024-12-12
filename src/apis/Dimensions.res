type displayMetrics = {
  width: float,
  height: float,
  scale: float,
  fontScale: float,
}

type handler = {
  screen: displayMetrics,
  window: displayMetrics,
}

type dimensionArg =
  | @as("window") Window
  | @as("screen") Screen

@module("react-native") @scope("Dimensions")
external get: dimensionArg => displayMetrics = "get"

type eventType = 
  | @as("change") Change 

@module("react-native") @scope("Dimensions")
external addEventListener: (eventType, handler => unit) => EventSubscription.t = "addEventListener"

@module("react-native")
external useWindowDimensions: unit => displayMetrics = "useWindowDimensions"
