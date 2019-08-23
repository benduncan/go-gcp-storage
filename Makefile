.PHONY: build clean

build:
	go build -o build/gcpupload cmd/gcpupload/gcpupload.go
	GOOS=linux GOARCH=amd64 go build -o build/gcpupload_linux_x64 cmd/gcpupload/gcpupload.go

clean:
	rm -f build/*
