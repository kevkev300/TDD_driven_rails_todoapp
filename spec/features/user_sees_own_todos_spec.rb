require 'rails_helper'

feature 'User sees own todos' do
  scenario "doesn't see other's todo" do
    Todo.create!(title: "Buy milk", email: "some@some.com")

    sign_in_as "user@user.com"

    expect(page).not_to display_todo('Buy milk')
  end
end
