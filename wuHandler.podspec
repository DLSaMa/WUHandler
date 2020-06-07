#
#  Be sure to run `pod spec lint wuHandler.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see https://guides.cocoapods.org/syntax/podspec.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |spec|



  spec.name         = "wuHandler"
  spec.version      = "0.0.1"
  spec.summary      = "这是个简介"


  spec.description  = <<-DESC
                    这是一个描述存在的地方
                   DESC

  spec.homepage     = "http://EXAMPLE/wuHandler"
  # spec.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See https://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  spec.license      = "MIT"
  # spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  spec.author             = { "liuqi" => "754854967@qq.com" }
  # Or just: spec.author    = "liuqi"
  # spec.authors            = { "liuqi" => "754854967@qq.com" }
  # spec.social_media_url   = "https://twitter.com/liuqi"


  # spec.platform     = :ios
  spec.platform     = :ios, "8.0"



  spec.source       = { :git => "https://github.com/DLSaMa/WUHandler.git", :tag => "#{spec.version}" }


 

  spec.source_files  ="WULateralSlide","WULateralSlide/*.{h,m}","WVerification/WUVerification.h"
  spec.ios.vendored_libraries = "WVerification/libWUVerification.a"
  spec.exclude_files = "Classes/Exclude"

  # spec.public_header_files = "Classes/**/*.h"

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"
  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
