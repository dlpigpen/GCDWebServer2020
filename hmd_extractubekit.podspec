#
# Be sure to run `pod lib lint hmd_extractubekit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'hmd_extractubekit'
  s.version          = '0.1.2'
  s.summary          = 'This is the library using for extractingyoutubevideo hmd_extractubekit.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
This is the library for extracttube. It will use all projects of hmdprojects
                       DESC

  s.homepage         = 'https://nguyen_duc@bitbucket.org/nguyen_duc/hmd_extractubekit'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'dlpigpen' => 'ducnguyen571989@gmail.com' }
  s.source           = { :git => 'https://nguyen_duc@bitbucket.org/nguyen_duc/hmd_extractubekit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '11.0'
  s.static_framework = true
  s.swift_versions = '4.2'
  
  s.source_files = 'hmd_extractubekit/Classes/**/*'
  s.resources = 'hmd_extractubekit/Assets/*'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }

  # This is subspec for production
  # s.subspec 'Release' do |df|
    # df.source_files = 'hmd_extractubekit/Classes/**/*'
#    df.vendored_frameworks = "NwwodeMobile.framework"
    # df.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
#    df.xcconfig = { 'ENABLE_BITCODE' => 'NO' }
#    df.xcconfig = { 'ONLY_ACTIVE_ARCH' => 'NO' }
#    df.libraries = 'sqlite3', 'c++'
    # df.resources = 'hmd_extractubekit/Assets/*'
    #use for the library only support device only. https://github.com/CocoaPods/CocoaPods/issues/5854
#    df.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => '' }
  # end
  
#  # This is subspec for development
#  s.subspec 'Debug' do |df|
#      df.source_files = 'hmd_extractubekit/Classes/**/*'
#      # df.public_header_files = "hmd_extractubekit/Frameworks/Release-universal/NodeMobile.framework/Headers/*.h"
#      df.vendored_frameworks = "hmd_extractubekit/Frameworks/Release-universal/NodeMobile.framework"
#      # df.preserve_path = 'hmd_extractubekit/Frameworks/Release-universal/*'
#      df.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' }
#      df.libraries = 'sqlite3', 'c++'
#      df.resources = 'hmd_extractubekit/Assets/*'
#      df.xcconfig = {'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) HMDDEBUG=1' }
#  end
  

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
#  s.default_subspec = "Debug"
  s.dependency 'Socket.IO-Client-Swift', '~> 15.2.0'
  s.dependency 'Files'
  s.dependency 'SSZipArchive'
  
end
