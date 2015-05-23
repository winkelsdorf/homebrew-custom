cask :v1 => 'jdownloader2' do
  version :latest
  sha256 :no_check

  if MacOS.release < :lion
    url 'http://installer.jdownloader.org/JD2SilentSetup_10_6orlower.dmg'
  else
    url 'http://installer.jdownloader.org/JD2SilentSetup.dmg'
  end

  name 'JDownloader'
  homepage 'http://jdownloader.org/download/offline'
  license :gpl

  preflight do
    system "#{staged_path}/JDownloader Installer.app/Contents/MacOS/JavaApplicationStub", '-q', '-dir', "#{staged_path}", "-Dinstall4j.suppressStdout=true", "-Dinstall4j.debug=false", "2&>1 >/dev/null"
  end

  app 'JDownloader.app'
end
