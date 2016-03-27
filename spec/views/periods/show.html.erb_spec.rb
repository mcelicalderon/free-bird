require 'rails_helper'

RSpec.describe "periods/show", type: :view do
  before(:each) do
    @period = assign(:period, Period.create!(
      :start => 1,
      :end => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
