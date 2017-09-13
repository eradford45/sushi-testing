require 'rails_helper'

RSpec.describe "sushi_rolls/edit", type: :view do
  before(:each) do
    @sushi_roll = assign(:sushi_roll, SushiRoll.create!(
      :name => "MyString",
      :price => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit sushi_roll form" do
    render

    assert_select "form[action=?][method=?]", sushi_roll_path(@sushi_roll), "post" do

      assert_select "input[name=?]", "sushi_roll[name]"

      assert_select "input[name=?]", "sushi_roll[price]"

      assert_select "input[name=?]", "sushi_roll[description]"
    end
  end
end
