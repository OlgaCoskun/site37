def sign_up
  visit new_user_registration_path

    fill_in :user_email, :with => 'user3@example.com'
    fill_in :user_username, :with => 'mike3'
    fill_in :user_password, :with => 'secure12345!@#'
    fill_in :user_password_confirmation, :with => 'secure12345!@#'

    click_button 'Sign up'
end
