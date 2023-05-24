class Singleton
  @instance = Singleton.new

  def self.get_instance
    @instance
  end

  private

  def self.initialize
    @singleton = Singleton.new
  end
end
