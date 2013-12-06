require_relative 'employee'

describe Employee do 
  describe 'load_data' do
    it "loads employee csv data and pushes into an array" do
      expect(Employee.new.load_data).to eql()
    end
    it 'convert csv data into a hash'
  end
end