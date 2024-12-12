type t = 
  | @as("active") Active 
  | @as("background") Background 
  | @as("inactive") Inactive 
  | @as("unknown") Unknown 
  | @as("extension") Extension 

@scope("AppState") @module("react-native")
external currentState: t = "currentState"

@scope("AppState") @module("react-native")
external addEventListener: @string
[
  | #change(t => unit)
  | #focus(unit => unit)
  | #blur(unit => unit)
  | #memoryWarning(unit => unit)
] => EventSubscription.t = "addEventListener"
