require 'rails_helper'

RSpec.describe "genera/edit", type: :view do
  before(:each) do
    @genus = assign(:genus, Genus.create!(
      :name => "MyString",
      :family => nil
    ))
  end

  it "renders the edit genus form" do
    render

    assert_select "form[action=?][method=?]", genus_path(@genus), "post" do

      assert_select "input#genus_name[name=?]", "genus[name]"

      assert_select "input#genus_family_id[name=?]", "genus[family_id]"
    end
  end
end
