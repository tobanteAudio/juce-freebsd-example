.PHONY: release debug clean
default: debug

BUILD_DIR = build
PARALLEL_BUILD = 4

release:
	@cmake -B$(BUILD_DIR) -DCMAKE_BUILD_TYPE=Release .
	@cmake --build $(BUILD_DIR) --config Release --parallel $(PARALLEL_BUILD)

debug:
	@cmake -B$(BUILD_DIR) -DCMAKE_BUILD_TYPE=Debug .
	@cmake --build $(BUILD_DIR) --config Debug --parallel $(PARALLEL_BUILD)

clean:
	rm -rf $(BUILD_DIR)
