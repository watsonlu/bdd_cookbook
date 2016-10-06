#Enable Administrator
user "Administrator" do
  password ['bdd_cookbook']["user"]["password"]
end
