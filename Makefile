
GO_PATH:=/usr/local/go

all: $(GO_PATH) build

$(GO_PATH):
	curl -LSOs http://golang.org/dl/go1.2.2.linux-amd64.tar.gz
	tar -C /usr/local -xf go1.2.2.linux-amd64.tar.gz

build:
	$(GO_PATH)/bin/go build ok.go

install:
	install -o root -g root add-apt-s3-repository /usr/local/bin
	install -o root -g root global-env /usr/local/bin
	install -o root -g root ebs-mount /usr/local/bin
	install -o root -g root ok /usr/local/bin
	mkdir -p /etc/sv/ok
	install -o root -g root -D etc/sv/ok/run /etc/sv/ok/run


.PHONY: all install
