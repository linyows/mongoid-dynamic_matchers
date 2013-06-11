require 'helper'

describe Mongoid::DynamicMatchers do
  before :all do
    class User
      include Mongoid::Document
      field :first_name, type: String
      field :last_name, type: String
      field :nick, type: String
    end
  end

  describe '.respond_to?' do
    it { expect(User.method(:respond_to?).source_location.to_s).to match(/dynamic_matchers/) }
    it { expect(User.respond_to? :find_by_nick).to be_true }
    it { expect(User.respond_to? :find_by_first_name_and_last_name).to be_true }
    it { expect(User.respond_to? :find_by_username).to be_false }
  end

  describe '.find_by_name' do
    context 'when findable data exists' do
      before do
        @user = User.create(first_name: 'Thomas', last_name: 'Anderson', nick: 'Neo')
      end

      it { expect(User.find_by_nick 'Neo').to be_instance_of User }
      it { expect(User.find_by_nick 'Neo').to eq @user }
      it { expect(User.find_by_first_name_and_last_name('Thomas', 'Anderson')).to eq @user }
      it { expect { User.find_by_unknown('value') }.to raise_error NoMethodError }
    end

    context 'when findable data not exists' do
      it { expect(User.find_by_nick 'Neo').to be_nil }
    end
  end
end
