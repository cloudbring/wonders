require 'uuidtools'

class Item
  attr_accessor :name
  attr_accessor :id
  def initialize(params)
    @name = params[:name]
    @id = params[:id] | UUIDTools::UUID.random_create
  end
end
