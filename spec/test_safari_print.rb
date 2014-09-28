require 'minitest/autorun'
require 'safari/print.rb'

describe 'Safari::Print' do
	it "must respond print" do
		Safari::Print.must_respond_to('print')

		Safari::Print.print do
			hello = 'Hello, world!'
			erb = ERB.new('<%= hello %>')
			erb.result(binding)
		end
	end
end
