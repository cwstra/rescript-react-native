type size = string

external dp: float => size = "%identity"

let pct = num => num->Js.Float.toString ++ "%"

type margin = size

@inline
let auto = "auto"

type offset
@obj external offset: (~height: float, ~width: float) => offset = ""

type angle
let deg: float => angle = num => (num->Js.Float.toString ++ "deg")->Obj.magic
let rad: float => angle = num => (num->Js.Float.toString ++ "rad")->Obj.magic

type transform
@obj external perspective: (~perspective: float) => transform = ""
@obj external rotate: (~rotate: angle) => transform = ""
@obj external rotateX: (~rotateX: angle) => transform = ""
@obj external rotateY: (~rotateY: angle) => transform = ""
@obj external rotateZ: (~rotateZ: angle) => transform = ""
@obj external scale: (~scale: float) => transform = ""
@obj external scaleX: (~scaleX: float) => transform = ""
@obj external scaleY: (~scaleY: float) => transform = ""
@obj external translateX: (~translateX: size) => transform = ""
@obj external translateY: (~translateY: size) => transform = ""
@obj external skewX: (~skewX: angle) => transform = ""
@obj external skewY: (~skewY: angle) => transform = ""
// @todo matrix

external unsafeTransform: {..} => transform = "%identity"

@unboxed
type transformOriginX =
  | @as("0%") Left
  | @as("100%") Right
  | @as("50%") Center
  | Size(size)

@unboxed
type transformOriginY =
  | @as("0%") Top
  | @as("100%") Bottom
  | @as("50%") Center
  | Size(size)

type transformOrigin = (transformOriginX, transformOriginY, float)

type resizeMode =
  | @as("cover") Cover
  | @as("contain") Contain
  | @as("stretch") Stretch
  | @as("repeat") Repeat
  | @as("center") Center

type fontStyle =
  | @as("normal") Normal
  | @as("italic") Italic

type fontWeight =
  | @as("normal") Normal
  | @as("bold") Bold
  | @as(100) W100
  | @as(200) W200
  | @as(300) W300
  | @as(400) W400
  | @as(500) W500
  | @as(600) W600
  | @as(700) W700
  | @as(800) W800
  | @as(900) W900

type fontVariant =
  | @as("small-caps") SmallCaps
  | @as("oldstyle-nums") OldStyleNums
  | @as("lining-nums") LiningNums
  | @as("tabular-nums") TabularNums
  | @as("proportional-nums") ProportionalNums
  | @as("stylistic-one") StylisticOne
  | @as("stylistic-two") StylisticTwo
  | @as("stylistic-three") StylisticThree
  | @as("stylistic-four") StylisticFour
  | @as("stylistic-five") StylisticFive
  | @as("stylistic-six") StylisticSix
  | @as("stylistic-seven") StylisticSeven
  | @as("stylistic-eight") StylisticEight
  | @as("stylistic-nine") StylisticNine
  | @as("stylistic-ten") StylisticTen
  | @as("stylistic-eleven") StylisticEleven
  | @as("stylistic-twelve") StylisticTwelve
  | @as("stylistic-thirteen") StylisticThirteen
  | @as("stylistic-fourteen") StylisticFourteen
  | @as("stylistic-fifteen") StylisticFifteen
  | @as("stylistic-sixteen") StylisticSixteen
  | @as("stylistic-seventeen") StylisticSeventeen
  | @as("stylistic-eighteen") StylisticEighteen
  | @as("stylistic-nineteen") StylisticNineteen
  | @as("stylistic-twenty") StylisticTwenty

type textAlign =
  | @as("auto") Auto
  | @as("left") Left
  | @as("right") Right
  | @as("center") Center
  | @as("justify") Justify

type textAlignVertical =
  | @as("auto") Auto
  | @as("top") Top
  | @as("bottom") Bottom
  | @as("center") Center

type textDecorationLine =
  | @as("none") None
  | @as("underline") Underline
  | @as("line-through") LineThrough
  | @as("underline line-through") UnderlineLineThrough

type textDecorationStyle =
  | @as("solid") Solid | @as("double") Double | @as("dotted") Dotted | @as("dashed") Dashed

type textTransform =
  | @as("none") None
  | @as("uppercase") Uppercase
  | @as("lowercase") Lowercase
  | @as("capitalize") Capitalize

type writingDirection = | @as("auto") Auto | @as("ltr") Ltr | @as("rtl") Rtl

type backfaceVisibility = | @as("visible") Visible | @as("hidden") Hidden

type borderStyle = | @as("solid") Solid | @as("dotted") Dotted | @as("dashed") Dashed

type display = | @as("none") None | @as("flex") Flex

type overflow = | @as("visible") Visible | @as("hidden") Hidden | @as("scroll") Scroll

type flexWrap = | @as("wrap") Wrap | @as("nowrap") NoWrap

type position = | @as("absolute") Absolute | @as("relative") Relative | @as("static") Static

type alignContent =
  | @as("flex-start") FlexStart
  | @as("flex-end") FlexEnd
  | @as("center") Center
  | @as("stretch") Stretch
  | @as("space-around") SpaceAround
  | @as("space-between") SpaceBetween
  | @as("space-evenly") SpaceEvenly

type alignItems =
  | @as("flex-start") FlexStart
  | @as("flex-end") FlexEnd
  | @as("center") Center
  | @as("stretch") Stretch
  | @as("baseline") Baseline

type alignSelf =
  | @as("auto") Auto
  | @as("flex-start") FlexStart
  | @as("flex-end") FlexEnd
  | @as("center") Center
  | @as("stretch") Stretch
  | @as("baseline") Baseline

type direction = | @as("inherit") Inherit | @as("ltr") Ltr | @as("rtl") Rtl

type flexDirection =
  | @as("row") Row
  | @as("row-reverse") RowReverse
  | @as("column") Column
  | @as("column-reverse") ColumnReverse

type justifyContent =
  | @as("flex-start") FlexStart
  | @as("flex-end") FlexEnd
  | @as("center") Center
  | @as("space-around") SpaceAround
  | @as("space-between") SpaceBetween
  | @as("space-evenly") SpaceEvenly

type objectFit =
  | @as("cover") Cover | @as("contain") Contain | @as("fill") Fill | @as("scale-down") ScaleDown

type verticalAlign =
  | @as("auto") Auto | @as("top") Top | @as("bottom") Bottom | @as("middle") Middle

type borderCurve = | @as("circular") Circular | @as("continuous") Continuous

// Styles are documented here
// https://github.com/facebook/react-native/blob/main/packages/react-native/Libraries/StyleSheet/StyleSheetTypes.d.ts

// Layout Style Props (https://reactnative.dev/docs/layout-props)
type flexStyle = {
  alignContent?: alignContent,
  alignItems?: alignItems,
  alignSelf?: alignSelf,
  aspectRatio?: float,
  borderBottomWidth?: float,
  borderEndWidth?: float,
  borderLeftWidth?: float,
  borderRightWidth?: float,
  borderStartWidth?: float,
  borderTopWidth?: float,
  borderWidth?: float,
  bottom?: size,
  columnGap?: size,
  direction?: direction,
  display?: display,
  end?: size,
  flex?: float,
  flexBasis?: margin,
  flexDirection?: flexDirection,
  flexGrow?: float,
  flexShrink?: float,
  flexWrap?: flexWrap,
  gap?: size,
  height?: size,
  justifyContent?: justifyContent,
  left?: size,
  margin?: margin,
  marginBlock?: size,
  marginBlockEnd?: size,
  marginBlockStart?: size,
  marginBottom?: margin,
  marginEnd?: margin,
  marginHorizontal?: margin,
  marginInline?: size,
  marginInlineEnd?: size,
  marginInlineStart?: size,
  marginLeft?: margin,
  marginRight?: margin,
  marginStart?: margin,
  marginTop?: margin,
  marginVertical?: margin,
  maxHeight?: size,
  maxWidth?: size,
  minHeight?: size,
  minWidth?: size,
  overflow?: overflow,
  padding?: size,
  paddingBlock?: size,
  paddingBlockEnd?: size,
  paddingBlockStart?: size,
  paddingBottom?: size,
  paddingEnd?: size,
  paddingHorizontal?: size,
  paddingInline?: size,
  paddingInlineEnd?: size,
  paddingInlineStart?: size,
  paddingLeft?: size,
  paddingRight?: size,
  paddingStart?: size,
  paddingTop?: size,
  paddingVertical?: size,
  position?: position,
  right?: size,
  rowGap?: size,
  start?: size,
  top?: size,
  width?: size,
  zIndex?: int,
}

// Shadow Props (https://reactnative.dev/docs/shadow-props)
type shadowIOSStyle = {
  shadowColor?: Color.t,
  shadowOffset?: offset,
  shadowOpacity?: float,
  shadowRadius?: float,
}

// Transform Props (https://reactnative.dev/docs/transforms#props)
type transformStyle = {
  transform?: array<transform>,
  transformOrigin?: transformOrigin,
}

// View styles https://reactnative.dev/docs/view-style-props
type viewCoreStyle = {
  backfaceVisibility?: backfaceVisibility,
  backgroundColor?: Color.t,
  borderBlockColor?: Color.t,
  borderBlockEndColor?: Color.t,
  borderBlockStartColor?: Color.t,
  borderBottomColor?: Color.t,
  borderBottomEndRadius?: float,
  borderBottomLeftRadius?: float,
  borderBottomRightRadius?: float,
  borderBottomStartRadius?: float,
  borderColor?: Color.t,
  borderCurve?: borderCurve,
  borderEndColor?: Color.t,
  borderEndEndRadius?: float,
  borderEndStartRadius?: float,
  borderLeftColor?: Color.t,
  borderRadius?: float,
  borderRightColor?: Color.t,
  borderStartColor?: Color.t,
  borderStartEndRadius?: float,
  borderStartStartRadius?: float,
  borderStyle?: borderStyle,
  borderTopColor?: Color.t,
  borderTopEndRadius?: float,
  borderTopLeftRadius?: float,
  borderTopRightRadius?: float,
  borderTopStartRadius?: float,
  elevation?: float,
  opacity?: float,
}

// Text Style Props (https://reactnative.dev/docs/text-style-props)
type textIOSStyle = {
  fontVariant?: array<fontVariant>,
  textDecorationColor?: Color.t,
  textDecorationStyle?: textDecorationStyle,
  writingDirection?: writingDirection,
}
type textAndroidStyle = {
  textAlignVertical?: textAlignVertical,
  verticalAlign?: verticalAlign,
  includeFontPadding?: bool,
}
type textCoreStyle = {
  ...textIOSStyle,
  ...textAndroidStyle,
  color?: Color.t,
  fontFamily?: string,
  fontSize?: float,
  fontStyle?: fontStyle,
  fontWeight?: fontWeight,
  letterSpacing?: float,
  lineHeight?: float,
  textAlign?: textAlign,
  textDecorationLine?: textDecorationLine,
  textShadowColor?: Color.t,
  textShadowOffset?: offset,
  textShadowRadius?: float,
  textTransform?: textTransform,
}

// Image Style Props (https://reactnative.dev/docs/image-style-props)
type imageCoreStyle = {
  resizeMode?: resizeMode,
  overlayColor?: Color.t,
  tintColor?: Color.t,
  objectFit?: objectFit,
}

module View = {
  type t
  type style = {
    ...flexStyle,
    ...shadowIOSStyle,
    ...transformStyle,
    ...viewCoreStyle,
  }
  external array: array<t> => t = "%identity"
  external arrayOption: array<option<t>> => t = "%identity"
  // Escape hatch, in case something is added into RN but unsupported,
  // Useful if you play with fancy platforms
  // Use with caution
  @val
  external unsafeAddStyle: (@as(json`{}`) _, t, {..}) => t = "Object.assign"

  external unsafeStyle: {..} => t = "%identity"

  external s: style => t = "%identity"
  let empty: t = s({})
}
module Text = {
  type t
  type style = {
    ...View.style,
    ...textCoreStyle,
  }
  external array: array<t> => t = "%identity"
  external arrayOption: array<option<t>> => t = "%identity"
  // Escape hatch, in case something is added into RN but unsupported,
  // Useful if you play with fancy platforms
  // Use with caution
  @val
  external unsafeAddStyle: (@as(json`{}`) _, t, {..}) => t = "Object.assign"

  external unsafeStyle: {..} => t = "%identity"

  external s: style => t = "%identity"
  let empty: t = s({})
}
module Image = {
  type t
  type style = {
    ...flexStyle,
    ...shadowIOSStyle,
    ...transformStyle,
    ...imageCoreStyle,
  }
  external array: array<t> => t = "%identity"
  external arrayOption: array<option<t>> => t = "%identity"
  // Escape hatch, in case something is added into RN but unsupported,
  // Useful if you play with fancy platforms
  // Use with caution
  @val
  external unsafeAddStyle: (@as(json`{}`) _, t, {..}) => t = "Object.assign"

  external unsafeStyle: {..} => t = "%identity"

  external s: style => t = "%identity"
  let empty: t = s({})
}
