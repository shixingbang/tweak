THEOS_DEVICE_IP = 192.168.125.111
ARCHS = armv7 arm64
TARGET = iPhone:latest:8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = iOSREGreetings
iOSREGreetings_FILES = Tweak.xm
iOSREGreetings_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
