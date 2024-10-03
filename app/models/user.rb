class User < ApplicationRecord
    has_secure_password
    
    validates :email, presence: true, uniqueness: true
    validates :role, presence: true
    validates :password, presence: true, length: { minimum: 6 }
  
    enum role: { receptionist: 'receptionist', doctor: 'doctor' }
  end
  