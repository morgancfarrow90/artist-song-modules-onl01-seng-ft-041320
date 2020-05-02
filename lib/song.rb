require_relative '../lib/concerns/memorable'
require_relative '../lib/concerns/findable'

require 'pry'

class Song
  attr_accessor :name
  attr_reader :artist
  
  extend Memorable::ClassMethods
  extend Findable::ClassMethods


  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end


  def artist=(artist)
    @artist = artist
  end

  def to_param
    name.downcase.gsub(' ', '-')
  end
end
