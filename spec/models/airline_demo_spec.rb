require 'rails_helper'

RSpec.describe AirlineDemo, type: :model do
  context "testing the custom method in the model" do
    it{is_expected.to(validate_presence_of(:name))}
    let(:new_name) { "United States" }
    let(:new_airline) { create(:airline_demo, name: new_name) }
    describe "#slugify" do
      it "should slugify the name of the airline to the slug" do
        new_airline.slugify
        expect(new_airline.slug).to eq("united-states")
      end
    end
    describe "#average_score" do
      it "should calculate the average score of the airline reviews" do
        total_score = 0
        new_reviews = create_list(:review, 3,airline_demo: new_airline)
        method_average_score = new_airline.average_score
        new_reviews.each do |score|
          total_score += score.score.to_f
        end
        total_average_score = total_score/3.0
        expect(method_average_score).to eq(total_average_score.round(2).to_f)
      end
    end

  end
end
