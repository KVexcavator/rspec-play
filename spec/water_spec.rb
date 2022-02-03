class Water
  def self.elements
  [:hydrogen,:oxygen, :hydrogen]
  end
end

RSpec.describe Water do
  it 'is H2O' do
    expect(Water.elements.sort).to contain_exactly(:hydrogen, :hydrogen, :oxygen)
  end
end
