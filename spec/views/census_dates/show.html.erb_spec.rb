require 'rails_helper'

RSpec.describe "census_dates/show", type: :view do
  before(:each) do
    @census_date = assign(:census_date, CensusDate.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
