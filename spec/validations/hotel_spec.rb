require 'rails_helper'

RSpec.describe Hotel, type: :model do
  subject do
    @user = User.create(name: 'Test User', email: 'tuser@example.com', password: 'password')
    @hotel = Hotel.create(name: 'Hotel name', description: 'tuser@example.com',
                          cost: 3.2, address: 'this is address field',
                          image: ['image1.png', 'image2.png', 'image3.png'], user_id: @user.id)
  end

  before { subject.save }

  it 'try to test user creation validations' do
    expect(subject).to be_valid
  end
  it 'is not valid without a name' do
    @hotel.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid with a name that is less than 3' do
    @hotel.name = 'He'
    expect(subject).to_not be_valid
  end

  it 'is not valid without an cost' do
    @hotel.cost = nil
    expect(subject).to_not be_valid
  end
  it 'Cost must be float' do
    @hotel.cost = 'dsggs'
    expect(subject).to_not be_valid
  end
  it 'Cost must be greater than 0' do
    @hotel.cost = 0
    expect(subject).to_not be_valid
  end

  it 'Try to push some images in the array' do
    @hotel.image << 'image3.pong'
    expect(subject).to be_valid
  end
end
