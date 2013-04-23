(function() {
  var FibonacciCoding;

  FibonacciCoding = {};

  FibonacciCoding.encode = function(n) {
    var a, b, c, f, fibs, result, _i, _len;

    if (n < 1) {
      return '';
    }
    a = 1;
    b = 1;
    c = a + b;
    fibs = [b];
    while (n >= c) {
      fibs.unshift(c);
      a = b;
      b = c;
      c = a + b;
    }
    result = ['1'];
    for (_i = 0, _len = fibs.length; _i < _len; _i++) {
      f = fibs[_i];
      if (n >= f) {
        n = n - f;
        result.unshift('1');
      } else {
        result.unshift('0');
      }
    }
    return result.join('');
  };

  FibonacciCoding.decode = function(str) {
    var char, fib, fib_last, index, sum, tmp, _i, _len, _ref;

    fib = 1;
    fib_last = 1;
    sum = 0;
    _ref = str.split('').slice(0, -1);
    for (index = _i = 0, _len = _ref.length; _i < _len; index = ++_i) {
      char = _ref[index];
      if (char === '1') {
        sum += fib;
      }
      tmp = fib_last;
      fib_last = fib;
      fib += tmp;
    }
    return sum;
  };

  if ((typeof module !== "undefined" && module !== null) && (module.exports != null)) {
    module.exports = FibonacciCoding;
  } else {
    this.FibonacciCoding = FibonacciCoding;
  }

}).call(this);
