require("rspec")
require("parcel")

describe("Parcel#parcels") do
  it("Return true when a new parcel object is created.") do
  test_parcel = Parcel.new(4, 4, 4, 500)
  expect(test_parcel.parcels()).to(eq(true))
  end
end
