require 'rails_helper'

RSpec.feature "Users", type: :feature do
  scenario "User wants to create a new user successfully" do
    visit new_user_path
    
    fill_in "Name", with: "Pedro"
    fill_in "Email", with: "pedro@gmail.com"
    fill_in "Password", with: "12345678"
    check "Programador"  # Si tu formulario tiene este campo
    fill_in "Birthday", with: "2024-09-30"  # Asegúrate de que el formato coincida con lo que espera el campo
    fill_in "Work time", with: "08:21"

    click_button "Create User"
    
    expect(page).to have_text("User was successfully created")
  end

  feature "User want to see all users created" do
    scenario "User is on index page" do
    visit new_user_path
    click_link "Back"
    expect(page).to have_content("Users")
    end
  end

end
