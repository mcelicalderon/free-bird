require 'rails_helper'

RSpec.describe "segment_types/index", type: :view do
  before(:each) do
    assign(:segment_types, [
      SegmentType.create!(
        :name => "Name"
      ),
      SegmentType.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of segment_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
