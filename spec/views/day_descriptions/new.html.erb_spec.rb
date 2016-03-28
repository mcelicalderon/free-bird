require 'rails_helper'

RSpec.describe "day_descriptions/new", type: :view do
  before(:each) do
    assign(:day_description, DayDescription.new(
      :temperature => "MyString",
      :description => "MyText"
    ))
  end

  it "renders new day_description form" do
    render

    assert_select "form[action=?][method=?]", day_descriptions_path, "post" do

      assert_select "input#day_description_temperature[name=?]", "day_description[temperature]"

      assert_select "textarea#day_description_description[name=?]", "day_description[description]"
    end
  end
end
