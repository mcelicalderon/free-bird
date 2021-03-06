require 'rails_helper'

RSpec.describe "zones/edit", type: :view do
  before(:each) do
    @zone = assign(:zone, Zone.create!(
      :name => "MyString",
      :description => "MyText"
    ))
  end

  it "renders the edit zone form" do
    render

    assert_select "form[action=?][method=?]", zone_path(@zone), "post" do

      assert_select "input#zone_name[name=?]", "zone[name]"

      assert_select "textarea#zone_description[name=?]", "zone[description]"
    end
  end
end
