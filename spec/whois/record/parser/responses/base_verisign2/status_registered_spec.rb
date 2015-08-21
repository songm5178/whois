# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/base_verisign2/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/base_verisign2.rb'

describe Whois::Record::Parser::BaseVerisign2, "status_registered.expected" do

  subject do
    file = fixture("responses", "base_verisign2/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      expect(subject.domain).to eq("stackoverflow.com")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("108907621_DOMAIN_COM-VRSN ")
    end
  end
  describe "#status" do
    it do
      expect(subject.status).to eq(:registered)
    end
  end
  describe "#available?" do
    it do
      expect(subject.available?).to eq(false)
    end
  end
  describe "#registered?" do
    it do
      expect(subject.registered?).to eq(true)
    end
  end
  describe "#created_on" do
    it do
      expect(subject.created_on).to eq(Time.parse("2003-12-26T19:18:07-07:00Z"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to eq(Time.parse("2014-05-09T17:51:17-06:00Z"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Record::Registrar)
      expect(subject.registrar.id).to eq("625")
      expect(subject.registrar.name).to eq("Name.com, Inc.")
      expect(subject.registrar.url).to eq("http://www.name.com")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Record::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("")
      expect(subject.registrant_contacts[0].name).to eq("Sysadmin Team")
      expect(subject.registrant_contacts[0].organization).to eq("Stack Exchange, Inc.")
      expect(subject.registrant_contacts[0].address).to eq("1 Exchange Plaza , Floor 26")
      expect(subject.registrant_contacts[0].city).to eq("New York")
      expect(subject.registrant_contacts[0].zip).to eq("10006")
      expect(subject.registrant_contacts[0].state).to eq("NY")
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("US")
      expect(subject.registrant_contacts[0].phone).to eq("+1.2122328280")
      expect(subject.registrant_contacts[0].fax).to eq("")
      expect(subject.registrant_contacts[0].email).to eq("sysadmin-team@stackoverflow.com")
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Record::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("")
      expect(subject.admin_contacts[0].name).to eq("Sysadmin Team")
      expect(subject.admin_contacts[0].organization).to eq("Stack Exchange, Inc.")
      expect(subject.admin_contacts[0].address).to eq("1 Exchange Plaza , Floor 26")
      expect(subject.admin_contacts[0].city).to eq("New York")
      expect(subject.admin_contacts[0].zip).to eq("10006")
      expect(subject.admin_contacts[0].state).to eq("NY")
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("US")
      expect(subject.admin_contacts[0].phone).to eq("+1.2122328280")
      expect(subject.admin_contacts[0].fax).to eq("")
      expect(subject.admin_contacts[0].email).to eq("sysadmin-team@stackoverflow.com")
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Record::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Record::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("")
      expect(subject.technical_contacts[0].name).to eq("Sysadmin Team")
      expect(subject.technical_contacts[0].organization).to eq("Stack Exchange, Inc.")
      expect(subject.technical_contacts[0].address).to eq("1 Exchange Plaza , Floor 26")
      expect(subject.technical_contacts[0].city).to eq("New York")
      expect(subject.technical_contacts[0].zip).to eq("10006")
      expect(subject.technical_contacts[0].state).to eq("NY")
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("US")
      expect(subject.technical_contacts[0].phone).to eq("+1.2122328280")
      expect(subject.technical_contacts[0].fax).to eq("")
      expect(subject.technical_contacts[0].email).to eq("sysadmin-team@stackoverflow.com")
    end
  end
end
