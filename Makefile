.PHONY: build clean

build:
	go build -o build/gcsupload cmd/gcsupload/gcsupload.go
	GOOS=linux GOARCH=amd64 go build -o build/gcsupload_linux_x64 cmd/gcsupload/gcsupload.go

clean:
	rm -f build/*
