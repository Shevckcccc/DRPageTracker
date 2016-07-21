
Pod::Spec.new do |s|
  s.name             = "DRPageTracker"
  s.version          = "0.0.1"
  s.license          = "MIT"
  s.summary          = "tracking your view controller"
  s.description      = <<-DESC
DRPageTracker is a pod that help you tracking your view controller appear
                       DESC
  s.homepage         = "https://github.com/Shevckcccc/DRPageTracker"
  s.author           = { "Shevckcccc" => "yuyk1113@gmail.com" }
  s.source           = { :git => "https://github.com/Shevckcccc/DRPageTracker.git", :tag => s.version }
  s.ios.deployment_target = '7.0'
  s.source_files = 'DRPageTracker/*.{h,m}'
  s.public_header_files = 'DRPageTracker/*.h'
  s.frameworks = 'UIKit'
end
