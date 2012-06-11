packages = Array.new

case node[:lsb][:codename]
when "lucid"
  include_recipe "libkeyutils"

  packages |= %w/
    libkrb5support
  /
when "precise"
  packages |= %w/
    libkrb5support
  /
end

packages.each do |pkg|
  package pkg do
    action [:install, :upgrade]
  end
end
