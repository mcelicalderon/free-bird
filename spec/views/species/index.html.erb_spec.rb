require 'rails_helper'

RSpec.describe "species/index", type: :view do
  before(:each) do
    family = Family.create!(
      name: 'Family'
    )
    genus = Genus.create!(
      name: 'Genus',
      family: family
    )
    assign(:species, [
      Species.create!(
        :name => "Name",
        :description => "MyText",
        :genus => genus
      ),
      Species.create!(
        :name => "Name",
        :description => "MyText",
        :genus => genus
      )
    ])
  end

  it "renders a list of species" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
