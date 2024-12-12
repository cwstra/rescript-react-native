type remove = {@meth "remove": unit => unit}

@scope("BackHandler") @module("react-native")
external exitApp: unit => unit = "exitApp"

type eventType = 
  | @as("backPress") BackPress 
  | @as("hardwareBackPress") HardwareBackPress 

@scope("BackHandler") @module("react-native")
external addEventListener: (eventType, unit => bool) => remove = "addEventListener"

@scope("BackHandler") @module("react-native")
external removeEventListener: (eventType, unit => bool) => unit = "removeEventListener"
