Pod::Spec.new do |spec|
  spec.name         = "MyIdentity"
  spec.version      = "0.2.8"
  spec.summary      = "MyIdentity."
  spec.description  = <<-DESC
  My Identity Description
                   DESC
  spec.homepage     = "https://www.tietoevry.com/"
  spec.license      = "Tietoevry LICENSE"
  spec.author       = { "Leif Yndestad" => "leif.yndestad@tietoevry.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :http => "https://github.com/leifyndestad/my-identity/raw/main/MyIdentitySDK.xcframework.zip" }
  spec.vendored_frameworks = 'MyIdentitySDK.xcframework'
  spec.dependency "AppAuth", "1.4.0"
  spec.dependency "PPBlinkID", "5.9.0"
  spec.dependency "Alamofire", "5.5.0"
  spec.dependency "SwiftProtobuf", "1.15.0"
  
  spec.pod_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }

  spec.user_target_xcconfig = { 
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }
end
