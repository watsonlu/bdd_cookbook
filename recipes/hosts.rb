#Add APNS servers to hostfile

hostsfile_entry '17.172.238.216' do
  hostname  'apns1'
  action    :create_if_missing
end

hostsfile_entry '17.172.238.224' do
  hostname  'apns2'
  action    :create_if_missing
end
hostsfile_entry '17.172.238.226' do
  hostname  'apns3'
  action    :create_if_missing
end
