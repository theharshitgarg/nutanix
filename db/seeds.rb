# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'httparty'
require 'josn'
rs = HTTParty.get('https://nutanix.0x10.info/api/deals?type=json&query=list_deals')
rd = JSON.parse(rd)
rd['deals'].each do |i|
    Deal.create!(name: i['name'], actual_price: i['actual_price'], discount: i['discount'].split('%')[0].to_i, rating: i['rating'].to_float, provider: i['provider'], link: i['link'], image: i['image'])
end