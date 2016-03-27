require 'rails_helper'

RSpec.describe "segment_types/new", type: :view do
  before(:each) do
    assign(:segment_type, SegmentType.new(
      :name => "MyString"
    ))
  end

  it "renders new segment_type form" do
    render

    assert_select "form[action=?][method=?]", segment_types_path, "post" do

      assert_select "input#segment_type_name[name=?]", "segment_type[name]"
    end
  end
end
