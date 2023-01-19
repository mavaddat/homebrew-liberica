cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.6,10'

	if Hardware::CPU.intel?
		sha256 'dd91f3ed45d1232ad5e0b89f49a1b552f27955b50c1d9eda558b5ac1b7e09f19'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.6+10-macos-amd64.pkg'
	else
		sha256 '41dbfd289f5f1c3297964ad527b6fcef385544b71b55ce437bf135266f33c1cb'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.6+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

