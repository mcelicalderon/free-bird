require 'rails_helper'

RSpec.describe "segment_types/edit", type: :view do
  before(:each) do
    @segment_type = assign(:segment_type, SegmentType.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit segment_type form" do
    render

    assert_select "form[action=?][method=?]", segment_type_path(@segment_type), "post" do

      assert_select "input#segment_type_name[name=?]", "segment_type[name]"
    end
  end
end
