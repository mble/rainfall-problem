require_relative 'rainfall'
require 'rspec'

RSpec.describe 'rainfall' do
  subject { Rainfall.new }

  it '#calculate works' do
    expect(subject.calculate([2, 1, 2])).to eq 1
    expect(subject.calculate([5, 0, 5])).to eq 5
    expect(subject.calculate([1, 5])).to eq 0
    expect(subject.calculate([5, 1])).to eq 0
    expect(subject.calculate([2, 5, 1, 2, 3, 4, 7, 7, 6, 3, 5])).to eq 12
    expect(subject.calculate([2, 5, 1, 3, 1, 2, 1, 7, 7, 6])).to eq 17
    expect(subject.calculate([1, 0, 1])).to eq 1
    expect(subject.calculate([2, 5, 1, 2, 3, 4, 7, 7, 6])).to eq 10
  end
end
