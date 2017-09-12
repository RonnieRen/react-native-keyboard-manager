
Pod::Spec.new do |s|
  s.name         = "RNKeyboardManager"
  s.version      = "1.0.0"
  s.summary      = "RNKeyboardManager"
  s.description  = <<-DESC
                  This is a wrapper to IQKeyboardManager for react native and ios only.
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "ronnie.ren@outlook.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/RonnieRen/RNKeyboardManager.git", :tag => "master" }
  s.source_files  = "RNKeyboardManager/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "IQKeyboardManager"

end

  