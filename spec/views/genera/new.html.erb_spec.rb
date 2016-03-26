require 'rails_helper'

RSpec.describe "genera/new", type: :view do
  before(:each) do
    assign(:genus, Genus.new(
      :name => "MyString",
      :family => nil
    ))
  end

  it "renders new genus form" do
    render

    assert_select "form[action=?][method=?]", genera_path, "post" do

      assert_select "input#genus_name[name=?]", "genus[name]"

      assert_select "input#genus_family_id[name=?]", "genus[family_id]"
    end
  end
end
