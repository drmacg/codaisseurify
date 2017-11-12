require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it { is_expected.to validate_presence_of(:track_number) }
    it { is_expected.to validate_numericality_of(:track_number).only_integer }
    it { is_expected.to validate_numericality_of(:track_number).is_greater_than(0) }
    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_length_of(:name).is_at_most(50) }
    it { is_expected.to validate_presence_of(:duration) }
    it { is_expected.to validate_length_of(:duration).is_at_most(8) }
  end
end
