require "rails_helper"

RSpec.describe Review, type: :model do
  it { is_expected.to(validate_presence_of(:title)) }
  it { is_expected.to(belong_to(:airline_demo)) }
end
