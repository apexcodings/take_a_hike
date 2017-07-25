class Seed

  def self.begin
    Hike.destroy_all
    User.destroy_all
    seed = Seed.new
    seed.generate_hikes
    seed.generate_users
  end

  def generate_hikes
    @hike1 = Hike.create!(
      name: 'Rattlesnake Ledge',
      length: 6.6,
      elevation: 2240,
      difficulty: 'Moderate',
      description: 'Rattlesnake Ledge Trail  is a 6.6 mile heavily trafficked out and back trail located near North Bend, Washington that features a lake and is rated as moderate.'
    )
    @hike2 = Hike.create!(
      name: 'Rachel Lake',
      length: 8.9,
      elevation: 2883,
      difficulty: 'Hard',
      description: 'Rachel and Rampart Lakes Trail is a 8.9 mile moderately trafficked out and back trail located near Cle Elum, Washington that features a lake and is rated as difficult.'
    )
    @hike3 = Hike.create!(
      name: 'Mount Storm King',
      length: 3.8,
      elevation: 2112,
      difficulty: 'Hard',
      description: 'Mount Storm King is a 3.8 mile heavily trafficked out and back trail located near Port Angeles, Washington that features a lake and is only recommended for very experienced adventurers.'
    )
    @hike4 = Hike.create!(
      name: 'Maple Pass',
      length: 6.7,
      elevation: 2276,
      difficulty: 'Moderate',
      description: 'Maple Pass Trail is a 6.7 mile moderately trafficked loop trail located near Mazama, Washington that features a lake and is rated as moderate.'
    )
    @hike5 = Hike.create!(
      name: 'Latourell Falls Loop',
      length: 2.1,
      elevation: 793,
      difficulty: 'Easy',
      description: 'Latourell Falls Loop Trail is a 2.1 mile moderately trafficked loop trail located near Corbett, Oregon that features a waterfall and is good for all skill levels.'
    )
  end

  def generate_users
    admin = User.create!(
      username: 'admin',
      email: 'admin@email.com',
      password: 'Asdfasdf1',
      password_confirmation: 'Asdfasdf1',
      admin: true
    )

    user1 = User.create!(
      username: 'user',
      email: 'user@email.com',
      password: 'Asdfasdf1',
      password_confirmation: 'Asdfasdf1'
    )
  end

end

Seed.begin
