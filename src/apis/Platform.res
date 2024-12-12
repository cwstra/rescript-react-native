type os = 
  | @as("ios") Ios 
  | @as("android") Android 
  | @as("macos") Macos 
  | @as("windows") Windows 
  | @as("web") Web 

/** Do not switch on `Platform.os`, as it will result in code
that prevents the Metro bundler from inlining. Instead, use an if 
or ternary expression. 

```rescript
Platform.os === Ios
  ? doSomethingInIos() 
  : doSomethingInOtherPlatform()
```
*/
@module("react-native")
@scope("Platform")
external os: os = "OS"
