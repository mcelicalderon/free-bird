require 'rails_helper'

RSpec.describe "species/new", type: :view do
  before(:each) do
    assign(:species, Species.new(
      :name => "MyString",
      :description => "MyText",
      :genus => nil
    ))
  end

  it "renders new species form" do
    render

    assert_select "form[action=?][method=?]", species_index_path, "post" do

      assert_select "input#species_name[name=?]", "species[name]"

      assert_select "textarea#species_description[name=?]", "species[description]"

      assert_select "input#species_genus_id[name=?]", "species[genus_id]"
    end
  end
end
