require 'spec_helper'

RSpec.describe Bloom::Repo do
  let(:test_path) { File.join(Dir.tmpdir, "test_repo_#{Time.now.to_i}") }
  let(:repo) { described_class.new(test_path) }

  after(:each) do
    FileUtils.rm_rf(test_path) if Dir.exist?(test_path)
  end

  describe '#init' do
    it 'creates a new repository' do
      repo.init
      expect(Dir.exist?(File.join(test_path, '.bloom'))).to be true
    end

    it 'creates required directories' do
      repo.init
      %w[objects refs/heads refs/tags hooks].each do |dir|
        expect(Dir.exist?(File.join(test_path, '.bloom', dir))).to be true
      end
    end
  end

  describe '#create_commit' do
    before do
      repo.init
    end

    it 'creates a commit object' do
      File.write(File.join(test_path, 'test.txt'), 'test content')
      repo.index.add('test.txt')
      commit = repo.create_commit('Test commit')
      expect(commit.message).to eq('Test commit')
    end
  end
end