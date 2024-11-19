# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "seed creation"

Bernard_Caniche = User.create!(email: "b.caniche@chenil-bellevue.fr", password: "azerty")
Eric_Caillard = User.create!(email: "e.caillard@les-cochons-heureux.fr", password: "azerty")

Offer.create!(title: "Chenil Bellevue chaleureux et convivial", description: "Boxes individuels adaptés au gabarit et aux besoins de chaque pensionnaire, chauffés selon la saison. Les boxes sont construits en dur avec une toiture en tuiles et une isolation des murs, garantissant un abri sec et protégé des intempéries.", price: 200, address: "174 avenue Marcel Dassault, 33700 Mérignac", user: Bernard_Caniche)
Offer.create!(title: "Porcherie de luxe Eric Caillard", description: "Ce site exceptionnel, appelé « la Tessourière », «le lieu des cochons » en occitan, est une terre d’élevage de porcs depuis l’époque napoléonienne. La porcherie peut accueillir une quizaine de convives pour un retour aux sources garanti.", price: 300, address: "302 Grand’Place, 46090 Mercuès.", user: Eric_Caillard)

puts "seed termination"
