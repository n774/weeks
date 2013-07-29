# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# coding: utf-8
Employee.create(:code => 'L00A', :name => 'A')
Employee.create(:code => 'L00B', :name => 'B')
Employee.create(:code => 'LOOC', :name => 'C')

Week.create(:employee_id => 1, :reported_on => '2013-08-29', :report=> 'あ', :comment => 'RAい')
Week.create(:employee_id => 2, :reported_on => '2013-08-30', :report=> 'ああ', :comment => 'いい')
Week.create(:employee_id => 3, :reported_on => '2013-08-31', :report=> 'あああ', :comment => 'いいい')
