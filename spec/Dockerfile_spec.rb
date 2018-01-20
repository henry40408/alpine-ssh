require "serverspec"
require "docker-api"

describe "Dockerfile" do
  before(:all) do
    image = Docker::Image.build_from_dir(".")

    set :backend, :docker
    set :docker_image, image.id
  end

  describe command("apk info") do
    its(:stdout) { should match %{^openssh-client$} }
    its(:stdout) { should match %{^openssh-server$} }
    its(:stdout) { should match %{^python3$} }
  end

  %w(
    /etc/ssh/ssh_host_dsa_key
    /etc/ssh/ssh_host_ed25519_key
    /etc/ssh/ssh_host_ecdsa_key
    /etc/ssh/ssh_host_rsa_key
  ).each do |f|
    describe file(f) do
      it { should be_file }
    end
  end

  describe file("/etc/ssh/sshd_config") do
    its(:content) { should match /^PermitRootLogin\s+yes$/ }
  end
end