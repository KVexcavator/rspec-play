RSpec.configure do |config|
  config.before(:suite) do
    p "Im run"
  end
  config.filter_run_when_matching(focus: true)
  config.example_status_persistence_file_path = 'spec/examples.txt'
end
