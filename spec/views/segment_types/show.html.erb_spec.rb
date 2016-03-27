require 'rails_helper'

RSpec.describe "segment_types/show", type: :view do
  before(:each) do
    @segment_type = assign(:segment_type, SegmentType.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
