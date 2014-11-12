require 'rails_helper'

describe Person do

  it "tries to validate presence of first_name, last_name, dob" do
    person = Person.new
    person.valid?
    expect(person.errors[:first_name].present?).to eq(true)
    expect(person.errors[:last_name].present?).to eq(true)
    expect(person.errors[:date_of_birth].present?).to eq(true)
  end
  it "validates presence of first_name, last_name, dob " do
    person = Person.new(first_name: "Jeff", last_name: "Hostetler", date_of_birth: "1/1/2001")
    person.valid?
    # expect(person.errors).to eq("")
    expect(person.errors[:first_name].present?).to eq(false)
    expect(person.errors[:last_name].present?).to eq(false)
    expect(person.errors[:date_of_birth].present?).to eq(false)
  end

  it "tries to validate uniqueness of the name" do
    Person.create!(first_name: "Jeff", last_name: "Hostetler", date_of_birth: "1/1/2001")

    person = Person.new(first_name: "Jeff", last_name: "Hostetler", date_of_birth: "1/1/2001")
    person.valid?
    expect(person.errors[:first_name].present?).to eq(true)
    expect(person.errors[:last_name].present?).to eq(true)
    expect(person.errors[:date_of_birth].present?).to eq(true)
  end

  it "tries to validate uniqueness of the name" do
    Person.create!(first_name: "Jeff", last_name: "Hostetler", date_of_birth: "1/1/2001")

    person = Person.new(first_name: "Jeffy", last_name: "Hostetleyr", date_of_birth: "1/10/2001")
    person.valid?
    expect(person.errors[:first_name].present?).to eq(false)
    expect(person.errors[:last_name].present?).to eq(false)
    expect(person.errors[:date_of_birth].present?).to eq(false)
  end


end
