THEOS_DEVICE_IP = 192.168.1.111
THEOS_DEVICE_PORT = 22
ARCHS = armv7 arm64
TARGET = iphone:latest:7.0

include theos/makefiles/common.mk

TWEAK_NAME = WeChatRedEnvelop
WeChatRedEnvelop_FILES = Tweak.xm XGPayingViewController.m WeChatRedEnvelopParam.m
WeChatRedEnvelop_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
