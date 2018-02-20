require_relative "test"
require_relative "result_printer"

puts "Тест \"Ваш уровень общительности\". Версия 3 (c) Olga Coskun\n\n"

questions = 'data/questions.txt'
results = 'data/results.txt'

test = Test.new(questions)
result_printer = ResultPrinter.new(results)

until test.finished?
  test.next_question
end

result_printer.print_result(test)
