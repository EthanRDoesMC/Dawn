FINALPACKAGE=1
DEBUG = 0
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Dawn

Dawn_FILES = Tweak.xm
Dawn_CFLAGS = -fobjc-arc
Dawn_EXTRA_FRAMEWORKS += Cephei


include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += dawnsettings
include $(THEOS_MAKE_PATH)/aggregate.mk
