# Kernel
include vendor/altermis/config/BoardConfigKernel.mk

# Qcom-specific bits
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/altermis/config/BoardConfigQcom.mk
endif

# Soong
include vendor/altermis/config/BoardConfigSoong.mk
