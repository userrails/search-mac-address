require "search_mac_address/version"
require 'search_mac_address/addr_mac'
require "base64"

module SearchMacAddress
  class Filter
    def self.all_addr
      SearchMacAddress::AddrMac.get_physical_address
    end

    def self.mac_addr
      addresses = all_addr
      if addresses
        return addresses.first 
      else
        nil
      end
    end

    def self.encode
      rec = mac_addr
      if rec
        Base64.urlsafe_encode64(rec)
      else
        ''
      end
    end

    def self.decode(addr)
      rec = addr
      if rec
        Base64.urlsafe_decode64(rec)
      else
        ''
      end
    end
  end
end
