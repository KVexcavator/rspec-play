https://github.com/rspec-3-book/book-code

- вывод
  rspec (ищет файлы в папке spec, если ее нет надо указывать путь)
  rspec file.rb
- вывод в документированном формате
  rspec  --format documentation
- вывод в документированном виде с gem coderay
  rspec  -fd
- вывести два самых медленных теста
  rspec --profile 2
- вывод с поиском в описании теста
  (по слову milk в примере)
  rspec  -e milk -fd
- вывод по строке
  rspec ./spec/coffee_spec.rb:25
- вывод только упавших
  Необходимо настроить файл для сохранения состояния:
  RSpec.configure do |config|
    config.example_status_persistence_file_path = 'spec/examples.txt'
  end
  rspec --only-failures
