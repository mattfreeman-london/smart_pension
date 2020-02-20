require 'translator'

describe '#get_file_as_string' do
  it 'turns a log file into a string' do
    expect(get_file_as_string('test_file.log')).to eq("/home_page\n/about\n")
  end
end

describe '#string_to_array' do
  it 'creates an array that can be mined for information' do
    expect(string_to_array('/home_page\n/about\n')).to eq(["/home_page", "/about"])
  end
end
