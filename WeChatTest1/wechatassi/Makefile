THEOS_DEVICE_IP = 192.168.1.106
TARGET = iphone:latest:9.0
ARCHS = armv7 arm64

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WeChatAssi
WeChatAssi_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
