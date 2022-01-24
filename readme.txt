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
  rspec --next-failure
- сфокусированный вывод, только помеченных тестов:
  добавить в конфиг
  config.filter_run_when_matching(focus: true)
  добаить в код
  fcontext 'with milk' do
  или
  context 'with milk', focus: true do
- директивный фильтр:
  rspec --tag last_run_status:failed
  rspec --tag focus
- пример оформления незаконченного теста:
  it 'is cooler than 200 degrees Fahrenheit' do
    pending 'Temperature not implemented yet'
    expect(coffee.temperature).to be < 200.0
  end
===============================================
Виды тестов:
• Acceptance: работает ли вся система?
• Unit: Правильно ли работают наши объекты, удобно ли с ними работать?
• Integration: работает ли наш код с кодом, который мы не можем изменить?
===============================================
