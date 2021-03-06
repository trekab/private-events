require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:event) { Event.new(title: 'Birthday', description: 'Description', date: '2020-03-06', venue: 'Home') }

  context 'it has name, description, date and venue' do
    it 'has to have a title' do
      expect(event.title).to eq('Birthday')
    end

    it 'it has to have a description' do
      expect(event.description).to eq('Description')
    end

    it 'it has to have a date' do
      expect(event.date).to eq('2020-03-06')
    end

    it 'it has to have a venue' do
      expect(event.venue).to eq('Home')
    end
  end

  context 'it has to return an error for missing fields' do
    it 'returns an error for missing name' do
      event.title = nil
      expect(event.save).to eq(false)
    end

    it 'returns an error for missing description' do
      event.description = nil
      expect(event.save).to eq(false)
    end

    it 'returns an error for missing date' do
      event.date = nil
      expect(event.save).to eq(false)
    end

    it 'returns an error for missing venue' do
      event.venue = nil
      expect(event.save).to eq(false)
    end
  end
end
