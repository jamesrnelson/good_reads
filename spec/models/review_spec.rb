require 'rails_helper'

describe Review, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:body) }
    it { should validate_presence_of(:rating) }
    it { should belong_to(:user) }
    it { should belong_to(:book) }
  end
end
