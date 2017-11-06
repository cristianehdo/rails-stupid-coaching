require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
   test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"

    assert_text "I don't care, get dressed and go to work!"
  end

  test "Asking something yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "What time is it?"
    click_on "Ask"

    assert_text "Silly question, get dressed and got to work"
  end

  test "Saying the rigth thing and getting Great response from the coach" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end
end
