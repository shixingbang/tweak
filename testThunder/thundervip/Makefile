THEOS_DEVICE_IP = 121.250.222.8
TARGET = iPhone:latest:8.0
ARCHS = arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = thunderVIP
thunderVIP_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 iThunder"
