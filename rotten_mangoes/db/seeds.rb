# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(
  email: "lachlanrm@gmail.com",
  firstname: "Lachlan",
  lastname: "MacKenzie",
  password: "123456",
  admin: true
)

User.create!(
  email: "bruce@bat.com",
  firstname: "Bruce",
  lastname: "Wayne",
  password: "batman",
  admin: false
)

User.create!(
  email: "green@arrow.com",
  firstname: "Oliver",
  lastname: "Qween",
  password: "123456",
  admin: false
)

Movie.create!(
  title: "Pixels"
  director: "Chris Columbus "
  runtime_in_minutes: 120
  description: "A home-theater installer (Adam Sandler) leads a team of old-school arcade champs (Peter Dinklage, Josh Gad) to defend the planet from aliens who are basing their attacks on 1980s-era video games."
  poster_image_url: "http://resizing.flixster.com/G6Ifsj_oMyuNGL8-EDUN98gxVmI=/179x251/dkpu1ddg7pbsk.cloudfront.net/movie/11/18/90/11189074_ori.jpg "
  release_date: 2015-04-03
  )

