Pod::Spec.new do |s|

	s.ios.deployment_target = '13.0'
	s.platform         = :ios, '13.0'
	s.name = "SwiftOGG"
	s.summary = "It wrapped from a swift-ogg"
	s.requires_arc = true
	s.version = "1.0.1"
	s.license = { :type => "MIT", :file => "LICENSE" }
	s.author = { "Chaos" => "secret@topsecret.network" }
	s.homepage = "https://github.com/Topsecret-network/swift-ogg"
	s.source = { :git => "https://github.com/Topsecret-network/swift-ogg.git", :tag => s.version }
	
    s.vendored_frameworks = ['YbridOpus.xcframework', 'YbridOgg.xcframework', 'SwiftOGG.xcframework']
	s.swift_version = '4.2'
end
