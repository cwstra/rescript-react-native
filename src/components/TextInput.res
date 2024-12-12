include TextInputElement
module ChangeEvent = {
  type payload = {
    eventCount: int,
    target: int,
    text: string,
  }

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type changeEvent = ChangeEvent.t

module EditingEvent = {
  type payload = {
    text: string,
    eventCount: int,
    target: int,
  }

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type editingEvent = EditingEvent.t

module ContentSizeChangeEvent = {
  type contentSize = {
    width: float,
    height: float,
  }
  type payload = {
    target: int,
    contentSize: contentSize,
  }

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type contentSizeChangeEvent = ContentSizeChangeEvent.t

module ScrollEvent = {
  type contentOffset = {
    x: float,
    y: float,
  }

  type payload = {contentOffset: contentOffset}

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type scrollEvent = ScrollEvent.t

type selection = {
  start: int,
  end: int,
}

module SelectionChangeEvent = {
  type payload = {
    selection: selection,
    target: int,
  }

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type selectionChangeEvent = SelectionChangeEvent.t

module KeyPressEvent = {
  type payload = {
    key: string,
    target: Js.Nullable.t<int>,
    eventCount: Js.Nullable.t<int>,
  }

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type keyPressEvent = KeyPressEvent.t

type autoCapitalize = 
  | @as("characters") Characters 
  | @as("words") Words 
  | @as("sentences") Sentences 
  | @as("none") None 

type autoComplete = 
  | @as("birthdate-day") BirthdateDay 
  | @as("birthdate-full") BirthdateFull 
  | @as("birthdate-month") BirthdateMonth 
  | @as("birthdate-year") BirthdateYear 
  | @as("cc-csc") CcCsc 
  | @as("cc-exp-day") CcExpDay 
  | @as("cc-exp-month") CcExpMonth 
  | @as("cc-exp-year") CcExpYear 
  | @as("cc-exp") CcExp 
  | @as("cc-number") CcNumber 
  | @as("name-family") NameFamily 
  | @as("name-given") NameGiven 
  | @as("name-middle-initial") NameMiddleInitial 
  | @as("name-middle") NameMiddle 
  | @as("name-prefix") NamePrefix 
  | @as("name-suffix") NameSuffix 
  | @as("password-new") PasswordNew 
  | @as("postal-address-country") PostalAddressCountry 
  | @as("postal-address-extended-postal-code") PostalAddressExtendedPostalCode 
  | @as("postal-address-extended") PostalAddressExtended 
  | @as("postal-address-locality") PostalAddressLocality 
  | @as("postal-address-region") PostalAddressRegion 
  | @as("postal-address") PostalAddress 
  | @as("postal-code") PostalCode 
  | @as("sms-otp") SmsOtp 
  | @as("street-address") StreetAddress 
  | @as("tel-country-code") TelCountryCode 
  | @as("tel-device") TelDevice 
  | @as("tel-national") TelNational 
  | @as("username-new") UsernameNew 
  | @as("email") Email 
  | @as("gender") Gender 
  | @as("name") Name 
  | @as("off") Off 
  | @as("password") Password 
  | @as("tel") Tel 
  | @as("username") Username 
  | @as("one-time-code") OneTimeCode 

type t

type clearButtonMode = 
  | @as("never") Never 
  | @as("while-editing") WhileEditing 
  | @as("unless-editing") UnlessEditing 
  | @as("always") Always 

type importantForAutofill = 
  | @as("auto") Auto 
  | @as("no") No 
  | @as("noExcludeDescendants") NoExcludeDescendants 
  | @as("yes") Yes 
  | @as("yesExcludeDescendants") YesExcludeDescendants 

type keyboardAppearance = 
  | @as("default") Default 
  | @as("light") Light 
  | @as("dark") Dark 

type keyboardType = 
  | @as("default") Default 
  | @as("number-pad") NumberPad 
  | @as("decimal-pad") DecimalPad 
  | @as("numeric") Numeric 
  | @as("email-address") EmailAddress 
  | @as("phone-pad") PhonePad 
  | @as("ascii-capable") AsciiCapable 
  | @as("numbers-and-punctuation") NumbersAndPunctuation 
  | @as("url") Url 
  | @as("name-phone-pad") NamePhonePad 
  | @as("twitter") Twitter 
  | @as("web-search") WebSearch 
  | @as("visible-password") VisiblePassword 

type returnKeyType = 
  | @as("done") Done 
  | @as("go") Go 
  | @as("next") Next 
  | @as("search") Search 
  | @as("send") Send 
  | @as("none") None 
  | @as("previous") Previous 
  | @as("default") Default 
  | @as("emergency-call") EmergencyCall 
  | @as("google") Google 
  | @as("join") Join 
  | @as("route") Route 
  | @as("yahoo") Yahoo 

type textContentType = 
  | @as("none") None 
  | @as("URL") URL 
  | @as("addressCity") AddressCity 
  | @as("addressCityAndState") AddressCityAndState 
  | @as("addressState") AddressState 
  | @as("countryName") CountryName 
  | @as("creditCardNumber") CreditCardNumber 
  | @as("emailAddress") EmailAddress 
  | @as("familyName") FamilyName 
  | @as("fullStreetAddress") FullStreetAddress 
  | @as("givenName") GivenName 
  | @as("jobTitle") JobTitle 
  | @as("location") Location 
  | @as("middleName") MiddleName 
  | @as("name") Name 
  | @as("namePrefix") NamePrefix 
  | @as("nameSuffix") NameSuffix 
  | @as("nickname") Nickname 
  | @as("organizationName") OrganizationName 
  | @as("postalCode") PostalCode 
  | @as("streetAddressLine1") StreetAddressLine1 
  | @as("streetAddressLine2") StreetAddressLine2 
  | @as("sublocality") Sublocality 
  | @as("telephoneNumber") TelephoneNumber 
  | @as("username") Username 
  | @as("password") Password 
  | @as("newPassword") NewPassword 
  | @as("oneTimeCode") OneTimeCode 

type inputMode = 
  | @as("none") None 
  | @as("text") Text 
  | @as("decimal") Decimal 
  | @as("numeric") Numeric 
  | @as("tel") Tel 
  | @as("search") Search 
  | @as("email") Email 
  | @as("url") Url 

type enterKeyHint = 
  | @as("enter") Enter 
  | @as("done") Done 
  | @as("next") Next 
  | @as("search") Search 
  | @as("send") Send 
  | @as("previous") Previous

type textAlign = 
  | @as("left") Left 
  | @as("center") Center 
  | @as("right") Right 

type props = {
  ref?: ref,
  ...View.gestureResponderHandlersProps,
  ...View.accessibilityProps,
  ...View.iosProps,
  ...View.androidProps,
  ...View.webLinkProps,
  ...View.webClickProps,
  // don't use View.webFocusProps because TextInput
  // already has a react-native onFocus and onBlur
  ...View.webKeyboardProps,
  ...View.webMouseForwardedProps,
  ...View.coreProps,
  //
  allowFontScaling?: bool,
  autoCapitalize?: autoCapitalize,
  autoComplete?: autoComplete,
  autoCorrect?: bool,
  autoFocus?: bool,
  blurOnSubmit?: bool,
  caretHidden?: bool,
  clearButtonMode?: clearButtonMode,
  clearTextOnFocus?: bool,
  contextMenuHidden?: bool,
  defaultValue?: string,
  disableFullscreenUI?: bool,
  dataDetectorTypes?: array<Text.dataDetectorType>,
  editable?: bool,
  enablesReturnKeyAutomatically?: bool,
  // `enterKeyHint` has precedence over the `returnKeyType`
  enterKeyHint?: enterKeyHint,
  importantForAutofill?: importantForAutofill,
  inlineImageLeft?: string,
  inlineImagePadding?: float,
  inputAccessoryViewID?: string,
  // `inputMode` has precedence over `keyboardType`
  inputMode?: inputMode,
  keyboardAppearance?: keyboardAppearance,
  keyboardType?: keyboardType,
  lineBreakStrategyIOS?: Text.lineBreakStrategyIOS,
  maxFontSizeMultiplier?: float,
  maxLength?: int,
  multiline?: bool,
  numberOfLines?: int,
  // `rows` has precedence over `numberOfLines`
  rows?: int,
  onBlur?: Event.targetEvent => unit,
  onChange?: changeEvent => unit,
  onChangeText?: string => unit,
  onContentSizeChange?: contentSizeChangeEvent => unit,
  onEndEditing?: editingEvent => unit,
  onFocus?: Event.targetEvent => unit,
  onKeyPress?: keyPressEvent => unit,
  onPressIn?: Event.pressEvent => bool,
  onPressOut?: Event.pressEvent => bool,
  onScroll?: scrollEvent => unit,
  onSelectionChange?: selectionChangeEvent => unit,
  onSubmitEditing?: editingEvent => unit,
  placeholder?: string,
  placeholderTextColor?: Color.t,
  // `readOnly` has precedence over `editable`
  readOnly?: bool,
  returnKeyLabel?: string,
  returnKeyType?: returnKeyType,
  rejectResponderTermination?: bool,
  scrollEnabled?: bool,
  secureTextEntry?: bool,
  selection?: selection,
  selectionColor?: Color.t,
  selectTextOnFocus?: bool,
  showSoftInputOnFocus?: bool,
  spellCheck?: bool,
  textAlign?: textAlign,
  textAlignVertical?: Style.textAlignVertical,
  textBreakStrategy?: Text.textBreakStrategy,
  textContentType?: textContentType,
  underlineColorAndroid?: Color.t,
  value?: string,
}

@module("react-native")
external make: React.component<props> = "TextInput"
