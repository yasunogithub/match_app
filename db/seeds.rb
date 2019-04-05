# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Teacher.create!(name: "鈴木 一郎",
    age: 22,
    email: "suzuki@example.com",
    skype_id: "skype_suzuki",
    password: "password_suzuki",
    password_confirmation: "password_suzuki",
    university: "慶應大学",
    subject: "英語")

Teacher.create!(name: "古賀 涼",
    age: 23,
    email: "koga@example.com",
    skype_id: "skype_koga",
    password: "password_koga",
    password_confirmation: "password_koga",
    university: "早稲田大学",
    subject: "現代文")

Teacher.create!(name: "仲村 なつみ",
    age: 24,
    email: "nakamura@example.com",
    skype_id: "skype_nakamura",
    password: "password_nakamura",
    password_confirmation: "password_nakamura",
    university: "一橋大学",
    subject: "世界史")

Teacher.create!(name: "真鍋 竜也",
    age: 25,
    email: "manabe@example.com",
    skype_id: "skype_manabe",
    password: "password_manabe",
    password_confirmation: "password_manabe",
    university: "東京大学",
    subject: "数学",
    reference_book: "数学参考書",
    etc: "よろしくお願いします！")