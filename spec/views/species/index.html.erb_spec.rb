require 'rails_helper'

RSpec.describe "species/index", type: :view do
  before(:each) do
    family = Family.create!(
      name: 'Family'
    )
    genre = Genre.create!(
      name: 'Genre',
      family: family
    )
    assign(:species, [
      Species.create!(
        :name => "Name",
        :description => "MyText",
        :genre => genre
      ),
      Species.create!(
        :name => "Name",
        :description => "MyText",
        :genre => genre
      )
    ])
  end

  it "renders a list of species" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
