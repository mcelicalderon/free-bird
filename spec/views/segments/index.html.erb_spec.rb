require 'rails_helper'

RSpec.describe "segments/index", type: :view do
  before(:each) do
    assign(:segments, [
      Segment.create!(
        :name => "Name",
        :segment_type => nil
      ),
      Segment.create!(
        :name => "Name",
        :segment_type => nil
      )
    ])
  end

  it "renders a list of segments" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
