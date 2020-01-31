INSTALL_TARGET_PROCESSES = SpringBoard
FINALPACKAGE = 1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NoFlashlightWake

NoFlashlightWake_FILES = Tweak.xm
NoFlashlightWake_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
