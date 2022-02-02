class NameExtractor
  def self.extract_from(text, &block)
    text.scan(/Melinda|Bob|Sabina/, &block)
  end
end

RSpec.describe NameExtractor do
  let(:text) do
    <<-EOS
      Melinda: (202) 555-0168
      Bob: 202-555-0199
      Sabina: (202) 555-0176
    EOS
  end

  it 'yields names as it finds them' do
    expect { |probe|
      NameExtractor.extract_from(text,&probe)
    }.to yield_successive_args(
      "Melinda", "Bob", "Sabina"
    )
  end
end
