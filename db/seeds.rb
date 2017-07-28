class Seed

  def self.begin
    seed = Seed.new
    seed.clear_database
    seed.generate_hikes
    seed.generate_users
    seed.generate_reviews
  end

  def clear_database
    Hike.destroy_all
    User.destroy_all
    Account.destroy_all
    Review.destroy_all
  end

  def generate_hikes
    @hike1 = Hike.create!(
      name: 'Rattlesnake Ledge',
      length: 6.6,
      elevation: 2240,
      difficulty: 'Moderate',
      description: 'Rattlesnake Ledge Trail  is a 6.6 mile heavily trafficked out and back trail located near North Bend, Washington that features a lake and is rated as moderate.',
      image: open('public/images/rattlesnake_ledge.jpg')
    )
    @hike2 = Hike.create!(
      name: 'Rachel Lake',
      length: 8.9,
      elevation: 2883,
      difficulty: 'Hard',
      description: 'Rachel and Rampart Lakes Trail is a 8.9 mile moderately trafficked out and back trail located near Cle Elum, Washington that features a lake and is rated as difficult.',
      image: open('public/images/rachel_lake.jpg')
    )
    @hike3 = Hike.create!(
      name: 'Mount Storm King',
      length: 3.8,
      elevation: 2112,
      difficulty: 'Hard',
      description: 'Mount Storm King is a 3.8 mile heavily trafficked out and back trail located near Port Angeles, Washington that features a lake and is only recommended for very experienced adventurers.',
      image: open('public/images/mount_storm_king.jpg')
    )
    @hike4 = Hike.create!(
      name: 'Maple Pass',
      length: 6.7,
      elevation: 2276,
      difficulty: 'Moderate',
      description: 'Maple Pass Trail is a 6.7 mile moderately trafficked loop trail located near Mazama, Washington that features a lake and is rated as moderate.',
      image: open('public/images/maple_pass.jpg')
    )
    @hike5 = Hike.create!(
      name: 'Latourell Falls Loop',
      length: 2.1,
      elevation: 793,
      difficulty: 'Easy',
      description: 'Latourell Falls Loop Trail is a 2.1 mile moderately trafficked loop trail located near Corbett, Oregon that features a waterfall and is good for all skill levels.',
      image: open('public/images/latourell_falls.jpg')
    )
  end

  def generate_users
    @admin = User.create!(
      username: 'admin',
      email: 'admin@email.com',
      password: 'Asdfasdf1',
      password_confirmation: 'Asdfasdf1',
      admin: true
    )
    @user = User.create!(
      username: 'user',
      email: 'user@email.com',
      password: 'Asdfasdf1',
      password_confirmation: 'Asdfasdf1'
    )
    3.times do
      User.create!(
        username: Faker::Internet.user_name,
        email: Faker::Internet.free_email,
        password: 'Asdfasdf1',
        password_confirmation: 'Asdfasdf1'
      )
    end
  end

  def generate_reviews
    Hike.all.each do |hike|
      User.all.each do |user|
        hike.reviews.create!(
          account_id: user.account.id,
          author: user.username,
          content: Faker::Lorem.paragraph,
          rating: rand(1..5)
        )
      end
    end
  end

end

Seed.begin
