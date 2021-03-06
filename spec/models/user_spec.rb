require 'rails_helper'

describe User, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:name) }
    it { should have_many(:reviews) }
  end
end
