require 'rails_helper'

RSpec.describe "day_descriptions/edit", type: :view do
  before(:each) do
    @day_description = assign(:day_description, DayDescription.create!(
      :temperature => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit day_description form" do
    render

    assert_select "form[action=?][method=?]", day_description_path(@day_description), "post" do

      assert_select "input#day_description_temperature[name=?]", "day_description[temperature]"

      assert_select "textarea#day_description_description[name=?]", "day_description[description]"
    end
  end
end
