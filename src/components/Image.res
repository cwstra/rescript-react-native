include NativeElement

type cache =
  | @as("default") Default
  | @as("reload") Reload
  | @as("force-cache") ForceCache
  | @as("only-if-cached") OnlyIfCached

type uriSource = {
  uri: string,
  bundle?: string,
  method?: string,
  headers?: dict<string>,
  body?: string,
  cache?: cache,
  scale?: float,
  width?: float,
  height?: float,
}

module Source = {
  type t

  external fromRequired: Packager.required => t = "%identity"
  external fromUriSource: uriSource => t = "%identity"
  external fromUriSources: array<uriSource> => t = "%identity"
}

module ImageLoadEvent = {
  type source = {
    width: float,
    height: float,
    uri: string,
  }

  type payload = {
    uri: Js.Nullable.t<string>,
    source: source,
  }

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type imageLoadEvent = ImageLoadEvent.t

module ErrorEvent = {
  type payload = {error: string}

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type errorEvent = ErrorEvent.t

module ProgressEvent = {
  type payload = {
    loaded: float,
    total: float,
  }

  include Event.SyntheticEvent({
    type _payload = payload
  })
}

type progressEvent = ProgressEvent.t

type resizeMethod =
  | @as("auto") Auto
  | @as("resize") Resize
  | @as("scale") Scale

type referrerPolicy =
  | @as("no-referrer") NoReferrer
  | @as("no-referrer-when-downgrade") NoReferrerWhenDowngrade
  | @as("origin") Origin
  | @as("origin-when-cross-origin") OriginWhenCrossOrigin
  | @as("same-origin") SameOrigin
  | @as("strict-origin") StrictOrigin
  | @as("strict-origin-when-cross-origin") StrictOriginWhenCrossOrigin
  | @as("unsafe-url") UnsafeUrl

type crossOrigin =
  | @as("anonymous") Anonymous
  | @as("use-credentials") UseCredentials

type props = {
  ref?: ref,
  accessibilityLabel?: string,
  accessible?: bool,
  alt?: string,
  blurRadius?: float,
  capInsets?: Rect.t,
  crossOrigin?: crossOrigin,
  defaultSource?: Source.t,
  fadeDuration?: float,
  height?: float,
  loadingIndicatorSource?: array<Source.t>,
  onError?: errorEvent => unit,
  onLayout?: Event.layoutEvent => unit,
  onLoad?: imageLoadEvent => unit,
  onLoadEnd?: unit => unit,
  onLoadStart?: unit => unit,
  onPartialLoad?: unit => unit,
  onProgress?: progressEvent => unit,
  progressiveRenderingEnabled?: bool,
  referrerPolicy?: referrerPolicy,
  resizeMethod?: resizeMethod,
  resizeMode?: Style.resizeMode,
  source: Source.t,
  srcSet?: string,
  style?: Style.Image.t,
  testID?: string,
  tintColor?: Color.t,
  width?: float,
}

@module("react-native")
external make: React.component<props> = "Image"

type sizeError

@module("react-native") @scope("Image")
external getSize: (
  ~uri: string,
  ~success: (~width: float, ~height: float) => unit,
  ~failure: sizeError => unit=?,
  unit,
) => unit = "getSize"

type requestId

@module("react-native") @scope("Image")
external prefetch: (~uri: string) => requestId = "prefetch"

@module("react-native") @scope("Image")
external abortPrefetch: requestId => unit = "abortPrefetch"

@module("react-native") @scope("Image")
external queryCache: (~uris: array<string>) => unit = "queryCache"

type asset = {
  uri: string,
  width: float,
  height: float,
}

@module("react-native") @scope("Image")
external resolveAssetSource: Source.t => asset = "resolveAssetSource"
