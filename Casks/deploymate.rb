cask :v1 => 'deploymate' do
  homepage 'http://www.deploymateapp.com'
  url 'https://s3.amazonaws.com/deploymate/download/Deploymate128.zip'
  version '1.2.8'
  sha256 '7e990c4ce807510ccfed544b968f049c28aec6a7988d068b5412fc93466b79f6'

  app 'Deploymate.app'
end
