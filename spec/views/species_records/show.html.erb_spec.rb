require 'rails_helper'

RSpec.describe "species_records/show", type: :view do
  before(:each) do
    @species_record = assign(:species_record, SpeciesRecord.create!(
      :count => 1,
      :day_description => nil,
      :period => nil,
      :segment => nil,
      :species => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
