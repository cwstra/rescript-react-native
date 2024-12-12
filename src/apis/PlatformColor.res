module Ios = {
  // Standard Colors <https://developer.apple.com/documentation/uikit/uicolor/standard_colors>
  type adaptableColors =
    | @as("systemBlue") SystemBlue
    | @as("systemBrown") SystemBrown
    | @as("systemGreen") SystemGreen
    | @as("systemIndigo") SystemIndigo
    | @as("systemOrange") SystemOrange
    | @as("systemPink") SystemPink
    | @as("systemPurple") SystemPurple
    | @as("systemRed") SystemRed
    | @as("systemTeal") SystemTeal
    | @as("systemYellow") SystemYellow

  type adaptableGrayColors =
    | @as("systemGray") SystemGray
    | @as("systemGray2") SystemGray2
    | @as("systemGray3") SystemGray3
    | @as("systemGray4") SystemGray4
    | @as("systemGray5") SystemGray5
    | @as("systemGray6") SystemGray6

  type transparentColors = | @as("clear") Clear

  type fixedColors =
    | @as("black") Black
    | @as("blue") Blue
    | @as("brown") Brown
    | @as("cyan") Cyan
    | @as("darkGray") DarkGray
    | @as("gray") Gray
    | @as("green") Green
    | @as("lightGray") LightGray
    | @as("magenta") Magenta
    | @as("orange") Orange
    | @as("purple") Purple
    | @as("red") Red
    | @as("white") White
    | @as("yellow") Yellow

  // UI Element Colors https://developer.apple.com/documentation/uikit/uicolor/ui_element_colors
  type labelColors =
    | @as("label") Label
    | @as("secondaryLabel") SecondaryLabel
    | @as("tertiaryLabel") TertiaryLabel
    | @as("quaternaryLabel") QuaternaryLabel

  type fillColors =
    | @as("systemFill") SystemFill
    | @as("secondarySystemFill") SecondarySystemFill
    | @as("tertiarySystemFill") TertiarySystemFill
    | @as("quaternarySystemFill") QuaternarySystemFill

  type textColors = | @as("placeholderText") PlaceholderText

  type standardContentBackgroundColors =
    | @as("systemBackground") SystemBackground
    | @as("secondarySystemBackground") SecondarySystemBackground
    | @as("tertiarySystemBackground") TertiarySystemBackground

  type groupedContentBackgroundColors =
    | @as("systemGroupedBackground") SystemGroupedBackground
    | @as("secondarySystemGroupedBackground") SecondarySystemGroupedBackground
    | @as("tertiarySystemGroupedBackground") TertiarySystemGroupedBackground

  type separatorColors =
    | @as("separator") Separator
    | @as("opaqueSeparator") OpaqueSeparator

  type linkColors = | @as("link") Link

  type nonadaptableColors =
    | @as("darkText") DarkText
    | @as("lightText") LightText

  type t =
    | ...adaptableColors
    | ...adaptableGrayColors
    | ...transparentColors
    | ...fixedColors
    | ...labelColors
    | ...fillColors
    | ...textColors
    | ...standardContentBackgroundColors
    | ...groupedContentBackgroundColors
    | ...separatorColors
    | ...linkColors
    | ...nonadaptableColors
}

module Android = {
  type color =
    | @as("@android:color/background_dark") BackgroundDark
    | @as("@android:color/background_light") BackgroundLight
    | @as("@android:color/black") Black
    | @as("@android:color/darker_gray") DarkerGray
    | @as("@android:color/holo_blue_bright") HoloBlueBright
    | @as("@android:color/holo_blue_dark") HoloBlueDark
    | @as("@android:color/holo_blue_light") HoloBlueLight
    | @as("@android:color/holo_green_dark") HoloGreenDark
    | @as("@android:color/holo_green_light") HoloGreenLight
    | @as("@android:color/holo_orange_dark") HoloOrangeDark
    | @as("@android:color/holo_orange_light") HoloOrangeLight
    | @as("@android:color/holo_purple") HoloPurple
    | @as("@android:color/holo_red_dark") HoloRedDark
    | @as("@android:color/holo_red_light") HoloRedLight
    | @as("@android:color/primary_text_dark") PrimaryTextDark
    | @as("@android:color/primary_text_dark_nodisable") PrimaryTextDarkNodisable
    | @as("@android:color/primary_text_light") PrimaryTextLight
    | @as("@android:color/primary_text_light_nodisable") PrimaryTextLightNodisable
    | @as("@android:color/secondary_text_dark") SecondaryTextDark
    | @as("@android:color/secondary_text_dark_nodisable") SecondaryTextDarkNodisable
    | @as("@android:color/secondary_text_light") SecondaryTextLight
    | @as("@android:color/secondary_text_light_nodisable") SecondaryTextLightNodisable
    | @as("@android:color/tab_indicator_text") TabIndicatorText
    | @as("@android:color/tertiary_text_dark") TertiaryTextDark
    | @as("@android:color/tertiary_text_light") TertiaryTextLight
    | @as("@android:color/transparent") Transparent
    | @as("@android:color/white") White
    | @as("@android:color/widget_edittext_dark") WidgetEditTextDark

  type attr =
    | @as("?android:attr/colorAccent") ColorAccent
    | @as("?android:attr/colorActivatedHighlight") ColorActivatedHighlight
    | @as("?android:attr/colorBackground") ColorBackground
    | @as("?android:attr/colorBackgroundFloating") ColorBackgroundFloating
    | @as("?android:attr/colorButtonNormal") ColorButtonNormal
    | @as("?android:attr/colorControlHighlight") ColorControlHighlight
    | @as("?android:attr/colorControlNormal") ColorControlNormal
    | @as("?android:attr/colorEdgeEffect") ColorEdgeEffect
    | @as("?android:attr/colorError") ColorError
    | @as("?android:attr/colorFocusedHighlight") ColorFocusedHighlight
    | @as("?android:attr/colorForeground") ColorForeground
    | @as("?android:attr/colorForegroundInverse") ColorForegroundInverse
    | @as("?android:attr/colorLongPressedHighlight") ColorLongPressedHighlight
    | @as("?android:attr/colorMultiSelectHighlight") ColorMultiSelectHighlight
    | @as("?android:attr/colorPressedHighlight") ColorPressedHighlight
    | @as("?android:attr/colorPrimary") ColorPrimary
    | @as("?android:attr/colorPrimaryDark") ColorPrimaryDark
    | @as("?android:attr/colorSecondary") ColorSecondary

  type t =
    |... color
    |... attr
}

@module("react-native") @variadic
external ios: array<Ios.t> => Color.t = "PlatformColor"

@module("react-native") @variadic
external android: array<Android.t> => Color.t = "PlatformColor"

@module("react-native") @variadic
external unsafe: array<string> => Color.t = "PlatformColor"
