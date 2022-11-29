include vendor/graphene/config/BoardConfigKernel.mk

ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/graphene/config/BoardConfigQcom.mk
endif

include vendor/graphene/config/BoardConfigSoong.mk
