require 'rails_helper'

RSpec.describe "periods/new", type: :view do
  before(:each) do
    assign(:period, Period.new(
      :start => 1,
      :end => 1
    ))
  end

  it "renders new period form" do
    render

    assert_select "form[action=?][method=?]", periods_path, "post" do

      assert_select "input#period_start[name=?]", "period[start]"

      assert_select "input#period_end[name=?]", "period[end]"
    end
  end
end
