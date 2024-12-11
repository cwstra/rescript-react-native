@react.component @module("react-native")
external make: (
  ~backgroundColor: Color.t=?,
  ~nativeID: string=?,
  ~style: Style.View.t=?,
  ~testID: string=?,
  ~children: React.element=?,
) => React.element = "InputAccessoryView"
