# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Sneaker.destroy_all

rodrigo = User.create!(name: "Rodrigo", address: "Rua Antonio, 125", contact: 1198980909, email: "teste@teste.com", password: "123456")
tenis = Sneaker.create!(user: rodrigo, size: 40, model: "run", brand: "nike", condition: "new", price: 500, inventory: 1, description: "very nice")
gabriel = User.create!(name: "Gabriel", address: "Rua moema, 900", contact: 1198989809, email: "teste1@teste.com", password: "123456")
tenis2 = Sneaker.create!(user: gabriel, size: 39, model: "z300", brand: "rebook", condition: "new", price: 600, inventory: 1, description: "I loved")
renan = User.create!(name: "Renan", address: "Rua Cerro Corá, 89", contact: 1245567890, email: "teste2@teste.com", password: "123456")
tenis3 = Sneaker.create!(user: renan, size: 43, model: "n9000", brand: "newbalace", condition: "new", price: 900, inventory: 1, description: "very good")
guilherme = User.create!(name: "Guilherme", address: "Rua Oliveira, 80", contact: 1199999809, email: "teste3@teste.com", password: "123456")
tenis4 = Sneaker.create!(user: guilherme, size: 41, model: "profecy", brand: "mizuno", condition: "new", price: 900, inventory: 1, description: "good")
