require 'rails_helper'

RSpec.describe "sushi_rolls/new", type: :view do
  before(:each) do
    assign(:sushi_roll, SushiRoll.new(
      :name => "MyString",
      :price => 1,
      :description => "MyString"
    ))
  end

  it "renders new sushi_roll form" do
    render

    assert_select "form[action=?][method=?]", sushi_rolls_path, "post" do

      assert_select "input[name=?]", "sushi_roll[name]"

      assert_select "input[name=?]", "sushi_roll[price]"

      assert_select "input[name=?]", "sushi_roll[description]"
    end
  end
end
