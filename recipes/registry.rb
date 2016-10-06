#disables the first run dialog for IE. This means we don't have to add the
#-usebasicparsing switch to every web request call
registry_key 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Internet Explorer\\Main\\' do
  values [{
    :name => 'DisableFirstRunCustomize',
    :type => :dword,
    :data => 2
  }]
  action :create
end


#Show hidden files in explorer
registry_key 'HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced' do
  values [{
    :name => 'Hidden',
    :type => :dword,
    :data => 1
  }]
  action :create
end

#Show file extensions
registry_key 'HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced' do
  values [{
    :name => 'HideFileExt',
    :type => :dword,
    :data => 1
  }]
  action :create
end

#EnableWinSSPCreds
registry_key 'HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\WSMAN\\' do
  values [{
    :name => 'auth_credssp',
    :type => :dword,
    :data => 1
  }]
  action :create
end
