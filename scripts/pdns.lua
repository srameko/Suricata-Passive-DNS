filename = "pdns.log"

function init (args)
   local needs = {}
   needs["protocol"] = "dns"
   return needs
end

function setup (args)
   SCLogNotice("lua: setup()")
   file = assert(io.open(SCLogPath() .. "/" .. filename, "w"))
end

function log(args)
   ts = SCPacketTimeString()
   ip_ver, src_ip, dst_ip, proto, sp, dp = SCFlowTuple()
   tx_id = DnsGetTxid()

   answers = DnsGetAnswers()
   if answers ~= nil then
      for n, t in pairs(answers) do
	 msg = string.format(
	    "%s %s %s %s",
	    ts,
	    t["type"],
	    t["rrname"],
	    t["addr"]);
	 write(msg)
      end
   end
end

function deinit(args)
   file:close(file)
end

function write(msg)
   file:write(msg .. "\n")
end
