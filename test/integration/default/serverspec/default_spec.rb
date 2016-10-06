require 'spec_helper'

describe 'bdd-cookbook::registry' do
  describe windows_registry_key('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Internet Explorer\\Main') do
    it { should exist }
    it { should have_property('DisableFirstRunCustomize', :type_dword) }
    it { should have_property_value('DisableFirstRunCustomize', :type_dword, '2') }
  end
  describe windows_registry_key('HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced') do
    it { should exist }
    it { should have_property('Hidden', :type_dword) }
    it { should have_property_value('Hidden', :type_dword, '1') }
  end
  describe windows_registry_key('HKEY_CURRENT_USER\\Software\\Microsoft\\Windows\\CurrentVersion\\Explorer\\Advanced') do
    it { should exist }
    it { should have_property('HideFileExt', :type_dword) }
    it { should have_property_value('HideFileExt', :type_dword, '1') }
  end
  describe windows_registry_key('HKEY_LOCAL_MACHINE\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\WSMAN\\') do
    it { should exist }
    it { should have_property('auth_credssp', :type_dword) }
    it { should have_property_value('auth_credssp', :type_dword, '1') }
  end
end
