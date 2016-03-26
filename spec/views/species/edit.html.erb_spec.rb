require 'rails_helper'

RSpec.describe "species/edit", type: :view do
  before(:each) do
    @species = assign(:species, Species.create!(
      :name => "MyString",
      :description => "MyText",
      :genre => nil
    ))
  end

  it "renders the edit species form" do
    render

    assert_select "form[action=?][method=?]", species_path(@species), "post" do

      assert_select "input#species_name[name=?]", "species[name]"

      assert_select "textarea#species_description[name=?]", "species[description]"

      assert_select "input#species_genre_id[name=?]", "species[genre_id]"
    end
  end
end
