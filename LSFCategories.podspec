#
# Be sure to run `pod lib lint LSFCategories.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LSFCategories'
  s.version          = '0.0.1'
  s.summary          = '我的私有仓库'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
我的私有仓库有以下功能：
UIKit
Foundation
等库的Category
                       DESC

  s.homepage         = 'https://github.com/hhhlhy/LSFCategories'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hhhlhy' => '757547944@qq.com' }
  s.source           = { :git => 'https://github.com/hhhlhy/LSFCategories.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'LSFCategories/Classes/**/*'
  
  # s.resource_bundles = {
  #   'LSFCategories' => ['LSFCategories/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  # s.dependency 'AFNetworking'
end
