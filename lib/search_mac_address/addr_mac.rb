require 'socket'

module SearchMacAddress
  class AddrMac
    class << self
      def get_physical_address
        res = by_socket
        if res.any?
          return res
        end

        rec = by_popen
        if rec.any?
          return rec
        end

        p "Rec not found"  
      end

      def by_socket
        addresses = []
        Socket.getifaddrs.each do |get_addr|
          next unless get_addr.addr.pfamily == Socket::PF_PACKET if Socket.const_defined?(:PF_PACKET)
          addr = get_addr.addr.inspect_sockaddr[/hwaddr=([\h:]+)/,1]
          addresses << addr if addr != "00:00:00:00:00:00"
        end
        return addresses
      end

      def by_popen
        regex = %r<(?:hwaddr|:)\s+((?:[0-9a-f]{1,2}[-:]){5}[0-9a-f]{1,2})\s*$>i
        res =
          begin
            IO.popen('ifconfig'){|fd| fd.readlines}
          rescue
            IO.popen('ipconfig /all'){|fd| fd.readlines}
          end
        addresses = res.map{|row| regex.match( row )[1] rescue nil }.compact
        return addresses
      end
    end
  end
end
