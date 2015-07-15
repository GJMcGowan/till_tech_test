require 'spec_helper'
require 'till'

describe 'Till' do
  let(:till) { Till.new }

  context 'adding to the list' do
    it 'can add an item to the list' do
      till.add("Blueberry Muffin", 1)
      expect(till.list).to eq({:"Blueberry Muffin" => {1 => 4.05}})
    end

    it 'item must be on the menu to be added' do
      till.add("Blueberry Muffin", 1)
      expect { till.add("random", 4) }.to raise_error("That is not on the menu")
      expect(till.list).to eq({:"Blueberry Muffin" => {1 => 4.05}})
    end
  end
end