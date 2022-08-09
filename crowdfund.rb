def project_listing (name, fund=0)
    "#{name.ljust(30, '.')} $#{fund} in funding."
end

puts project_listing("Project ABC", 1000)
puts project_listing("Project LMN", 500)
puts project_listing("Project XYZ", 25)
