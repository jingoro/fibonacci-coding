describe 'FibonacciCoding', ->

  it 'should exist', ->

    expect(FibonacciCoding ).toBeTruthy()

  describe 'encode', ->

    it 'should encode negative numbers as blank', ->

      expect(FibonacciCoding.encode(-1)).toEqual('')
      expect(FibonacciCoding.encode(-12)).toEqual('')

    it 'should encode 0 as blank', ->

      expect(FibonacciCoding.encode(0)).toEqual('')

    it 'should encode 1-14', ->

      expect(FibonacciCoding.encode(1)).toEqual('11')
      expect(FibonacciCoding.encode(2)).toEqual('011')
      expect(FibonacciCoding.encode(3)).toEqual('0011')
      expect(FibonacciCoding.encode(4)).toEqual('1011')
      expect(FibonacciCoding.encode(5)).toEqual('00011')
      expect(FibonacciCoding.encode(6)).toEqual('10011')
      expect(FibonacciCoding.encode(7)).toEqual('01011')
      expect(FibonacciCoding.encode(8)).toEqual('000011')
      expect(FibonacciCoding.encode(9)).toEqual('100011')
      expect(FibonacciCoding.encode(10)).toEqual('010011')
      expect(FibonacciCoding.encode(11)).toEqual('001011')
      expect(FibonacciCoding.encode(12)).toEqual('101011')
      expect(FibonacciCoding.encode(13)).toEqual('0000011')
      expect(FibonacciCoding.encode(14)).toEqual('1000011')

    it 'should encode a large number', ->

      expect(FibonacciCoding.encode(123456789)).toEqual('1001010000010010100000101010000010100011')

  describe 'decode', ->

    it 'should decode 1-14', ->

      expect(FibonacciCoding.decode('11')).toEqual(1)
      expect(FibonacciCoding.decode('011')).toEqual(2)
      expect(FibonacciCoding.decode('0011')).toEqual(3)
      expect(FibonacciCoding.decode('1011')).toEqual(4)
      expect(FibonacciCoding.decode('00011')).toEqual(5)
      expect(FibonacciCoding.decode('10011')).toEqual(6)
      expect(FibonacciCoding.decode('01011')).toEqual(7)
      expect(FibonacciCoding.decode('000011')).toEqual(8)
      expect(FibonacciCoding.decode('100011')).toEqual(9)
      expect(FibonacciCoding.decode('010011')).toEqual(10)
      expect(FibonacciCoding.decode('001011')).toEqual(11)
      expect(FibonacciCoding.decode('101011')).toEqual(12)
      expect(FibonacciCoding.decode('0000011')).toEqual(13)
      expect(FibonacciCoding.decode('1000011')).toEqual(14)

    it 'should decode a large number', ->

      expect(FibonacciCoding.decode('10101010101010101010101010101010101011')).toEqual(63245985)
