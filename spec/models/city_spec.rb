require 'spec_helper'

describe "City Model" do
  let(:city) { City.new }
  it 'can be created' do
    city.should_not be_nil
  end
end
