require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'DB table' do
      it { is_expected.to have_db_column :id }
      it { is_expected.to have_db_column :email }
      it { is_expected.to have_db_column :encrypted_password }
    end

    describe "Factory" do
      it 'should have a valid factory' do
        expect(FactoryGirl.create(:user)).to be_valid
      end
    end

  describe 'Associations' do
    it { is_expected.to have_many :orders }
    it { is_expected.to have_many :dishes }
  end
end
