#
# Be sure to run `pod lib lint ChatDailyBiz.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "ChatDailyBiz"
  s.version          = "0.2.5"
  s.summary          = "自动适配高度的一个简易框架"
  s.description      = <<-DESC
                       自动适配高度的一个简易框架, 自动设置高度。
                       DESC
  s.homepage         = "http://www.catchitime.com:8081/diffusion/CHATDAILYBIZ/chatdailybiz.git"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "stonedong" => "yishuiliunian@gmail.com" }
  s.source           = { :git => "http://www.catchitime.com:8081/diffusion/CHATDAILYBIZ/chatdailybiz.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.platform     = :ios, '4.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'ChatDailyBiz' => ['Pod/Assets/*.png']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
end
