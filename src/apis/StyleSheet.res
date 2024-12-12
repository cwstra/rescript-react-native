@module("react-native") @scope("StyleSheet")
external hairlineWidth: float = "hairlineWidth"
@module("react-native") @scope("StyleSheet")
external absoluteFill: Style.View.t = "absoluteFill"
@module("react-native") @scope("StyleSheet")
external absoluteFillObject: Style.View.style = "absoluteFillObject"

@module("react-native") @scope("StyleSheet")
external create: ({..} as 'a) => ({..} as 'a) = "create"
@module("react-native") @scope("StyleSheet")
external flattenView: array<Style.View.t> => Style.View.t = "flatten"
@module("react-native") @scope("StyleSheet")
external flattenText: array<Style.Text.t> => Style.Text.t = "flatten"
@module("react-native") @scope("StyleSheet")
external flattenImage: array<Style.Image.t> => Style.Image.t = "flatten"
