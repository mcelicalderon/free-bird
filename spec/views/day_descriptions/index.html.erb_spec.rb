require 'rails_helper'

RSpec.describe "day_descriptions/index", type: :view do
  before(:each) do
    assign(:day_descriptions, [
      DayDescription.create!(
        :temperature => "Temperature",
        :description => "MyText"
      ),
      DayDescription.create!(
        :temperature => "Temperature",
        :description => "MyText"
      )
    ])
  end

  it "renders a list of day_descriptions" do
    render
    assert_select "tr>td", :text => "Temperature".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
