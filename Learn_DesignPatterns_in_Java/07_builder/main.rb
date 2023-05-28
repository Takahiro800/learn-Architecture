require_relative 'director'
require_relative 'text_builder'
require_relative 'html_builder'

arg = gets.chomp

if arg == "text"
  builder = TextBuilder.new
  director = Director.new(builder)
  director.construct
  puts builder.result
elsif arg == "html"
  builder = HTMLBuilder.new
  director = Director.new(builder)
  director.construct
  file_name = builder.result
  puts "HTMLファイル#{file_name}が作成されました"
end
