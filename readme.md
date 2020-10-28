# Reproducal for a problem with Maven Daemon

In order to see the problem execute the following steps:

* `cd assembly`
* `mvnd package`

There will be an error that there is no such file or directory when the `build-demo-package` execution runs.
There is no problem when running this with `mvn package`.
If you change the `executable` from `../mvnw` to `mvn` in the `assembly/pom.xml` then everything runs fine with `mvnd package` as well.
