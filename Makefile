build: calculator.a
	node-gyp configure
	node-gyp build


calculator.a:
	go build -buildmode c-archive -o calculator.a calculator.go


test:
	node test.js

