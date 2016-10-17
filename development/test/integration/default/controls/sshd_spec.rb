control 'sshd' do
  title 'SSHd controls'
  desc "
    Checks that the host's SSH daemon is correctly configured.
  "
  tag 'sshd', 'ubuntu'

  describe service('sshd') do
    it { should be_enabled }
    it { should be_running }
  end

  describe sshd_config do
     its('Protocol') { should eq '2'}
     its('Port') { should eq('22') }
  end
end
