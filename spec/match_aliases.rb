RSpec.describe 'Alias for eq' do
  it "is go " do
    expect([String, Regexp]).to include(String)
    expect(['a string', Regexp]).to include(String)
    # все тесты проходят, но вержние два не точные
    expect([String, Regexp]).to include(an_object_eq_to String)
  end
end
