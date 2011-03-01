# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/whois/answer/parser/responses/whois.nic.it/status_available_spec.rb
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/answer/parser/whois.nic.it'

describe Whois::Answer::Parser::WhoisNicIt, "status_available.expected" do

  before(:each) do
    file = fixture("responses", "whois.nic.it/status_available.txt")
    part = Whois::Answer::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  context "#disclaimer" do
    it do
      @parser.disclaimer.should == nil
    end
  end
  context "#domain" do
    it do
      @parser.domain.should == "google.it"
    end
  end
  context "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#referral_url" do
    it do
      lambda { @parser.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#referral_whois" do
    it do
      lambda { @parser.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  context "#status" do
    it do
      @parser.status.should == :available
    end
  end
  context "#available?" do
    it do
      @parser.available?.should == true
    end
  end
  context "#registered?" do
    it do
      @parser.registered?.should == false
    end
  end
  context "#created_on" do
    it do
      @parser.created_on.should == nil
    end
  end
  context "#updated_on" do
    it do
      @parser.updated_on.should == nil
    end
  end
  context "#expires_on" do
    it do
      @parser.expires_on.should == nil
    end
  end
  context "#registrar" do
    it do
      @parser.registrar.should == nil
    end
  end
  context "#registrant_contact" do
    it do
      @parser.registrant_contact.should == nil
    end
  end
  context "#admin_contact" do
    it do
      @parser.admin_contact.should == nil
    end
  end
  context "#technical_contact" do
    it do
      @parser.technical_contact.should == nil
    end
  end
  context "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
    end
    it do
      @parser.nameservers.should == []
    end
  end
end