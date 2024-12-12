include NativeElement

type size = 
  | @as("default") Default 
  | @as("large") Large 

type props = {
  ref?: ref,
  ...View.viewProps,
  colors?: array<Color.t>,
  enabled?: bool,
  onRefresh?: unit => unit,
  progressBackgroundColor?: Color.t,
  progressViewOffset?: float,
  refreshing: bool,
  size?: size,
  tintColor?: Color.t,
  title?: string,
  titleColor?: Color.t,
}

@module("react-native")
external make: React.component<props> = "RefreshControl"
