PROJECTNAME=$(shell basename "$(PWD)")
GOFILES=$(wildcard *.go)

# Make is verbose in Linux. Make it silent
MAKEFLAGS += --silent

CURRENT_DIR := $(shell pwd)

.PHONY build: vendor format
	# 生成的二进制将以cmd下面的目录名来命名
	GOBIN=$(CURRENT_DIR)/bin  go install -mod=vendor -ldflags '-s -w' ./cmd/...

format:
	# 递归格式化该目录下所有的代码，也可以使用 gofmt -w ./cmd  格式化某一个目录
	gofmt -w .

vendor:
	go mod vendor

.PHONY clean:
clean:
	GOBIN=$(CURRENT_DIR)/bin go clean -i -cache -testcache ./cmd/...
