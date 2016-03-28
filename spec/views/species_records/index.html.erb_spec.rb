require 'rails_helper'

RSpec.describe "species_records/index", type: :view do
  before(:each) do
    period = Period.create!(
      :start => 1,
      :end => 2
    )
    segment_type = SegmentType.create!(
      :name => "Name"
    )
    segment = Segment.create!(
      :name => "Name",
      :segment_type => segment_type
    )
    family = Family.create!(
      name: 'Family'
    )
    genus = Genus.create!(
      name: 'Genus',
      family: family
    )
    species = Species.create!(
      :name => "Name",
      :description => "MyText",
      :genus => genus
    )

    day_description = DayDescription.create!(
      :temperature => "Temperature",
      :description => "MyText"
    )

    assign(:species_records, [
      SpeciesRecord.create!(
        :count => 1,
        :day_description => day_description,
        :period => period,
        :segment => segment,
        :species => species
      ),
      SpeciesRecord.create!(
        :count => 1,
        :day_description => day_description,
        :period => period,
        :segment => segment,
        :species => species
      )
    ])
  end

  it "renders a list of species_records" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
