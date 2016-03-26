require 'rails_helper'

RSpec.describe "genera/show", type: :view do
  before(:each) do
    @genus = assign(:genus, Genus.create!(
      :name => "Name",
      :family => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
