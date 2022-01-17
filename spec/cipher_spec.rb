require './lib/cipher'

describe Cipher do
  subject { Cipher.new }
  describe '#ceasar_cipher' do
    it 'returns a ceasar cipher code' do
      expect(subject.caesar_cipher('What a string!', 5)).to eql 'Bmfy f xywnsl!'
    end
  end
end
