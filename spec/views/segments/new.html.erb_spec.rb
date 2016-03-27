require 'rails_helper'

RSpec.describe "segments/new", type: :view do
  before(:each) do
    assign(:segment, Segment.new(
      :name => "MyString",
      :segment_type => nil
    ))
  end

  it "renders new segment form" do
    render

    assert_select "form[action=?][method=?]", segments_path, "post" do

      assert_select "input#segment_name[name=?]", "segment[name]"

      assert_select "input#segment_segment_type_id[name=?]", "segment[segment_type_id]"
    end
  end
end
