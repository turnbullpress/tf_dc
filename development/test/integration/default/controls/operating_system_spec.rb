control 'operating_system' do
  title 'Operating system controls'
  desc '
    Checks that the host operating system is correctly
    configured.
  '
  tag 'operating_system', 'ubuntu'

  describe command('lsb_release -a') do
    its('stdout') { should match (/Ubuntu 16.04/) }
  end

  services = [ 'cron', 'rsyslog' ]

  services.each do |service|
    describe service(service) do
      it { should be_enabled }
      it { should be_running }
    end
  end
end
