Pod::Spec.new do |spec|

    spec.name                   = 'NovaLines'
    spec.version                = '0.7'
    spec.summary                = 'Animated Line Art'

    spec.homepage               = 'https://github.com/netizen01/NovaLines'
    spec.license                = { :type => 'MIT', :file => 'LICENSE' }
    spec.author                 = { 'Netizen01' => 'n01@invco.de' }

    spec.ios.deployment_target  = '9.3'
    
    spec.source                 = { :git => 'https://github.com/netizen01/NovaLines.git',
                                    :tag => spec.version.to_s }
    spec.source_files           = 'Source/**/*.swift'
    spec.swift_version          = '4.2'

end
