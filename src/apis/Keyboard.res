type screenRect = {
  screenX: float,
  screenY: float,
  width: float,
  height: float,
}

type eventType = 
  | @as("keyboardWillShow") KeyboardWillShow 
  | @as("keyboardDidShow") KeyboardDidShow 
  | @as("keyboardWillHide") KeyboardWillHide 
  | @as("keyboardDidHide") KeyboardDidHide 
  | @as("keyboardWillChangeFrame") KeyboardWillChangeFrame 
  | @as("keyboardDidChangeFrame") KeyboardDidChangeFrame 

type keyboardEvent = {
  duration: float,
  easing: LayoutAnimation.animationType,
  endCoordinates: screenRect,
  startCoordinates: screenRect,
  isEventFromThisApp: bool,
}

type listener = keyboardEvent => unit

@module("react-native") @scope("Keyboard")
external addListener: (eventType, listener) => EventSubscription.t = "addListener"

@module("react-native") @scope("Keyboard")
external removeAllListeners: (eventType) => unit = "removeAllListeners"

@module("react-native") @scope("Keyboard")
external dismiss: unit => unit = "dismiss"

@module("react-native") @scope("Keyboard")
external isVisible: unit => bool = "isVisible"
