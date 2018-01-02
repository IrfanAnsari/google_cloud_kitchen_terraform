# frozen_string_literal: true

project_id = attribute "project_id", {}
instance_id = attribute "instance_id", {}

test_subnetwork_project = attribute "test_subnetwork_project", {}

control "project_created" do

  describe "project_id" do
    its(project_id) {should include("kitchen-project")}
  end


  describe "instance_id" do
    its(instance_id) {should eq("tf-compute-1")}
  end

  describe "test_target_sub_project_network" do
    its(test_subnetwork_project) {should include ("kitchen-project")}
  end


end