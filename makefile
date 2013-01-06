all:
	xcodebuild -scheme All -configuration Debug
	xcodebuild -scheme All -configuration Release

clean:
	xcodebuild -scheme All -configuration Debug clean
	xcodebuild -scheme All -configuration Release clean

install:
	sudo cp ./Build/Products/Debug/VoodooPS2Controller.kext /System/Library/Extensions
	sudo touch /System/Library/Extensions
	sudo cp VoodooPS2Daemon/org.rehabman.voodoo.driver.SynapticsDaemon.plist /Library/LaunchDaemons
	sudo cp ./Build/Products/Debug/VoodooPS2Daemon /usr/local/bin

install_release:
	sudo cp -r ./Build/Products/Release/VoodooPS2Controller.kext /System/Library/Extensions
	sudo touch /System/Library/Extensions
	sudo cp ./VoodooPS2Daemon/org.rehabman.voodoo.driver.SynapticsDaemon.plist /Library/LaunchDaemons
	sudo cp ./Build/Products/Release/VoodooPS2Daemon /usr/local/bin 