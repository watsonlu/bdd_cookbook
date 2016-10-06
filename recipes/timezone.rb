powershell_script 'set timezone' do
  code <<-EOH
  tzutil /s #{node['bdd_cookbook']["timezone"]}
  EOH
end
