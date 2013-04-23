FibonacciCoding = {}

FibonacciCoding.encode = (n) ->
  return '' if n < 1
  a = 1
  b = 1
  c = a + b      # next Fibonacci number
  fibs = [b]     # list of Fibonacci numbers, starting with F(2), each <= n
  while n >= c
    fibs.unshift(c) # add next Fibonacci number to top of list
    a = b
    b = c
    c = a + b
  result = ['1']  # extra '1' at end
  for f in fibs
    if n >= f
      n = n - f
      result.unshift('1')
    else
      result.unshift('0')
  result.join ''

FibonacciCoding.decode = (str) ->
  # Start at F(2)
  fib = 1
  fib_last = 1
  sum = 0
  # ignore last '1' in str
  for char, index in str.split('')[0..-2]
    sum += fib if char == '1'
    tmp = fib_last
    fib_last = fib
    fib += tmp
  sum

if module? && module.exports?
  module.exports = FibonacciCoding
else
  this.FibonacciCoding = FibonacciCoding
