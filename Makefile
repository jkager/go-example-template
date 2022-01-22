BIN_NAME=example
BIN_DIR=bin
BIN_PATH=$(BIN_DIR)/$(BIN_NAME)

.PHONY: test
test: $(BIN_PATH)
	TEST="success" ./$(BIN_PATH)

$(BIN_PATH): go.mod go.sum main.go
	go build -o $(BIN_PATH)

.PHONY: clean
clean:
	rm -rf $(BIN_DIR)
