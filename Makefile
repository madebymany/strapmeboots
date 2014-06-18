all:
	echo "nothing to do"

install:
	install -o root -u root add-apt-s3-repository /usr/local/bin

.PHONY: all install
