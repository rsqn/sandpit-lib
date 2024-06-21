const SomeUtil = require('../src/SomeUtil');

describe('SomeUtil', () => {
  it('should return "Hello" from hello function', () => {
    const util = new SomeUtil();
    expect(util.hello()).toBe('Hello');
  });

  it('should return "Hello World" from helloWorld function', () => {
    const util = new SomeUtil();
    expect(util.helloWorld()).toBe('Hello World');
  });
});