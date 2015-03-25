# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ruby encoding: utf-8

MemberType.create(name:'재학생',status:0)
MemberType.create(name:'졸업생',status:0)
MemberType.create(name:'교수',status:0)
MemberType.create(name:'기타',status:0)

