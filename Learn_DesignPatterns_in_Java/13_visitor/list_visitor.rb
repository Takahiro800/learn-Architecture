require_relative 'visitor'

class ListVisitor < Visitor
  def initialize
    @current_dir = ""
  end

  def visit(file_or_dir)
    if file_or_dir.is_a?(OFile)
      visit_file(file_or_dir)
    elsif file_or_dir.is_a?(Directory)
      visit_directory(file_or_dir)
    else
      puts file_or_dir.inspect
      # raise ArgumentError
    end
  end

  private

  def visit_file(file)
    puts(@current_dir + "/" + file.to_string)
  end

  def visit_directory(directory)
    puts(@current_dir + "/" + directory.to_string)

    save_dir = @current_dir

    @current_dir = @current_dir + "/" + directory.get_name
    directory.directories.each do |entry|
      entry.accept(self)
    end

    @current_dir = save_dir
  end
end
