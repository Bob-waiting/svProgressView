Pod::Spec.new do |s|
s.name             = "svProgressView"
s.version          = "1.0.0"
s.summary          = "A display view used on iOS."
s.description      = <<-DESC
It is a display view used on iOS, which implement by Objective-C.
DESC
s.homepage         = "https://github.com/Bob-waiting/svProgressView"
# s.screenshots      = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
s.license          = 'MIT'
s.author           = { "Bob-waiting" => "Bob_vip1314@163.com" }
s.source           = { :git => "https://github.com/Bob-waiting/svProgressView.git", :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/NAME'

s.platform     = :ios, '8.0'
# s.ios.deployment_target = '8.0'
# s.osx.deployment_target = '10.7'
s.requires_arc = true

s.source_files = 'svProgressView/*'
# s.resources = 'Assets'

# s.ios.exclude_files = 'Classes/osx'
# s.osx.exclude_files = 'Classes/ios'
# s.public_header_files = 'Classes/**/*.h'
s.frameworks = 'Foundation', 'CoreGraphics', 'UIKit'

end
