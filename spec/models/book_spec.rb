require 'rails_helper'

describe Book, type: :model do
  describe 'Validations' do
    it { should validate_presence_of(:title) }
  end
end
