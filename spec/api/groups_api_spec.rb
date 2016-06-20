=begin
Titan API

The ultimate, language agnostic, container based job processing framework.

OpenAPI spec version: 0.4.2

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end

require 'spec_helper'
require 'json'

# Unit tests for IronTitan::GroupsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'GroupsApi' do
  before do
    # run before each test
    @instance = IronTitan::GroupsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of GroupsApi' do
    it 'should create an instact of GroupsApi' do
      expect(@instance).to be_instance_of(IronTitan::GroupsApi)
    end
  end

  # unit tests for groups_get
  # Get all group names.
  # Get a list of all the groups in the system.
  # @param [Hash] opts the optional parameters
  # @return [GroupsWrapper]
  describe 'groups_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_get
  # Get information for a group.
  # This gives more details about a job group, such as statistics.
  # @param name name of the group.
  # @param [Hash] opts the optional parameters
  # @return [GroupWrapper]
  describe 'groups_name_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_name_put
  # Create/update a job group.
  # You can set group level settings here. 
  # @param body Group to post.
  # @param [Hash] opts the optional parameters
  # @return [GroupWrapper]
  describe 'groups_name_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for groups_post
  # Post new group
  # Insert a new job group
  # @param body Group to post.
  # @param [Hash] opts the optional parameters
  # @return [GroupWrapper]
  describe 'groups_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
