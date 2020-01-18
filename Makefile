CURRENT_DIR := $(shell pwd)

.PHONY build: vendor format
	GOBIN=$(CURRENT_DIR)/bin  go install -mod=vendor -ldflags '-s -w' ./cmd/...

format:
	gofmt -w .

vendor:
	go mod vendor
