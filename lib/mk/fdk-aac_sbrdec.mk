include $(REP_DIR)/lib/mk/fdk-aac.inc

SRC_CC := $(notdir $(wildcard $(FDK_AAC_SRC_DIR)/libSBRdec/src/*.cpp))

vpath %.cpp $(FDK_AAC_SRC_DIR)/libSBRdec/src

CC_CXX_WARN_STRICT =
