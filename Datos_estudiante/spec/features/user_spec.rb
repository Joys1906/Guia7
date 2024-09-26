require 'rails_helper'

RSpec.feature "Estudiantes", type: :feature do
  feature "User wants to create a new student successfully" do
    scenario "Create a new student account" do
      visit new_estudiante_path

      fill_in "Nombres", with: "Pedro"
      fill_in "Apellidos", with: "Pérez"
      fill_in "Carrera", with: "Ingeniería"
      fill_in "Carnet", with: "123456"
      click_button "Crear estudiante"

      expect(page).to have_text("Estudiante fue creado exitosamente") # Asegúrate de que este mensaje coincida
    end
  end
end
