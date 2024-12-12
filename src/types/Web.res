type target = 
  | @as("_blank") Blank 
  | @as("_self") Self 
  | @as("_parent") Parent 
  | @as("_top") Top 

// @todo find a zero cost way to support array of rel
// does passing an array of string to dom will automatically join with , when implicitely using toString on the array?
//
// list from https://developer.mozilla.org/en-US/docs/Web/HTML/Attributes/rel
// a / area column
type rel = 
  | @as("external") External 
  | @as("alternate") Alternate 
  | @as("author") Author 
  | @as("bookmark") Bookmark 
  | @as("help") Help 
  | @as("license") License 
  | @as("next") Next 
  | @as("nofollow") Nofollow 
  | @as("noopener") Noopener 
  | @as("noreferrer") Noreferrer 
  | @as("opener") Opener 
  | @as("prev") Prev 
  | @as("search") Search 
  | @as("tag") Tag 
  | @as("ugc") Ugc 

type hrefAttrs = {
  download?: string,
  rel?: rel,
  target?: target,
}
