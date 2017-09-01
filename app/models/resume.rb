class Resume < ApplicationRecord
  has_many :skills
  has_many :colleges
  has_many :companies
  has_many :honors

  belongs_to :user
end
