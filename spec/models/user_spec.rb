require 'rails_helper'

RSpec.describe User, type: :model do
    describe 'DB table' do
      it { is_expected.to have_db_column :id }
      it { is_expected.to have_db_column :email }
      it { is_expected.to have_db_column :encrypted_password }
      it { is_expected.to have_db_column :username }
      it { is_expected.to have_db_column :first_name }
      it { is_expected.to have_db_column :last_name }
      it { is_expected.to have_db_column :address }
      it { is_expected.to have_db_column :zip_code }
      it { is_expected.to have_db_column :city }
      it { is_expected.to have_db_column :phone }
      it { is_expected.to have_db_column :about_me }
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
