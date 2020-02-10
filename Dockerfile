FROM golang:latest

RUN \
		apt-get update -y \
	&&	apt-get upgrade -y \
	&&	apt-get install -y \
			software-properties-common \
	&&	add-apt-repository ppa:dqlite/stable \
	&&	apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 06CD096F50FB3D04 \
	&&	apt-get update -y \
	&&	apt-get install -y \
			libdqlite-dev \
			libzmq3-dev \
	&&	rm -rf /var/lib/apt/lists/*