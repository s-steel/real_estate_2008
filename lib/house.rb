class House
  attr_reader :price, :address, :rooms
  def initialize(price, address)
    @price = price
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if price.to_i <= 500000
      false
    else
    price.to_i > 500000
      true
    end
  end

  def rooms_from_category(category)
    @rooms.find_all{ |room| room.category == category}
  end

  def area
    total_array = []
    @rooms.each do |room|
      total_array << (room.room_length * room.width.to_i)
    end
    total_array.sum
  end

  def details
    house_hash = {}
    house.price.to_i
    
  end
end
