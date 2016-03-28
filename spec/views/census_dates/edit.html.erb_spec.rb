require 'rails_helper'

RSpec.describe "census_dates/edit", type: :view do
  before(:each) do
    @census_date = assign(:census_date, CensusDate.create!())
  end

  it "renders the edit census_date form" do
    render

    assert_select "form[action=?][method=?]", census_date_path(@census_date), "post" do
    end
  end
end
