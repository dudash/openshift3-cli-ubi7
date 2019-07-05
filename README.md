# OpenShift CLI tools in a RHEL7 Universal Base Image
Need `oc` in a terminal? Deploy this image in your OpenShift cluster, goto the terminal tab, `oc login xxxx` and you're set.

Here is where you can find the latest of the image:

   `quay.io/jasonredhat/openshift3-cli-ubi7`

Note this is a single user instance of the CLI tools. For a multi-user solution you can [check out my wetty container image here](https://github.com/dudash/openshift-wetty-client).

The link will be something like this:

    https://yourcluser.com/console/project/someproject/browse/pods/openshift3-cli-ubi7-1-xxxx?tab=terminal

It'll look like this:

![Screenshot](./lookslikethis.gif)
