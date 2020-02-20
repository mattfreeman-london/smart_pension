require 'translator'

describe '#get_file_as_string' do
  it 'turns the log file into a string' do
    expect(get_file_as_string('webserver.log')).to be_a String
  end
end
