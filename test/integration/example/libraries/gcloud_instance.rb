# frozen_string_literal: true

# Resource representing an GCloud instance
class GCloudInstance < Inspec.resource 1
  name "gcloud_instance"

  def project_id
    inspec.command("curl http://metadata.google.internal/computeMetadata/v1/project/project-id -H 'Metadata-Flavor: Google'").stdout
  end

end