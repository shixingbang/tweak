export THEOS=/opt/theos/

THEOS_DEVICE_IP = 192.168.1.100
ARCHS = armv7 arm64
TARGET = iphone:latest:8.0

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = sohuVideoAssi
sohuVideoAssi_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SOHUVideo"
