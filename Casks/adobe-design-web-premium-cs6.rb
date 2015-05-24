cask :v1 => 'adobe-design-web-premium-cs6' do
  version :latest
  sha256 :no_check

  url 'ftp://ftp.adobe.com/pub/adobe/cs6/downloads/DesignWebPremium_CS6_LS6.dmg'
  name 'Adobe CS6 Design & Web Premium'
  homepage 'http://www.adobe.com/mena_en/products/creativesuite.html'
  license :commercial

  installer :signal => [['KILL', 'com.apple.SafariNotificationAgent']],
            :script => 'Install.app/Contents/MacOS/Install',
            :args   => %w[--mode=silent --deploymentFile=deploy/install-en_US.xml],
            :sudo   => true

  uninstall :signal => [['KILL', 'com.apple.SafariNotificationAgent']],
            :script => 'Install.app/Contents/MacOS/Install',
            :args   => %w[--mode=silent --deploymentFile=deploy/uninstall-en_US.xml],
            :sudo   => true

  caveats 'Installation or Uninstallation may fail if Browsers, Safari Notification Service or SIMBL Services (e.g. Flashlight) are running or Adobe Creative Cloud or any other Adobe Products are already installed. See Adobe Error Logs if Installation or Uninstallation fails.'
end
