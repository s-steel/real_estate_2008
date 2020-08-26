class Room
  attr_reader :category, :room_length, :width, :painted
  def initialize(category, room_length, width)
    @category = category
    @room_length = room_length
    @width = width
    @painted = false
  end

  def area
    room_length * (width.to_i)
  end

  def paint
    @painted = true
  end

  def is_painted?
    if @painted == true
      true
    else
      false
    end
  end
end
