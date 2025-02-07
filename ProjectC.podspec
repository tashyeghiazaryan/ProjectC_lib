Pod::Spec.new do |spec|
  spec.name         = "ProjectC"
  spec.version      = "1.0.1"
  spec.summary      = "ProjectC XCFramework for iOS and macOS."
  
  spec.description  = "ProjectC is an XCFramework for iOS devices, the iOS simulator, and macOS."
  spec.homepage     = "https://github.com/tashyeghiazaryan/ProjectC_lib.git"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "Tash Yegiazaryan" => "artashes.yeghiazaryan@gmail.com" }
  
  # Reference the prebuilt XCFramework
  # spec.source       = { :http => "https://github.com/tashyeghiazaryan/ProjectC/download/ProjectC.xcframework.zip" }
  spec.source       = { :git => "https://github.com/tashyeghiazaryan/ProjectC_lib.git", :tag => spec.version.to_s }
  #s.source = { :git => 'https://github.com/Ar7Style/GTNetworkQualityChecker.git', :tag => s.version.to_s }
  # https://github.com/tashyeghiazaryan/ProjectC/releases/tag/v1.0.1

  # Use vendored_frameworks instead of source_files
  spec.vendored_frameworks = "ProjectC.xcframework"

  #spec.pod_target_xcconfig = { 'SWIFT_OPTIMIZATION_LEVEL' => '-Onone' }
  spec.static_framework = true
  spec.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '$(inherited) -ObjC' }
  spec.frameworks = 'UIKit', 'Foundation'
  spec.source_files = '../ProjectC/ProjectC/*.{h,m}', '../SharedFolder/*.{h,m}'
  spec.public_header_files = '../ProjectC/ProjectC/*.{h,m}', '../SharedFolder/*.{h,m}'



  # Explicitly declare the headers path
  #spec.public_header_files = "ProjectC.xcframework/**/*.h"


  # Ensure modulemap is included
  #spec.module_map = "ProjectC.xcframework/Modules/module.modulemap"

  # Platform settings
  spec.platform = :ios, "15.0"
  spec.osx.deployment_target = "10.15"
  spec.requires_arc = true
end