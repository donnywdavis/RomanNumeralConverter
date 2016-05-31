#
# Be sure to run `pod lib lint RomanNumeralConverter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RomanNumeralConverter'
  s.version          = '1.1.0'
  s.summary          = 'Convert a number to its Roman numeral representation.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Pass in a number between 1 and 5000 to have it converted to its Roman numeral representation.
                       DESC

  s.homepage         = 'https://github.com/donnywdavis/RomanNumeralConverter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Donny Davis' => 'donnywdavis@icloud.com' }
  s.source           = { :git => 'https://github.com/donnywdavis/RomanNumeralConverter.git', :tag => 'v' + s.version.to_s }
  # s.social_media_url = 'https://twitter.com/donnywdavis'
  s.platform         = { :ios => '8.0', :osx => '10.10', :watchos => '2.0'}

  s.source_files = 'RomanNumeralConverter/Classes/**/*'

  # s.resource_bundles = {
  #   'RomanNumeralConverter' => ['RomanNumeralConverter/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
