require 'rails_helper'

RSpec.describe "day_descriptions/show", type: :view do
  before(:each) do
    @day_description = assign(:day_description, DayDescription.create!(
      :temperature => "Temperature",
      :description => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Temperature/)
    expect(rendered).to match(/MyText/)
  end
end
