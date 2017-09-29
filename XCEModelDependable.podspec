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
  s.version                   = '0.0.1'
  s.homepage                  = companyGitHubPage + '/' + projName
  
  s.source                    = { :git => companyGitHubAccount + '/' + projName + '.git', :tag => s.version }
  
  s.requires_arc              = true
  
  s.license                   = { :type => 'MIT', :file => 'LICENSE' }
  s.author                    = { 'Maxim Khatskevich' => 'maxim@khatskevi.ch' }

  s.default_subspec = 'Core'

  s.subspec 'Core' do |subS|

    subS.osx.deployment_target     = '10.11'
    subS.ios.deployment_target     = '8.0'

    subS.source_files         = 'Sources/Core/**/*.swift'

  end

  s.subspec 'UIKit' do |subS|

    subS.ios.deployment_target     = '8.0'

    subS.framework            = 'UIKit'
    subS.dependency           s.name + '/Core'
  
    subS.source_files         = 'Sources/UIKit/**/*.swift'

  end

end
