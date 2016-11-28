class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end
end

  define_method(:parcels) do
    true
  end

  define_method(:volume) do
    @length * @width * @height
  end
