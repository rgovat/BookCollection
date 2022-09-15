# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter', author: 'JK Rowling', price: 20, publishedDate: '2022-09-13')
  end

  it 'is valid with valid attributes (Title)' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name (Title)' do
    subject.title = nil
    expect(subject).not_to be_valid
  end
end


RSpec.describe Book, type: :model do
    subject do
      described_class.new(title: 'harry potter', author: 'JK Rowling', price: 20, publishedDate: '2022-09-13')
    end
  
    it 'is valid with valid attributes (Author)' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a name (Author)' do
      subject.author = nil
      expect(subject).not_to be_valid
    end
  end


  RSpec.describe Book, type: :model do
    subject do
      described_class.new(title: 'harry potter', author: 'JK Rowling', price: 20, publishedDate: '2022-09-13')
    end
  
    it 'is valid with valid attributes (Price)' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a name (Price)' do
      subject.price = nil
      expect(subject).not_to be_valid
    end
  end



  RSpec.describe Book, type: :model do
    subject do
      described_class.new(title: 'harry potter', author: 'JK Rowling', price: 20, publishedDate: '2022-09-13')
    end
  
    it 'is valid with valid attributes (Published Date)' do
      expect(subject).to be_valid
    end
  
    it 'is not valid without a name (Published Date)' do
      subject.publishedDate = nil
      expect(subject).not_to be_valid
    end
  end