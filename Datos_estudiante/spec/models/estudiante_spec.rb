require 'rails_helper'

RSpec.describe Estudiante, type: :model do
  context "validations" do
    it { should validate_presence_of(:nombres) }
    it { should validate_presence_of(:apellidos) }
    it { should validate_presence_of(:carrera) }
    it { should validate_presence_of(:carnet) }
  end

  class Estudiante < ApplicationRecord
    validates :nombres, presence: true
    validates :apellidos, presence: true
    validates :carrera, presence: true
    validates :carnet, presence: true
  end
  


end
