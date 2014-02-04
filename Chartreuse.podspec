Pod::Spec.new do |s|
  s.platform     = :ios
  s.name         = "Chartreuse"
  s.version      = "0.0.1"
  s.summary      = "Pie charts for iOS."
  s.homepage     = "https://github.com/dainkaplan/Chartreuse"
  s.license      = { :type => 'Artistic License 2.0', :file => 'license.txt' }
  s.author       = "Dain Kaplan"
  s.source       = { :git => "https://github.com/dainkaplan/Chartreuse.git", :commit => "9c754faedacf0d0dce7ee71477f39ec08b448751" }
  s.source_files = 'PieChartViewExample/Classes/PieChartView.{h,m}'
end
