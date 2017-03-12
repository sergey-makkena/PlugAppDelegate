Pod::Spec.new do |s|
s.name             = 'PlugAppDelegate'
s.version          = '1.0.3'
s.summary          = 'Make your AppDelegeate lite, without many lines of code.'

s.description      = <<-DESC
Make your AppDelegeate lite, without many lines of code!
DESC

s.homepage         = 'https://github.com/sergey-makkena/PlugAppDelegate'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Sergey' => 'Makkena' }
s.source           = { :git => 'https://github.com/sergey-makkena/PlugAppDelegate.git', :tag => s.version.to_s }

s.ios.deployment_target = '8.0'
s.source_files = 'PlugAppDelegate/*.{h,m}'

end
