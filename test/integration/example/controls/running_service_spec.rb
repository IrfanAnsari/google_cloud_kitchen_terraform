# frozen_string_literal: true

control "running_service" do
  describe "the cron service" do
    subject do service "cron" end

    it "is running" do is_expected.to be_running end
  end
end