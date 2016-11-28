require("rspec")
require("parcel")

describe("Parcel#parcels") do
  it("Return true when a new parcel object is created.") do
    test_parcel = Parcel.new(4, 4, 4, 500)
    expect(test_parcel.parcels()).to(eq(true))
  end

  it("Returns the product of the sides of the parcel.") do
    test_parcel = Parcel.new(4, 4, 4, 500)
    expect(test_parcel.volume()).to(eq(64))
  end

  it("Returns a cost to ship the parcel overnight for 250 miles.") do
    test_parcel = Parcel.new(4, 4, 4, 500)
    expect(test_parcel.cost(250, "Standard")).to(eq(299))
  end
end
