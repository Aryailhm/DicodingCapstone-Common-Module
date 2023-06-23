Pod::Spec.new do |s|
 
  s.platform = :ios
  s.ios.deployment_target = '16.1'
  s.name = "Common"
  s.summary = "Capstone project Common Modularization"
  s.requires_arc = true
 
  s.version = "1.0.1"
 
  s.license = { :type => "MIT", :file => "LICENSE" }
 
  s.author = { "Arya" => "aryailham05@gmail.com" }
 
  s.homepage = "https://github.com/Aryailhm/DicodingCapstone-Common-Module"
 
  s.source = { 
    :git => "https://github.com/Aryailhm/DicodingCapstone-Common-Module.git", 
    :tag => "#{s.version}" 
  }
 
  s.framework = "UIKit"

  s.dependency 'RealmSwift'
  s.dependency 'AlamofireImage'
  s.dependency 'Alamofire'

  s.source_files = "Common/**/*.{swift}"
  
  s.swift_version = "5"
 
end
