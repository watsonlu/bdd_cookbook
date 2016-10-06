#Enable Administrator Welcome1234
user "Administrator" do
  password ['bdd_cookbook']["user"]["password"]
end
