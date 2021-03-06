# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.corporatedomains.com/com/status_registered_with_hyphen_date_format.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/parsers/whois.corporatedomains.com.rb'

describe Whois::Parsers::WhoisCorporatedomainsCom, "status_registered_with_hyphen_date_format.expected" do

  subject do
    file = fixture("responses", "whois.corporatedomains.com/com/status_registered_with_hyphen_date_format.txt")
    part = Whois::Record::Part.new(body: File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      expect(subject.domain).to eq("corporatedomains.com")
    end
  end
  describe "#domain_id" do
    it do
      expect(subject.domain_id).to eq("2546326_DOMAIN_COM-VRSN")
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
      expect(subject.created_on).to be_a(Time)
      expect(subject.created_on).to eq(Time.parse("1997-10-16 04:00:00 +0000"))
    end
  end
  describe "#updated_on" do
    it do
      expect(subject.updated_on).to be_a(Time)
      expect(subject.updated_on).to eq(Time.parse("2018-10-11 05:49:21 +0000"))
    end
  end
  describe "#expires_on" do
    it do
      expect(subject.expires_on).to be_a(Time)
      expect(subject.expires_on).to eq(Time.parse("2019-10-15 04:00:00 +0000"))
    end
  end
  describe "#registrar" do
    it do
      expect(subject.registrar).to be_a(Whois::Parser::Registrar)
      expect(subject.registrar.id).to eq("299")
      expect(subject.registrar.name).to eq("CSC CORPORATE DOMAINS, INC.")
      expect(subject.registrar.organization).to eq("CSC CORPORATE DOMAINS, INC.")
      expect(subject.registrar.url).to eq("www.cscprotectsbrands.com")
    end
  end
  describe "#registrant_contacts" do
    it do
      expect(subject.registrant_contacts).to be_a(Array)
      expect(subject.registrant_contacts.size).to eq(1)
      expect(subject.registrant_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.registrant_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_REGISTRANT)
      expect(subject.registrant_contacts[0].name).to eq("Domain Administrator")
      expect(subject.registrant_contacts[0].organization).to eq("CSC Corporate Domains, Inc.")
      expect(subject.registrant_contacts[0].address).to eq("251 Little Falls Drive")
      expect(subject.registrant_contacts[0].city).to eq("Wilmington")
      expect(subject.registrant_contacts[0].zip).to eq("19808")
      expect(subject.registrant_contacts[0].state).to eq("DE")
      expect(subject.registrant_contacts[0].country_code).to eq("US")
      expect(subject.registrant_contacts[0].phone).to eq("+1.3026365400")
      expect(subject.registrant_contacts[0].fax).to eq("+1.3026365454")
      expect(subject.registrant_contacts[0].email).to eq("admin@internationaladmin.com")
      expect(subject.registrant_contacts[0].created_on).to eq(nil)
      expect(subject.registrant_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#admin_contacts" do
    it do
      expect(subject.admin_contacts).to be_a(Array)
      expect(subject.admin_contacts.size).to eq(1)
      expect(subject.admin_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.admin_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_ADMINISTRATIVE)
      expect(subject.admin_contacts[0].name).to eq("Domain Administrator")
      expect(subject.admin_contacts[0].organization).to eq("CSC Corporate Domains, Inc.")
      expect(subject.admin_contacts[0].address).to eq("251 Little Falls Drive")
      expect(subject.admin_contacts[0].city).to eq("Wilmington")
      expect(subject.admin_contacts[0].zip).to eq("19808")
      expect(subject.admin_contacts[0].state).to eq("DE")
      expect(subject.admin_contacts[0].country_code).to eq("US")
      expect(subject.admin_contacts[0].phone).to eq("+1.3026365400")
      expect(subject.admin_contacts[0].fax).to eq("+1.3026365454")
      expect(subject.admin_contacts[0].email).to eq("admin@internationaladmin.com")
      expect(subject.admin_contacts[0].created_on).to eq(nil)
      expect(subject.admin_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#technical_contacts" do
    it do
      expect(subject.technical_contacts).to be_a(Array)
      expect(subject.technical_contacts.size).to eq(1)
      expect(subject.technical_contacts[0]).to be_a(Whois::Parser::Contact)
      expect(subject.technical_contacts[0].type).to eq(Whois::Parser::Contact::TYPE_TECHNICAL)
      expect(subject.technical_contacts[0].name).to eq("DNS Administrator")
      expect(subject.technical_contacts[0].organization).to eq("CSC Corporate Domains, Inc.")
      expect(subject.technical_contacts[0].address).to eq("251 Little Falls Drive")
      expect(subject.technical_contacts[0].city).to eq("Wilmington")
      expect(subject.technical_contacts[0].zip).to eq("19808")
      expect(subject.technical_contacts[0].state).to eq("DE")
      expect(subject.technical_contacts[0].country_code).to eq("US")
      expect(subject.technical_contacts[0].phone).to eq("+1.3026365400")
      expect(subject.technical_contacts[0].fax).to eq("+1.3026365454")
      expect(subject.technical_contacts[0].email).to eq("dns-admin@cscglobal.com")
      expect(subject.technical_contacts[0].created_on).to eq(nil)
      expect(subject.technical_contacts[0].updated_on).to eq(nil)
    end
  end
  describe "#nameservers" do
    it do
      expect(subject.nameservers).to be_a(Array)
      expect(subject.nameservers.size).to eq(2)
      expect(subject.nameservers[0]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[0].name).to eq("pdns1.cscdns.net")
      expect(subject.nameservers[0].ipv4).to eq(nil)
      expect(subject.nameservers[0].ipv6).to eq(nil)
      expect(subject.nameservers[1]).to be_a(Whois::Parser::Nameserver)
      expect(subject.nameservers[1].name).to eq("pdns2.cscdns.net")
      expect(subject.nameservers[1].ipv4).to eq(nil)
      expect(subject.nameservers[1].ipv6).to eq(nil)
    end
  end
end
