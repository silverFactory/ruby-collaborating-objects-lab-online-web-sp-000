require 'pry'
class MP3Importer
  attr_accessor :path, :files
  def initialize(file_path)
    @path = file_path
  end
  def files
    does_work = Dir.entries(self.path)
  #  binding.pry
  end
  def import
  end
end
