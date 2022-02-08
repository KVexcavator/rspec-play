require_relative 'skier'
require_relative 'trail_map'

RSpec.configure do |c|
  c.mock_with :rspec do |mocks|
    mocks.verify_doubled_constant_names = true
  end
end

module Mountain
  RSpec.describe Skier do

    it 'gets tired after skiing a difficult slope' do
      trail_map = instance_double(TrailMap, difficulty: :expert)
      skier = Skier.new(trail_map)
      skier.ski_on('Last Hoot')
      expect(skier).to be_tired
    end
  end
end
