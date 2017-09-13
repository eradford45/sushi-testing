require 'rails_helper'

RSpec.describe "sushi_rolls/index", type: :view do
  before(:each) do
    assign(:sushi_rolls, [
      SushiRoll.create!(
        :name => "Name",
        :price => 2,
        :description => "Description"
      ),
      SushiRoll.create!(
        :name => "Name",
        :price => 2,
        :description => "Description"
      )
    ])
  end

  it "renders a list of sushi_rolls" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
