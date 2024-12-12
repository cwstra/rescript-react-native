type options = {
  cancelable?: bool,
  onDismiss?: unit => unit,
}

type style = 
  | @as("default") Default 
  | @as("cancel") Cancel 
  | @as("destructive") Destructive 

type button = {
  text?: string,
  onPress?: unit => unit,
  style?: style,
  isPreferred?: bool,
}

@scope("Alert") @module("react-native")
external alert: (
  ~title: string,
  ~message: string=?,
  ~buttons: array<button>=?,
  ~options: options=?,
  unit,
) => unit = "alert"

type type_ = 
  | @as("default") Default 
  | @as("plain-text") PlainText 
  | @as("secure-text") SecureText 
  | @as("login-password") LoginPassword

@unboxed
type callbackOrButtons =
  | Callback(string => unit)
  | Buttons(array<button>)

@scope("Alert") @module("react-native")
external prompt: (
  ~title: string,
  ~message: string=?,
  ~callbackOrButtons: callbackOrButtons=?,
  ~type_: type_=?,
  ~defaultValue: string=?,
  ~keyboardType: string=?,
  ~options: options=?,
  unit,
) => unit = "prompt"
