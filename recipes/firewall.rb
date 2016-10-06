#Disable all firewall rules, then block APNS

#include_recipe 'netsh_firewall'
log "disabling firewall"
netsh_firewall_profile 'all' do
  action :disable
end

log "blocking APNS"

netsh_firewall_rule 'Disabling Port 2195' do
  #inbound :block
  #outbound :allow
  remoteport "2195"
  dir :out
  action :block
end
