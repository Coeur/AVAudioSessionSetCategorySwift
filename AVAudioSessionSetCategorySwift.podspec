#
# Be sure to run `pod lib lint AVAudioSessionSetCategorySwift.podspec' to ensure this is a
# valid spec before submitting.
#
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'AVAudioSessionSetCategorySwift'
  s.version          = '1.0.0'
  s.summary          = 'AVAudioSession.setCategory for Swift 4.2 compatibility'
  s.description      = 'This AVAudioSession extension grants availability to AVAudioSession.setCategory in Swift 4.2 through method AVAudioSession.setCategorySwift(_:). Relevant radar: http://www.openradar.me/45397675. Example usage: `try AVAudioSession.sharedInstance().setCategorySwift(AVAudioSession.Category.playback.rawValue)`'
  s.homepage         = 'https://github.com/coeur/AVAudioSessionSetCategorySwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'coeur' => nil }
  s.source           = { :git => 'https://github.com/coeur/AVAudioSessionSetCategorySwift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/adigitalknight'

  s.swift_version = '4.1'
  s.ios.deployment_target = '8.0'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '2.0'

  s.source_files = 'AVAudioSessionSetCategorySwift/*.swift'

  s.frameworks = 'AVFoundation'
end
