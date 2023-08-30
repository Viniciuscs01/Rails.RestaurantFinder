require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  describe "Associations" do
    it { is_expected.to(belong_to(:cuisine)) }
  end

  describe "Validation" do
    it {is_expected.to(validate_presence_of(:name))}
    it {is_expected.to(validate_presence_of(:customer_rating))}
    it {is_expected.to(validate_presence_of(:distance))}
    it {is_expected.to(validate_presence_of(:price))}
    it {is_expected.to(validate_presence_of(:cuisine))}
  end
end
