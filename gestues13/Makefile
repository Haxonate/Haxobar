TARGET := iphone:clang:latest:7.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = Gestues13

Gestues13_FILES = XXXRootListController.m
Gestues13_FRAMEWORKS = UIKit
Gestues13_EXTRA_FRAMEWORKS = Preferences
Gestues13_INSTALL_PATH = /Library/PreferenceBundles
Gestues13_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk
