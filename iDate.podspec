#
# Be sure to run `pod lib lint MyLib.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "iDate"
  s.version          = "0.1.0"
  s.summary          = "Easy handling of date for iOS."
  s.description      = "Easy handling of date for iOS. Some extensions of NSDate and useful operators"
  s.homepage         = "https://github.com/abdullah-chhatra/iDate.git"
  s.license          = 'MIT'
  s.author           = { "Abdulmunaf Chhatra" => "abdulmunaf.chhatra@ensuantinc.com" }
  s.source           = { :git => "https://github.com/abdullah-chhatra/iDate.git", :tag => s.version.to_s }

  s.platform         = :ios, '8.0'
  s.requires_arc     = true

  s.source_files     = 'iDate/**/*.swift'

end
