require 'spec_helper'

describe "Deal Model" do
  let(:deal) { Deal.new }
  it 'can be created' do
    deal.should_not be_nil
  end
end
