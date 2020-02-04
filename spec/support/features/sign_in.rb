module Features
  def sign_in
    visit root_path
    fill_in 'email', with: 'person@person.de'
    click_on 'Sign in'
  end
end
