require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(50) }
    it { is_expected.to validate_presence_of(:biography) }
    it { is_expected.to validate_length_of(:biography).is_at_most(500) }
    it { is_expected.to validate_presence_of(:image_url) }
  end
end
