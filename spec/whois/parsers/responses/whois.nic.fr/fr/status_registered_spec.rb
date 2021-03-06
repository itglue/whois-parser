# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.nic.fr/fr/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.nic.fr.rb'

describe Whois::Parsers::WhoisNicFr, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.nic.fr/fr/status_registered.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
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
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("2004-05-20 11:28:40 UTC"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2018-04-08 03:52:04 UTC"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2019-05-07 07:43:45 UTC"))
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].id).to eq("U4339-FRNIC")
      expect(subject.registrant_contacts[0].name).to eq(nil)
      expect(subject.registrant_contacts[0].organization).to eq("1C2")
      expect(subject.registrant_contacts[0].address).to eq("20-22, rue Louis Armand\n75015 Paris")
      expect(subject.registrant_contacts[0].city).to eq(nil)
      expect(subject.registrant_contacts[0].zip).to eq(nil)
      expect(subject.registrant_contacts[0].state).to eq(nil)
      expect(subject.registrant_contacts[0].country).to eq(nil)
      expect(subject.registrant_contacts[0].country_code).to eq("FR")
      expect(subject.registrant_contacts[0].phone).to eq("+33 1 30 62 40 06")
      expect(subject.registrant_contacts[0].fax).to eq(nil)
      expect(subject.registrant_contacts[0].email).to eq("jmr@1c2.com")
      expect(subject.registrant_contacts[0].updated_on).to eq(Time.parse("2016-09-22 07:52:47 UTC"))
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].id).to eq("MO2494-FRNIC")
      expect(subject.admin_contacts[0].name).to eq("Magic Online")
      expect(subject.admin_contacts[0].organization).to eq("Magic Online")
      expect(subject.admin_contacts[0].address).to eq("130, avenue President Wilson\n93100 Montreuil\nParis")
      expect(subject.admin_contacts[0].city).to eq(nil)
      expect(subject.admin_contacts[0].zip).to eq(nil)
      expect(subject.admin_contacts[0].state).to eq(nil)
      expect(subject.admin_contacts[0].country).to eq(nil)
      expect(subject.admin_contacts[0].country_code).to eq("FR")
      expect(subject.admin_contacts[0].phone).to eq("+33 1 41 58 22 50")
      expect(subject.admin_contacts[0].fax).to eq("+33 1 56 72 93 30")
      expect(subject.admin_contacts[0].email).to eq("hostmaster@magic.fr")
      expect(subject.admin_contacts[0].updated_on).to eq(Time.parse("2014-03-31 16:13:52 UTC"))
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].id).to eq("MO2556-FRNIC")
      expect(subject.technical_contacts[0].name).to eq("Magic Online")
      expect(subject.technical_contacts[0].organization).to eq("Magic Online")
      expect(subject.technical_contacts[0].address).to eq("130-134, avenue du President Wilson\n93100 Montreuil\nFrance")
      expect(subject.technical_contacts[0].city).to eq(nil)
      expect(subject.technical_contacts[0].zip).to eq(nil)
      expect(subject.technical_contacts[0].state).to eq(nil)
      expect(subject.technical_contacts[0].country).to eq(nil)
      expect(subject.technical_contacts[0].country_code).to eq("FR")
      expect(subject.technical_contacts[0].phone).to eq("+33 1 41 58 22 50")
      expect(subject.technical_contacts[0].fax).to eq("+33 1 56 72 93 30")
      expect(subject.technical_contacts[0].email).to eq("production@magic.fr")
      expect(subject.technical_contacts[0].updated_on).to eq(Time.parse("2014-05-20 15:07:08 UTC"))
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(2)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("ns.magic.fr")
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("ns2.magic.fr")
    end
  end
end
