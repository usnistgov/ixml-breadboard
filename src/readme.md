# InvisibleXML Breadboard scripts and utilities

Subdirectories have readme.md documentation explaining their uses and dependencies.

Unlike resources in ../ixml, each subdirectory here provides a self-contained and complete application, to some definition of 'complete' that includes 'complete for the present' and acknowledges that goals may be extremely modest with respect to functionality, if/as basic architectures are being demonstrated.

Keep in mind when evaluating these projects that they are meant not for themselves, but to offer patterns for replication and adaptation.

Generally, a `bash` shell / command line environment is assumed as the starting point for installation and maintenance of any libraries.

There may be additional dependencies on Java; Maven; iXML tools as documented, Typescript and NodeJS libraries, and so forth, as documented per project.

Recommended:
- A `bash` shell preferably under Linux (including WSL)
- An Apache JDK
- Apache Maven
- Under NodeJS, `npm saxonjs` and `npm xslt3`

The NodeJS `xslt3` library is useful not only as a utility for applying stylesheets, but for compiling them into deliverable `*.sef` (JSON-based) format as required for SaxonJS in the web application.
