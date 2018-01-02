# frozen_string_literal: true

project_id = attribute "project_id", {}

overridden_project_id = attribute "overridden_project_id", {}

control "project_id" do

  describe "the `project_id` output" do

    subject do gcloud_instance.project_id end

    it "is mapped to the `project_id` attribute" do overridden_project_id.to eq project_id end
  end
end