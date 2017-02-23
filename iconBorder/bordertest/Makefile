THEOS_DEVICE_IP = 192.168.125.130
ARCHS = armv7 arm64
TARGET = iPhone:latest:8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = bordertest
bordertest_FILES = Tweak.xm
bordertest_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
