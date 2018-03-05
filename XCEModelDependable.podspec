projName = 'ModelDependable'
projSummary = 'Set of protocols for organizing routine model dependencies.'
companyPrefix = 'XCE'
companyName = 'XCEssentials'
companyGitHubAccount = 'https://github.com/' + companyName
companyGitHubPage = 'https://' + companyName + '.github.io'

#===

Pod::Spec.new do |s|

  s.name                      = companyPrefix + projName
  s.summary                   = projSummary
  s.version                   = '1.1.1'
  s.homepage                  = companyGitHubPage + '/' + projName
  
  s.source                    = { :git => companyGitHubAccount + '/' + projName + '.git', :tag => s.version }
  
  s.osx.deployment_target     = '10.11'
  s.ios.deployment_target     = '9.0'
  s.requires_arc              = true
  
  s.license                   = { :type => 'MIT', :file => 'LICENSE' }
  s.author                    = { 'Maxim Khatskevich' => 'maxim@khatskevi.ch' }

  # === All platforms

  s.source_files              = 'Sources/Common/**/*.swift'

  # === iOS

  s.ios.deployment_target     = '9.0'

  s.ios.source_files          = 'Sources/iOS/**/*.swift'

  s.ios.framework             = 'UIKit'

  # === macOS

  s.osx.deployment_target     = '10.11'

end
