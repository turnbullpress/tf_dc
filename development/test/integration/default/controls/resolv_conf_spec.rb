control 'resolv.conf' do
  title 'Resolv.conf tests'
  desc '
   Tests the contents of the resolv.conf file.
  '
  tag 'resolv.conf', 'ubuntu'

  describe resolv_conf do
    its('nameserver') { should eq('10.0.0.2') }
  end
end
