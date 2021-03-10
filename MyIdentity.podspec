Pod::Spec.new do |spec|
  spec.name         = "MyIdentity"
  spec.version      = "0.1.0"
  spec.summary      = "MyIdentity."
  spec.description  = <<-DESC
  My Identity Description
                   DESC
  spec.homepage     = "https://www.tietoevry.com/"
  spec.license      = "TietoEVRY LICENSE"
  spec.author       = { "Leif Yndestad" => "leif.yndestad@evry.com" }
  spec.platform     = :ios, "13.0"
  spec.source       = { :http => "https://github.com/leifyndestad/my-identity/raw/main/MyIdentitySDK.framework.zip" }
  spec.vendored_frameworks = 'MyIdentitySDK.framework'
  spec.dependency "AppAuth", "1.4.0"
  spec.dependency "PPBlinkID", "5.9.0"
  spec.dependency "Alamofire", "5.4.1"
  spec.dependency "SwiftProtobuf", "1.15.0"
end
