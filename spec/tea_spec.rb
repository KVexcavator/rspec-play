require_relative "../my_config.rb"

class Tea
  def flavor
    :earl_grey
  end
  def temperature
    210.00
  end
end

RSpec.describe Tea do
  let(:tea) { Tea.new }
  it 'tastes like Earl Grey' do
    expect(tea.flavor).to be :earl_grey
  end
  it 'is hot' do
    expect(tea.temperature).to be > 200.0
  end
end
