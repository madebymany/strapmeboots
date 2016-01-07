all:
	echo "nothing to do"

install:
	install -o root -g root add-apt-s3-repository /usr/sbin
	install -o root -g root ebs-mount /usr/sbin

.PHONY: all install
