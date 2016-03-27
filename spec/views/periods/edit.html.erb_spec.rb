require 'rails_helper'

RSpec.describe "periods/edit", type: :view do
  before(:each) do
    @period = assign(:period, Period.create!(
      :start => 1,
      :end => 1
    ))
  end

  it "renders the edit period form" do
    render

    assert_select "form[action=?][method=?]", period_path(@period), "post" do

      assert_select "input#period_start[name=?]", "period[start]"

      assert_select "input#period_end[name=?]", "period[end]"
    end
  end
end
