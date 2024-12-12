include ScrollViewElement

type contentOffset
@obj external contentOffset: (~x: float, ~y: float) => contentOffset = ""

type contentInsetAdjustmentBehavior = 
  | @as("automatic") Automatic 
  | @as("scrollableAxes") ScrollableAxes 
  | @as("never") Never 
  | @as("always") Always 

type decelerationRate = 
  | @as("fast") Fast 
  | @as("normal") Normal 

type indicatorStyle = 
  | @as("default") Default 
  | @as("black") Black 
  | @as("white") White 

type keyboardDismissMode = 
  | @as("none") None 
  | @as("interactive") Interactive 
  | @as("on-drag") OnDrag 

type keyboardShouldPersistTaps = 
  | @as("always") Always 
  | @as("never") Never 
  | @as("handled") Handled 

type overScrollMode = 
  | @as("always") Always 
  | @as("never") Never 
  | @as("auto") Auto 

type snapToAlignment = 
  | @as("start") Start 
  | @as("center") Center 
  | @as("end") End 

type maintainVisibleContentPosition = {
  autoscrollToTopThreshold?: float,
  minIndexForVisible: int,
}

type scrollViewProps = {
  ...View.viewProps,
  alwaysBounceHorizontal?: bool,
  alwaysBounceVertical?: bool,
  automaticallyAdjustContentInsets?: bool,
  bounces?: bool,
  bouncesZoom?: bool,
  canCancelContentTouches?: bool,
  centerContent?: bool,
  contentContainerStyle?: Style.View.t,
  contentInset?: Rect.t,
  contentInsetAdjustmentBehavior?: contentInsetAdjustmentBehavior,
  contentOffset?: contentOffset,
  decelerationRate?: decelerationRate,
  directionalLockEnabled?: bool,
  endFillColor?: Color.t,
  fadingEdgeLength?: float,
  horizontal?: bool,
  indicatorStyle?: indicatorStyle,
  keyboardDismissMode?: keyboardDismissMode,
  keyboardShouldPersistTaps?: keyboardShouldPersistTaps,
  maintainVisibleContentPosition?: maintainVisibleContentPosition,
  maximumZoomScale?: float,
  minimumZoomScale?: float,
  nestedScrollEnabled?: bool,
  onContentSizeChange?: ((float, float)) => unit,
  onMomentumScrollBegin?: Event.scrollEvent => unit,
  onMomentumScrollEnd?: Event.scrollEvent => unit,
  onScroll?: Event.scrollEvent => unit,
  onScrollBeginDrag?: Event.scrollEvent => unit,
  onScrollEndDrag?: Event.scrollEvent => unit,
  overScrollMode?: overScrollMode,
  pagingEnabled?: bool,
  pinchGestureEnabled?: bool,
  refreshControl?: React.element,
  scrollEnabled?: bool,
  scrollEventThrottle?: int,
  scrollIndicatorInsets?: Rect.t,
  scrollPerfTag?: string,
  scrollsToTop?: bool,
  scrollToOverflowEnabled?: bool,
  showsHorizontalScrollIndicator?: bool,
  showsVerticalScrollIndicator?: bool,
  snapToAlignment?: snapToAlignment,
  snapToEnd?: bool,
  snapToInterval?: float,
  snapToOffsets?: array<float>,
  snapToStart?: bool,
  stickyHeaderHiddenOnScroll?: bool,
  stickyHeaderIndices?: array<int>,
  zoomScale?: float,
}

type props = {
  ref?: ref,
  ...scrollViewProps,
}

@module("react-native")
external make: React.component<props> = "ScrollView"
