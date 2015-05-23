cask :v1 => 'deploymate' do
  version '1.2.8'
  url "https://s3.amazonaws.com/deploymate/download/Deploymate#{version.gsub('.', '')}.zip"
  sha256 '7e990c4ce807510ccfed544b968f049c28aec6a7988d068b5412fc93466b79f6'

  name 'Deploymate'
  homepage 'http://www.deploymateapp.com'
  license :commercial

  app 'Deploymate.app'

  zap :delete => [
                  '~/Library/Caches/com.ivanvasic.deploymate',
                  '~/Library/Preferences/com.ivanvasic.deploymate.plist',
                  '~/Library/Preferences/com.ivanvasic.deploymate.LSSharedFileList.plist'
                 ]
end
