build: submodules
	cd third_party/node_mDNS && node-waf configure build
	cd third_party/Socket.IO && node build.js
	ln -f third_party/Socket.IO/socket.io.js public/js

submodules:
	git submodule update --init --recursive

test:
	cd third_party/express && make test
