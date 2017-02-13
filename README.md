# Easy Sentry

Quickly set up [Sentry](https://github.com/getsentry/sentry) with docker-compose instead of a tedious multi step guide.

Based upon the original Docker guide found [here](https://hub.docker.com/_/sentry/).

![Sentry logo](https://raw.githubusercontent.com/docker-library/docs/831b07a52f9ff6577c915afc41af8158725829f4/sentry/logo.png)

## How this works

1. Create a directory called `sentry` somewhere and cd into it
1. Copy `docker-compose.yml.dist` to `docker-compose.yml` inside the created sentry folder
1. Run this command to generate a key: `# docker run --rm sentry config generate-secret-key`
1. Replace `__SSK__` in docker-compose.yml with the key you just generated
1. This can also be done with sed:  `$ sed -i 's/__SSK__/KEY/g' docker-compose.yml `
1. Run this command to create a password `$ echo $(< /dev/urandom tr -dc _A-Z-a-z-0-9 | head -c32)`
1. Replace `__DBPW__` in docker-compose.yml with the password you just generated
1. This can also be done with sed: `$ sed -i 's/__DBPW__/PASSWORD/g' docker-compose.yml`
1. Now run `# docker-compose up -d`
1. Once everything is up and running, run this to set up the database: `# docker-compose run sentry upgrade`.
1. Be amazed at how much time you saved setting up Sentry following this guide.

## Caveats

1. Do not try to put Sentry in a subdirectory. [This is not supported.](https://github.com/getsentry/sentry/issues/1230)