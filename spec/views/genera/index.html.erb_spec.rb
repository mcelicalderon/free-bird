require 'rails_helper'

RSpec.describe "genera/index", type: :view do
  before(:each) do
    family = Family.create!(
      name: 'Family'
    )
    assign(:genera, [
      Genus.create!(
        :name => "Name",
        :family => family
      ),
      Genus.create!(
        :name => "Name",
        :family => family
      )
    ])
  end

  it "renders a list of genera" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
