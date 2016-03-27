require 'rails_helper'

RSpec.describe "periods/index", type: :view do
  before(:each) do
    assign(:periods, [
      Period.create!(
        :start => 1,
        :end => 2
      ),
      Period.create!(
        :start => 1,
        :end => 2
      )
    ])
  end

  it "renders a list of periods" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
