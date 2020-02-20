# frozen_string_literal: true

require 'translator'

describe Translator do
  let(:translator) { Translator.new }
  describe '#get_file_as_string' do
    it 'turns a log file into a string' do
      expect(translator.get_file_as_string('test_file.log')).to eq("/home_page 814\n/about 345\n")
    end
  end

  describe '#string_to_array' do
    it 'creates an array from the string' do
      expect(translator.string_to_array("/home_page 814\n/about 345\n")).to eq(["/home_page 814", "/about 345"])
    end
  end

  describe '#array_to_hash' do
    it 'creates a hash from the array' do
      expect(translator.array_to_hash(['/home_page 814', '/about 345'])).to eq('/home_page' => '814', '/about' => '345')
    end
  end

  describe '#convert' do
    it 'turns the log file into a hash' do
      expect(translator.convert('test_file.log')).to eq('/home_page' => '814', '/about' => '345')
    end
  end
end
