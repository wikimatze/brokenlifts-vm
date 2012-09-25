require 'spec_helper'

describe 'git::install' do

  context 'install git-core' do
    it { should contain_package('git-core')
         .with_ensure('installed')
    }
  end

  context 'clone the brokenlifts-vm' do
    it do should contain_exec('git-clone-brokenlifts-code').with(
      'cwd' => '/vagrant',
      'command' => '/usr/bin/git clone https://github.com/sozialhelden/brokenlift.git',
      'creates' => '/vagrant/brokenlift',
      'require' => 'Package[git-core]'
    ) end

  end

end
