require 'rails_helper'

RSpec.describe "species_records/edit", type: :view do
  before(:each) do
    @species_record = assign(:species_record, SpeciesRecord.create!(
      :count => 1,
      :day_description => nil,
      :period => nil,
      :segment => nil,
      :species => nil
    ))
  end

  it "renders the edit species_record form" do
    render

    assert_select "form[action=?][method=?]", species_record_path(@species_record), "post" do

      assert_select "input#species_record_count[name=?]", "species_record[count]"

      assert_select "input#species_record_day_description_id[name=?]", "species_record[day_description_id]"

      assert_select "input#species_record_period_id[name=?]", "species_record[period_id]"

      assert_select "input#species_record_segment_id[name=?]", "species_record[segment_id]"

      assert_select "input#species_record_species_id[name=?]", "species_record[species_id]"
    end
  end
end
