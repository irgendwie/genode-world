LIBPROTOBUF_PORT_DIR := $(call select_from_ports,libprotobuf)
INC_DIR += $(LIBPROTOBUF_PORT_DIR)/src/lib/libprotobuf/src

PROTOBUF_PROTOC := $(BUILD_BASE_DIR)/tool/protobuf/protoc

targets = $(subst .proto,.pb.cc,$(SRC_PROTO))
$(SRC_CC): $(targets)
SRC_CC += $(targets)

%.pb.cc: %.proto
	@echo "    GENERATE "$(notdir $?)
	@$(PROTOBUF_PROTOC) --cpp_out=. --proto_path=$(dir $?) $?

CC_CXX_WARN_STRICT =
