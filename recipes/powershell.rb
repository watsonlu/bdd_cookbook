#installed seperately as it needs a reset. Keeping it in its own recipe prevents packer from stopping
chocolatey_package "powershell" do
  source node['bdd_cookbook']["chocolatey"]["source"]
  version node['bdd_cookbook']["chocolatey"]["powershell"]["version"]
  ignore_failure true
end

#Cancel the reboot so it dosen't break packer
reboot 'cancel_reboot_request' do
  action :cancel
  reason 'Cancel a previous end-of-run reboot request.'
end
