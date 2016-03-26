require 'rails_helper'

RSpec.describe "species/show", type: :view do
  before(:each) do
    @species = assign(:species, Species.create!(
      :name => "Name",
      :description => "MyText",
      :genre => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
