# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'csv'

first_file = Rails.root.join('db/first-name-database.csv')
second_file = Rails.root.join('db/surname-database.csv')

CSV.foreach(first_file, headers: true, col_sep: ';') do |row|
  name = row['Name ASCII']
  country = row['Country name']
  gender = row['Gender']
  FirstName.find_or_create_by(name: name) do |obj|
    obj.country = country
    obj.gender = gender
    p obj
  end
end

CSV.foreach(second_file, headers: true, col_sep: ';') do |row|
  name = row['Name ASCII']
  country = row['Country name']
  LastName.find_or_create_by(name: name) do |obj|
    obj.country = country
    p obj
  end
end