Pod::Spec.new do |s|
 
  s.platform = :ios
  s.ios.deployment_target = '16.1'
  s.name = "Common"
  s.summary = "Capstone project Common Modularization"
  s.requires_arc = true
 
  s.version = "1.0.0"
 
  s.license = { :type => "MIT", :file => "LICENSE" }
 
  s.author = { "Arya" => "aryailham05@gmail.com" }
 
  s.homepage = "https://github.com/Aryailhm/DicodingCapstone-Common-Module"
 
  s.source = { 
    :git => "https://github.com/Aryailhm/DicodingCapstone-Common-Module.git", 
    :tag => "#{s.version}" 
  }
 
  s.framework = "UIKit"
  s.framework = "Realm"
  s.framework = "Alamofire"
  s.framework = "AlamofireImage"

 
  s.source_files = "Core/**/*.{swift}"
 
  #s.resources = "Core/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
  #s.dependency 'Alamofire'
 
  s.swift_version = "5"
 
end