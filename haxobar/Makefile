ARCHS = arm64 arm64e 
TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = Haxobar

Haxobar_FILES = HaxobarRootListController.m
Haxobar_FRAMEWORKS = UIKit
Haxobar_PRIVATE_FRAMEWORKS = Preferences
Haxobar_INSTALL_PATH = /Library/PreferenceBundles
Haxobar_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
