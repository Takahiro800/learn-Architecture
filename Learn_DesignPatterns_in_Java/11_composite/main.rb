require_relative 'directory'
require_relative 'file'

puts "Making root entries..."

rootdir = Directory.new("root")
bindir = Directory.new("bin")
tmpdir = Directory.new("tmp")
usrdir = Directory.new("usr")

rootdir.add(bindir)
rootdir.add(tmpdir)
rootdir.add(usrdir)
bindir.add(OFile.new("vi", 10000))
bindir.add(OFile.new("latex", 20000))
rootdir.print_list
puts ""

puts "Making user entries..."
hoge = Directory.new("hoge")
foo = Directory.new("foo")
bar = Directory.new("bar")
usrdir.add(hoge)
usrdir.add(foo)
usrdir.add(bar)

hoge.add(OFile.new("diary.html", 100))
hoge.add(OFile.new("Composite.java", 200))
foo.add(OFile.new("memo.tex", 300))
bar.add(OFile.new("game.doc", 400))
bar.add(OFile.new("junk.mail", 500))

rootdir.print_list
