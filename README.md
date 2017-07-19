Run [shush](https://github.com/realestate-com-au/shush) in Docker

Build the shush image:

`$ docker-compose build`

Run shush command to encrypt a secret:

`$ docker-compose run shush encrypt alias/<kms-alias> "my-secret-key"`

Run shush command to decrypt a secret

`$ docker-compose run shush decrypt AQICAHjYiCDxBD5ymrwewq8fZa6QcYYRtiTZsp4IeOrZCC5JuAGP3WKLzBIWCnANhNOfASoFAAAAazBpBgkqhkiG9w0BBwagXDBaAgEAMFUGCSqGSIb3DQEHATAeBglghkgBZQMEAS4wEQQMsrJuKHX51GFkfs8MAgEQgCj/ZxOag/m4IyA0qjDcyy03OeU81kYFOP4eNPNh5v/UVp4ynOI3ViDc`
