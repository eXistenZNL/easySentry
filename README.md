# Easy Sentry

Quickly set up [Sentry](https://github.com/getsentry/sentry) with docker-compose instead of a tedious multi step guide.

Based upon the original Docker guide found [here](https://hub.docker.com/_/sentry/).

![Sentry logo](https://raw.githubusercontent.com/docker-library/docs/831b07a52f9ff6577c915afc41af8158725829f4/sentry/logo.png)

## How this works

1. Clone this repo into a directory called `sentry`
1. Run `$ ./gen-dotenv.sh` to create a `.env` that holds the secrets
1. Run `# docker-compose up -d` and wait for it to finish
1. Set up the database and create the first user: `# docker-compose run sentry sentry upgrade`
1. Be amazed at how much time you saved setting up Sentry by following this guide

## Caveats

1. Do not try to put Sentry in a subdirectory. [This is not supported.](https://github.com/getsentry/sentry/issues/1230)
