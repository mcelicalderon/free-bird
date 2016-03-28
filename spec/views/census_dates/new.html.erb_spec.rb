require 'rails_helper'

RSpec.describe "census_dates/new", type: :view do
  before(:each) do
    assign(:census_date, CensusDate.new())
  end

  it "renders new census_date form" do
    render

    assert_select "form[action=?][method=?]", census_dates_path, "post" do
    end
  end
end
