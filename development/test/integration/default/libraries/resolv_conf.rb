class ResolvConf < Inspec.resource(1)
  name 'resolv_conf'

  desc '
    Check resolv.conf configuration.
  '

  example "
    describe resolv_conf do
      its('nameserver') { should eq('10.0.0.2') }
    end
  "

  def initialize
    @path = "/etc/resolv.conf"
    @file = inspec.file(@path)

    begin
      @params = Hash[*@file.content.split("\n")
                           .reject{ |l| l =~ /^#/ }
                           .collect { |v| [ v.chomp.split ] }
                      .flatten]
    rescue StandardError
      return skip_resource "#{@file}: #{$!}"
    end
  end

  def exists?
    @file.file?
  end

  def method_missing(name)
    @params[name.to_s]
  end
end
