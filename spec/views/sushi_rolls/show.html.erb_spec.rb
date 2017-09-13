require 'rails_helper'

RSpec.describe "sushi_rolls/show", type: :view do
  before(:each) do
    @sushi_roll = assign(:sushi_roll, SushiRoll.create!(
      :name => "Name",
      :price => 2,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Description/)
  end
end
