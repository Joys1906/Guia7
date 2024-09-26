class User < ApplicationRecord
  has_secure_password

  validates :name, presence: true, length: { maximum: 15 }, format: { with: /\A[a-zA-Z]+\z/, message: "solo puede contener letras" }
  validates :password, presence: true, length: { is: 8 }
  
  validates :email, presence: true, uniqueness: { case_sensitive: false }, format: { with: /\A[^@\s]+@[^@\s]+\z/, message: "debe ser un correo electrónico válido" }
end
