Pod::Spec.new do |s|
s.name             = "DepsSDK"
s.version          = "1.0.0"
s.summary          = "Dependency SDK"

s.author           = { "UnAnimous" => "unanimous@mail.com" }
s.license          = { :type => 'MIT', :text => 'LICENSE' }
s.homepage         = 'https:www.github.com'
s.source        = { :https => 'https://www.github.com'}

s.platform         = :ios, '13.0'
s.requires_arc     = true

s.ios.vendored_frameworks = 'XCFrameworks/DepsSDK.xcframework'
s.framework = 'UIKit'

end
