#
# Cookbook:: apache
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::configuration' do
  context 'When all attributes are default, on an CentOS 6.7' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.7')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'index file exists' do
      expect(chef_run).to render_file('/var/www/html/index.html').with_content("Welcome Home!")
    end
#    it { is_expected.to render_file('/var/www/html/index.html') }
  end
end