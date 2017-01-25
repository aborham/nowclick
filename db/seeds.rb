# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Creating Roles ...'
# Role.find_or_create_by!(name: 'super_admin')
Role.find_or_create_by!(name: 'admin')
# Role.find_or_create_by!(name: 'brand_manager')

puts 'Creating Administrator ...'
unless User.find_by_email('admin@justclick.co')
  u = User.new
  u.name= 'admin'
  u.email= 'admin@justclick.co'
  u.password = '123456789'
  u.role = Role.find_by_name('admin')
  u.save!
end