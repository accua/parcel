class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:parcels) do
    true
  end

  define_method(:volume) do
    @length * @width * @height
  end

  define_method(:cost) do |distance, speed|
    @speed = speed
    @distance = distance
    base_cost = volume + (@weight / 5) + (@distance / 2)
    if @speed == "Standard"
      base_cost += 10
    elsif @speed == "Speedy"
      base_cost += 35
    else @speed == "Overnight"
      base_cost += 100
    end
  end
end
