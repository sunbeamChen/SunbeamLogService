Pod::Spec.new do |s|
  s.name = 'SunbeamLogService'
  s.version = '0.1.11'
  s.summary = 'A simple log for OC develop, based on ZLog.'
  s.license = {"type"=>"MIT", "file"=>"LICENSE"}
  s.authors = {"sunbeamChen"=>"chenxun1990@126.com"}
  s.homepage = 'https://github.com/sunbeamChen/SunbeamLogService'
  s.source = { :path => '.' }

  s.ios.deployment_target    = '7.0'
  s.ios.preserve_paths       = 'ios/SunbeamLogService.framework'
  s.ios.public_header_files  = 'ios/SunbeamLogService.framework/Versions/A/Headers/*.h'
  s.ios.resource             = 'ios/SunbeamLogService.framework/Versions/A/Resources/**/*'
  s.ios.vendored_frameworks  = 'ios/SunbeamLogService.framework'
end
