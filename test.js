const calculator = require('./build/Release/node-calculator');
const assert = require('assert');

console.log('4+5=', calculator.add(4, 5));

assert.strictEqual(calculator.add(4, 5), 9);