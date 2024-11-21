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
Papa_Ours = User.create!(email: "la-tanière@oursmail.fr", password: "azerty")
Poisson_pas_drôle = User.create!(email: "poisson@je-suis-pas-un-clown.fr", password: "azerty")

Offer.create!(title: "Chenil Bellevue chaleureux et convivial", description: "Pour une immersion canine totale, vous aurez accès à des boxes individuels adaptés au gabarit et aux besoins de chaque convive, chauffés selon la saison. Les boxes sont construits en dur avec une toiture en tuiles et une isolation des murs, garantissant un abri sec et protégé des intempéries. Le logement est accompagné d'une baignoire pour tous et d'un parc boueux pour se dépenser.", price: 200, address: "Le chenil Bellevue, Route des amis à 4 pattes, 38700 Saint-Bernard, France", user: Bernard_Caniche)
Offer.create!(title: "Porcherie de luxe Eric Caillard", description: "Ce site exceptionnel, appelé « la Tessourière », «le lieu des cochons » en occitan, est une terre d’élevage de porcs depuis l’époque napoléonienne. La porcherie peut accueillir une quizaine de convives pour un retour aux sources garanti. Le foin et la boue sont mis à vore disposition.", price: 300, address: "Porcherie Eric Caillard, Trou pommé dans la creuse, 23160 La Rochette, France", user: Eric_Caillard)
Offer.create!(title: "La cabane du Castor Canadien", description: "La cabane est construite avec des branches de bois et de la terre. Cette hutte est composée d'une entrée et de deux chambres. L'accès s'y fait sous l'eau, mais la chambre principale est sous terre.", price: 250, address: "23 chemin de la rivière, 33600, Pessac", user: Pere_Castor)
Offer.create!(title: "La grotte de la Chauve-souris", description: "Cette grotte naturelle est située dans la vallée de la Joncquière, au sein du massif calcaire de la Montagne de la Carrière. Il s'agirait, selon certains spécialistes, d'un ancien exutoire. Elle comporte une galerie principale, développée sur une centaire de mètres de longueur pour une hauteur atteignant 15 m, ainsi que des galeries secondaires, des éboulis et une chatière terminale. Idéale pour les grandes familles. Prévoir des lampes frontales.", price: 350, address: "Chemin de la Combe Sombre, 3ème grotte sur la gauche, 5680 Doische, Belgique", user: Souris_Volante)
Offer.create!(title: "La tanière de Papa Ours", description: "Séjournez dans une authentique tanière d'ours. Nichée au cœur de la forêt, cette retraite insolite vous plonge dans l’univers sauvage tout en vous offrant un refuge chaleureux et cosy. Parfaite pour les aventuriers en quête de déconnexion, cette tanière unique allie nature brute et sérénité, pour une escapade mémorable loin du quotidien. Osez vivre comme un ours... le confort en plus ! ", price: 400, address: "Sentier des Forêts Sauvages, Parc National de Yellowstone, MT 59030, États-Unis", user: Papa_Ours)
Offer.create!(title: "Anémone du poisson pas drôle", description: "Salut. Moi, c'est le poisson-clown, et oui, je loue mon anémone. Mais avant tout, un rappel : je suis un poisson-clown, pas un bouffon. Mon anémone est un habitat premium, avec ses tentacules protecteurs et un confort naturel inégalé. Vous cherchez une planque dans les récifs ? Vous y êtes. Les soirées et autres festivités en tout genre ne sont pas accéptées.", price: 220, address: "Récif Corallien Émeraude, Grande Barrière de Corail, Queensland 4805, Australie", user: Poisson_pas_drôle)

puts "seed termination"
