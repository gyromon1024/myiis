powershell_script 'Install IIS' do
  code 'Add-WindowsFeature Web-Server'
end

file 'C:\inetpub\wwwroot\Default.htm' do
  content '<h1>Hello, world!</h1></b><h2>Welcome to my website</h2>'
end

windows_service 'w3svc' do
  action [:enable, :start]
end
