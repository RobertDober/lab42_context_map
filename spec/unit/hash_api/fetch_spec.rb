require 'spec_helper'

describe ContextMap do 

  let( :cm ){ 
    described_class.new \
      a: 1, b: 2
  }
  
  context 'fetch' do 
    it 'fetches a value' do
      expect( cm.fetch :a ).to eq 1
    end
    it 'or not' do
      expect( cm.fetch :c, 3 ).to eq 3
    end
    it 'or even less' do
      expect( cm.fetch( :d ){ 4 } ).to eq 4
    end
    it 'or not at all' do
      expect{ cm.fetch :e }.to raise_error KeyError
    end
  end # context 'fetch'
  
end # describe ContextMap
