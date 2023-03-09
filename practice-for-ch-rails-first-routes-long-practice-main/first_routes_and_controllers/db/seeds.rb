# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
ArtworkShare.destroy_all
Artwork.destroy_all

User.create!(username: 'Olivia')
User.create!(username: 'Emma')
User.create!(username: 'Amelia')
User.create!(username: 'Ava')
User.create!(username: 'Sophia')
User.create!(username: 'Liam')
User.create!(username: 'Noah')
User.create!(username: 'Elijah')
User.create!(username: 'Lucas')
User.create!(username: 'Levi')

Artwork.create!(title: 'Mona Lisa', image_url: 'url1.com', artist_id: 5)
Artwork.create!(title: 'The Last Supper', image_url: 'url2.com', artist_id: 5)
Artwork.create!(title: 'The Starry Night', image_url: 'url3.com', artist_id: 1)
Artwork.create!(title: 'The Scream', image_url: 'url4.com', artist_id: 3)
Artwork.create!(title: 'Girl With a Pearl Earring', image_url: 'url5.com', artist_id: 1)
Artwork.create!(title: 'The Birth of Venus', image_url: 'url6.com', artist_id: 2)
Artwork.create!(title: 'Saturn Devouring His Son', image_url: 'url7.com', artist_id: 5)
Artwork.create!(title: 'Sisyphus', image_url: 'url8.com',artist_id: 5)


ArtworkShare.create!(artwork_id: 8, viewer_id: 1)
ArtworkShare.create!(artwork_id: 1, viewer_id: 1)
ArtworkShare.create!(artwork_id: 3, viewer_id: 1)
ArtworkShare.create!(artwork_id: 5, viewer_id: 1)
ArtworkShare.create!(artwork_id: 8, viewer_id: 2)
ArtworkShare.create!(artwork_id: 5, viewer_id: 2)
ArtworkShare.create!(artwork_id: 4, viewer_id: 2)
ArtworkShare.create!(artwork_id: 8, viewer_id: 4)
ArtworkShare.create!(artwork_id: 4, viewer_id: 4)
ArtworkShare.create!(artwork_id: 1, viewer_id: 3)
ArtworkShare.create!(artwork_id: 8, viewer_id: 5)
ArtworkShare.create!(artwork_id: 2, viewer_id: 5)
ArtworkShare.create!(artwork_id: 6, viewer_id: 4)
ArtworkShare.create!(artwork_id: 7, viewer_id: 6)
ArtworkShare.create!(artwork_id: 6, viewer_id: 7)
ArtworkShare.create!(artwork_id: 7, viewer_id: 8)
ArtworkShare.create!(artwork_id: 7, viewer_id: 9)
ArtworkShare.create!(artwork_id: 8, viewer_id: 9)
ArtworkShare.create!(artwork_id: 8, viewer_id: 10)


Comment.create!(author_id: 3, artwork_id: 2, body: "Nice painting!")
Comment.create!(author_id: 2, artwork_id: 4, body: "I hate this drawing!")
Comment.create!(author_id: 4, artwork_id: 1, body: "Fantastic")
Comment.create!(author_id: 2, artwork_id: 3, body: "Cooooooool")
Comment.create!(author_id: 5, artwork_id: 3, body: "Awesome")
Comment.create!(author_id: 1, artwork_id: 1, body: "BRAVO!!!!")
Comment.create!(author_id: 1, artwork_id: 2, body: "Like it!")
Comment.create!(author_id: 6, artwork_id: 5, body: "Great job")


Like.create!(liker_id:1, likeable_type: 'Artwork', likeable_id: 6)
Like.create!(liker_id:3, likeable_type: 'Artwork', likeable_id: 4)
Like.create!(liker_id:4, likeable_type: 'Comment', likeable_id: 2)
Like.create!(liker_id:3, likeable_type: 'Artwork', likeable_id: 1)
Like.create!(liker_id:6, likeable_type: 'Comment', likeable_id: 3)
Like.create!(liker_id:6, likeable_type: 'Artwork', likeable_id: 7)
Like.create!(liker_id:7, likeable_type: 'Comment', likeable_id: 3)
Like.create!(liker_id:2, likeable_type: 'Comment', likeable_id: 5)
Like.create!(liker_id:8, likeable_type: 'Comment', likeable_id: 3)



