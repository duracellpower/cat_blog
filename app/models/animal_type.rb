class AnimalType

  attr_accessor :type

  def initialize(type)
    @type = type
  end

  def to_s
    type
  end
end
