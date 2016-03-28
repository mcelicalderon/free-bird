require 'rails_helper'

RSpec.describe "census_dates/index", type: :view do
  before(:each) do
    assign(:census_dates, [
      CensusDate.create!(),
      CensusDate.create!()
    ])
  end

  it "renders a list of census_dates" do
    render
  end
end
