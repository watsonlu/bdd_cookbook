node["bdd_cookbook"]["chocolatey"]["packages"].each do |package, package_version|
  log "#{package_version}"
  chocolatey_package package do
    source node["bdd_cookbook"]["chocolatey"]["source"]
    version "#{package_version}"
  end
end
