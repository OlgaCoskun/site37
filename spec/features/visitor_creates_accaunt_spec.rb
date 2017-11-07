require "rails_helper"

feature "Accaunt Creation" do
  scenario "allows guest to create accaunt" do
    sign_up
    expect(page).to have_content I18n.t('devise.registrations.signed_up')
  end
end

