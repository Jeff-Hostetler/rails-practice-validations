require 'rails_helper'

describe Organization do

  it "tries to validate presence of first_name, last_name, dob" do
    organization = Organization.new
    organization.valid?
    expect(organization.errors[:name].present?).to eq(true)
  end

  it "validate presence of first_name, last_name, dob" do
    organization = Organization.new(name: "This")
    organization.valid?
    expect(organization.errors[:name].present?).to eq(false)
  end

  it "tries to validate uniqueness" do
    organization = Organization.create!(name: "test")
    organization = Organization.new(name: "test")
    organization.valid?
    expect(organization.errors[:name].present?).to eq(true)
  end

  it "validates uniqueness" do
    organization = Organization.create!(name: "test")
    organization = Organization.new(name: "test2")
    organization.valid?
    expect(organization.errors[:name].present?).to eq(false)
  end

end


nam
