require 'till'

describe Till do
  allowed = { "Cafe Latte" => 4.75,
        "Flat White" => 4.75,
        "Cappucino" => 3.85,
        "Single Espresso" => 2.05,
        "Double Espresso" => 3.75,
        "Americano" => 3.75,
        "Cortado"=> 4.55,
        "Tea"=> 3.65,
        "Choc Mudcake"=> 6.40,
        "Choc Mousse"=> 8.20,
        "Affogato"=> 14.80,
        "Tiramisu"=> 11.40,
        "Blueberry Muffin"=> 4.05,
        "Chocolate Chip Muffin"=> 4.05,
        "Muffin Of The Day"=> 4.55 }

  it 'can list its current items' do
    expect(subject.list).to eq({})
  end

  it 'can add things to the list' do
    subject.add("Blueberry Muffin", 1)
    expect(subject.list).to eq({:"Blueberry Muffin" => {1 => 4.05}})
  end

  it 'knows what items are allowed to be added' do
    expect(subject.allowed).to eq(allowed)
  end

  it 'raises an error when an item not on the meu is added' do
    expect{ subject.add("random", 5) }.to raise_error("That is not on the menu")
  end
end