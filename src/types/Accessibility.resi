type state
type checked<'a>

@inline(true)
let checked: checked<bool>

@inline(false)
let unchecked: checked<bool>

@inline("mixed")
let mixed: checked<string>

type actionInfo = {
  name: string,
  label?: string,
}

type actionEvent = AccessibilityActionEvent.t

@obj
external state: (
  ~disabled: bool=?,
  ~selected: bool=?,
  ~checked: checked<'a>=?,
  ~busy: bool=?,
  ~expanded: bool=?,
  unit,
) => state = ""

type value

@obj external textValue: (~text: string) => value = ""

@obj external intValue: (~min: int, ~max: int, ~now: int) => value = ""

type liveRegion = 
  | @as("none") None 
  | @as("polite") Polite 
  | @as("assertive") Assertive 

// `accessibilityRole` communicates the purpose of a component to the user of an assistive technology.
// roles that are specific for react-native-web are also included:
// article, banner, complementary, contentinfo, form, list, listItem, main, navigation, region
type role = 
  | @as("adjustable") Adjustable 
  | @as("alert") Alert 
  | @as("article") Article 
  | @as("banner") Banner 
  | @as("button") Button 
  | @as("checkbox") Checkbox 
  | @as("combobox") Combobox 
  | @as("complementary") Complementary 
  | @as("contentinfo") Contentinfo 
  | @as("form") Form 
  | @as("header") Header 
  | @as("image") Image 
  | @as("imagebutton") Imagebutton 
  | @as("keyboardkey") Keyboardkey 
  | @as("link") Link 
  | @as("list") List 
  | @as("listitem") Listitem 
  | @as("main") Main 
  | @as("menu") Menu 
  | @as("menubar") Menubar 
  | @as("menuitem") Menuitem 
  | @as("navigation") Navigation 
  | @as("none") None 
  | @as("progressbar") Progressbar 
  | @as("radio") Radio 
  | @as("radiogroup") Radiogroup 
  | @as("region") Region 
  | @as("scrollbar") Scrollbar 
  | @as("search") Search 
  | @as("spinbutton") Spinbutton 
  | @as("summary") Summary 
  | @as("switch") Switch 
  | @as("tab") Tab 
  | @as("tabbar") Tabbar 
  | @as("tablist") Tablist 
  | @as("text") Text 
  | @as("timer") Timer 
  | @as("togglebutton") Togglebutton 
  | @as("toolbar") Toolbar 

