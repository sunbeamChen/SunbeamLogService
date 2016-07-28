Pod::Spec.new do |s|
  s.name             = 'SunbeamLogService'
  s.version          = '0.1.1'
  s.summary          = 'A simple log for OC develop, based on ZLog.'

  s.homepage         = 'https://github.com/sunbeamChen/SunbeamLogService'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sunbeamChen' => 'chenxun1990@126.com' }
  s.source           = { :git => 'https://github.com/sunbeamChen/SunbeamLogService.git', :tag => s.version.to_s }
  # s.social_media_url = 'http://sunbeamchen.github.io/'

  s.ios.deployment_target = '6.0'

  s.source_files = 'SunbeamLogService/Classes/**/*'
  
  s.resource_bundles = {
    'SunbeamLogService' => ['SunbeamLogService/Assets/*']
  }

  s.public_header_files = 'SunbeamLogService/Classes/SunbeamLogService.h','SunbeamLogService/Classes/SLog.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
