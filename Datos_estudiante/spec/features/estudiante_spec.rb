require 'rails_helper'

feature "Estudiante management", type: :feature do
  scenario "User creates a new estudiante" do
    visit new_estudiante_path
    fill_in "Nombres", with: "Juan"
    fill_in "Apellidos", with: "Pérez"
    fill_in "Carrera", with: "Ingeniería"
    fill_in "Carnet", with: "12345"
    click_button "Crear estudiante"
    
    expect(page).to have_text("Estudiante fue creado exitosamente")
  end
end
