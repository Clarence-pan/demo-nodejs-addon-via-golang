build/Release/node-calculator.node: calculator.a
	node-gyp configure
	node-gyp build

build: build/Release/node-calculator.node


calculator.a:
	go build -buildmode c-archive -o calculator.a calculator.go


clean:
	rm -rf ./build

rebuild: clean build

test:
	node test.js && echo OK.

