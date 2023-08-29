# porter-cli-action-testing

This Github action is used to test new versions of the Porter CLI in a Github Action workflow.

To test a new release of the CLI:
1. Edit the Dockerfile to pull in your desired version
2. Make a new release of this package
3. Edit your GHA to pull the newest release of this package
