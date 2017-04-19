Pod::Spec.new do |s|
  s.name             = 'SunbeamLogService'
  s.version          = '0.1.8'
  s.summary          = 'A simple log for OC develop, based on ZLog.'

  s.homepage         = 'https://github.com/sunbeamChen/SunbeamLogService'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'sunbeamChen' => 'chenxun1990@126.com' }
  s.source           = { :git => 'https://github.com/sunbeamChen/SunbeamLogService.git', :tag => s.version.to_s }
  s.ios.deployment_target = '7.0'
  s.source_files = 'SunbeamLogService/Classes/**/*'
  s.public_header_files = 'SunbeamLogService/Classes/**/*.h'
  s.dependency 'CocoaLumberjack'
end
