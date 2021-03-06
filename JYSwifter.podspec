#
# Be sure to run `pod lib lint JYSwifter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html

#

Pod::Spec.new do |s|
  s.name             = 'JYSwifter'
  s.version          = '0.2.4'
  s.summary          = 'Swift 工程基础框架扩展 以及工具文件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/wjywjwww/JYSwifter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'wjywjwww' => 'wjywjwww@163.com' }
  s.source           = { :git => 'https://github.com/wjywjwww/JYSwifter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'
  s.swift_versions = '5.0'
  
  s.source_files = 'JYSwifter/Classes/*.swift'
  s.frameworks = 'UIKit'
  # s.resource_bundles = {
  #   'JYSwifter' => ['JYSwifter/Assets/*.png']
  # }

  #
  # , 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
