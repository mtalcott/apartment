require 'spec_helper'

describe Apartment::Elevators::FirstSubdomain do
  describe "subdomain" do
    subject { described_class.new("test").parse_database_name(request) }
    let(:request) { double(:request, :host => "#{subdomain}.example.com") }

    context "one subdomain" do
      let(:subdomain) { "test" }
      it { should == "test" }
    end

    context "nested subdomains" do
      let(:subdomain) { "test1.test2" }
      it { should == "test1" }
    end
  end
end