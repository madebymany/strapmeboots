all:
	echo "nothing to do"

install:
	install -o root -g root add-apt-s3-repository /usr/local/bin
	install -o root -g root global-env /usr/local/bin
	install -o root -g root ebs-mount /usr/local/bin

.PHONY: all install
