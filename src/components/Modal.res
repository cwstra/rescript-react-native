include NativeElement

type orientation = 
  | @as("landscape") Landscape 
  | @as("landscape-left") LandscapeLeft 
  | @as("landscape-right") LandscapeRight 
  | @as("portrait") Portrait 
  | @as("portrait-upside-down") PortraitUpsideDown 

type orientationChange = 
  | @as("landscape") Landscape 
  | @as("portrait") Portrait 

module OrientationChangeEvent = {
  type payload = {orientation: orientationChange}

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type orientationChangeEvent = OrientationChangeEvent.t

type animationType = 
  | @as("none") None 
  | @as("slide") Slide 
  | @as("fade") Fade 

type presentationStyle = 
  | @as("fullScreen") FullScreen 
  | @as("pageSheet") PageSheet 
  | @as("formSheet") FormSheet 
  | @as("overFullScreen") OverFullScreen 

@react.component @module("react-native")
external make: (
  ~ref: ref=?,
  // Modal props
  ~animationType: animationType=?,
  ~hardwareAccelerated: bool=?,
  ~onDismiss: unit => unit=?,
  ~onOrientationChange: orientationChangeEvent => unit=?,
  ~onRequestClose: unit => unit=?,
  ~onShow: unit => unit=?,
  ~presentationStyle: presentationStyle=?,
  ~statusBarTranslucent: bool=?,
  ~supportedOrientations: array<orientation>=?,
  ~transparent: bool=?,
  ~visible: bool=?,
  ~children: React.element=?,
) => React.element = "Modal"
