# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Offer.destroy_all
Booking.destroy_all
User.destroy_all

puts "seed creation"

Bernard_Caniche = User.create!(email: "b.caniche@chenil-bellevue.fr", password: "azerty")
Eric_Caillard = User.create!(email: "e.caillard@les-cochons-heureux.fr", password: "azerty")
Pere_Castor = User.create!(email: "père.castor@cabane.fr", password: "azerty")
Souris_Volante = User.create!(email: "souris.volantes@grotte-de-la-chauve-souris.fr", password: "azerty")

Offer.create!(title: "Chenil Bellevue chaleureux et convivial", description: "Pour une immersion totale, vous aurez accès à des boxes individuels adaptés au gabarit et aux besoins de chaque convive, chauffés selon la saison. Les boxes sont construits en dur avec une toiture en tuiles et une isolation des murs, garantissant un abri sec et protégé des intempéries. Le logement est accompagné d'une baignoire pour tous et d'un parc boueux pour se dépenser.", price: 200, address: "174 avenue Marcel Dassault, 33700 Mérignac", user: Bernard_Caniche)
Offer.create!(title: "Porcherie de luxe Eric Caillard", description: "Ce site exceptionnel, appelé « la Tessourière », «le lieu des cochons » en occitan, est une terre d’élevage de porcs depuis l’époque napoléonienne. La porcherie peut accueillir une quizaine de convives pour un retour aux sources garanti.", price: 300, address: "302 Grand’Place, 46090 Mercuès", user: Eric_Caillard)
Offer.create!(title: "La cabane du Castor Canadien", description: "La cabane est construite avec des branches de bois et de la terre. Cette hutte est composée d'une entrée et de deux chambres. L'accès s'y fait sous l'eau, mais la chambre principale est sous terre.", price: 250, address: "23 chemin de la rivière, 33600, Pessac", user: Pere_Castor)
Offer.create!(title: "La grotte de la Chauve-souris", description: "Cette grotte naturelle est située dans la vallée de la Joncquière, au sein du massif calcaire de la Montagne de la Carrière. Il s'agirait, selon certains spécialistes, d'un ancien exutoire. Elle comporte une galerie principale, développée sur une centaire de mètres de longueur pour une hauteur atteignant 15 m, ainsi que des galeries secondaires, des éboulis et une chatière terminale. Idéale pour les grandes familles.", price: 350, address: "grotte, 5680 Doische", user: Souris_Volante)

puts "seed termination"
