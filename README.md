# go-gcp-storage

`gcpupload` an uber simple Go program to upload files to a GCP storage bucket with authentication.

Why use this? You may have a micro-service or container running under Kubernetes, and you need a quick and easy way to upload database snapshots or backups to a GCP bucket with authentication.

You want to avoid at all costs a dependency chain hell with a node app or python script, with their squillion dependencies and feature overkill - something simple, compiled, and does it's job without a fuss. `gcpupload` is for you, pal. 😁

## Usage

```
Usage of build/gcpupload:
  -authfile string
    	GCP auth file (JSON format)
  -bucket string
    	the bucket to upload content to
  -name string
    	the name of the file to be stored on GCS
  -project string
    	the ID of the GCP project to use
  -public
    	whether the item should be available publicly
  -source string
    	the path to the source
```

## Example

```
gcpupload --source /tmp/database.tgz.gpg --authfile /tmp/my-project-id.json --bucket my-bucket --project my-project
```

## Authentication

First visit the GCP console > IAM > Service Accounts to setup your permissions.

Create a new user specifically for the GCP storage bucket, with the relevant write/read permissions. Generate a new auth-file (JSON) formatted and specify this as an argument to `gcpupload --authfile /tmp/myfile.json`
