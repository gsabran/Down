Pod::Spec.new do |spec|
  spec.name         = "Down"
  spec.summary      = "Blazing fast Markdown rendering in Swift, built upon cmark."
  spec.version      = "0.4.2"
  spec.homepage     = "https://github.com/iwasrobbed/Down"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.authors      = { "Rob Phillips" => "rob@robphillips.me" }
  spec.source       = { :git => "https://github.com/iwasrobbed/Down.git", :tag => "v" + spec.version.to_s }
  spec.source_files = "Source/**/*.{h,swift}", "libcmark/**/*.{c,h}"
  spec.public_header_files = "Source/*.h", "libcmark/**/*.h"
  spec.ios.deployment_target = "15.0"
  spec.tvos.deployment_target = "15.0"
  spec.osx.deployment_target = "12.0"
  spec.requires_arc = true
  spec.module_name = "Down"
  spec.swift_versions = ["5.0"]
  spec.module_map = "Resources/Configurations/Down.modulemap"
  spec.preserve_path = 'libcmark/include/module.modulemap'
  spec.pod_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(inherited) $(PODS_TARGET_SRCROOT)/libcmark/include' }
  spec.user_target_xcconfig = { 'SWIFT_INCLUDE_PATHS' => '$(inherited) $(PODS_CONFIGURATION_BUILD_DIR)/Down/Down.framework/Modules' }
  spec.ios.resource = 'Resources/DownView.bundle'
  spec.osx.resource = 'Resources/DownView.bundle'
end
