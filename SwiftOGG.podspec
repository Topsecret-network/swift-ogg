Pod::Spec.new do |s|

	s.ios.deployment_target = '13.0'
	s.platform         = :ios, '13.0'
	s.name = "SwiftOGG"
	s.summary = "It wrapped from a swift-ogg"
	s.requires_arc = true
	s.version = "1.0.0"
	s.license = { :type => "MIT", :file => "LICENSE" }
	s.author = { "Chaos" => "secret@topsecret.network" }
	s.homepage = "https://github.com/Topsecret-network/swift-ogg"
	s.source = { :http => "https://github.com/Topsecret-network/swift-ogg.git", :branch => "topsecret" }
	
	
	# Dependencies
  	# s.dependency 'YbridOpus', '0.8.4'
  	# s.dependency 'YbridOgg', '0.8.3'
    s.vendored_frameworks = ['YbridOpus.xcframework', 'YbridOgg.xcframework']
  	s.source_files = "Sources/SwiftOgg/**/*.swift", "Sources/SupportingFiles/Dependencies/Copustools/**/*.{swift,h,m,c,cc,mm,cpp}"  
	
	s.swift_version = '4.2'
end
