Pod::Spec.new do |s|
  s.name         = "TencentSDK"
  s.version      = "3.1.0"
  s.summary      = "官方腾讯开放平台 iOS SDK"

  s.description  = "腾讯开放平台为广大开发者提供了SDK包，辅助开发者快速接入QQ登录、支付、社交渠道等功能。"
  s.homepage     = "http://open.qq.com/"

  s.platform     = :ios
  s.platform     = :ios, "5.1.1"

  s.source       = { :git => "https://github.com/Guicai-Li/TencentSDK.git", :tag => "v#{s.version}" }

  s.source_files = "TencentSDK/TencentOpenAPI.framework/Headers/*.{h}"
  s.public_header_files = "TencentSDK/TencentOpenAPI.framework/Headers/*.h"
  s.resource = "TencentSDK/TencentOpenApi_IOS_Bundle.bundle"
  s.vendored_frameworks = "TencentSDK/TencentOpenAPI.framework"
  s.libraries =  "iconv", "sqlite3", "stdc++", "z"
  s.frameworks = "Security", "SystemConfiguration", "CoreGraphics","CoreTelephony"

  s.xcconfig            = { "FRAMEWORK_SEARCH_PATHS" => "$(inherited)" }
  s.requires_arc = true

end
