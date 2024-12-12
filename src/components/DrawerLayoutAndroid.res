include DrawerLayoutAndroidElement

module DrawerSlideEvent = {
  type payload = {offset: float}

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type drawerSlideEvent = DrawerSlideEvent.t

type t

type androidInteractionState =
  | @as("idle") Idle
  | @as("dragging") Dragging
  | @as("settling") Settling

type drawerLockMode =
  | @as("unlocked") Unlocked
  | @as("locked-closed") LockedClosed
  | @as("locked-open") LockedOpen

type drawerPosition =
  | @as("left") Left
  | @as("right") Right

type keyboardDismissMode =
  | @as("none") None
  | @as("on-drag") OnDrag

type props = {
  ref?: ref,
  ...View.viewProps,
  renderNavigationView?: unit => React.element,
  onDrawerClose?: unit => unit,
  drawerLockMode?: drawerLockMode,
  drawerPosition?: drawerPosition,
  drawerWidth?: float,
  keyboardDismissMode?: keyboardDismissMode,
  onDrawerOpen?: unit => unit,
  onDrawerSlide?: drawerSlideEvent => unit,
  onDrawerStateChanged?: androidInteractionState => unit,
  drawerBackgroundColor?: Color.t,
  statusBarBackgroundColor?: Color.t,
}

@module("react-native")
external make: React.component<props> = "DrawerLayoutAndroid"
