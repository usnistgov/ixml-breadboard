# iXML mini3 demo

Called 'mini3' because it supersedes 'mini' using XProc 3.0.

Goals:

- Stand up and test run XML Calabash supporting iXML
  - As XProc inputs
  - Within XSLT (Saxon / XPath 4.0?)

Potential benefits:

- Validate XML Calabash runtime in these applications
- Provide actual and theoretical testing alternative to Morgana
- Open way to iXML
- Access to Calabash-only functionalities

Steps:

build and test download-xmlcalabash.sh

  downloads with smoke test

emulate 

---


Script courtesty of NDW:

```bash
VERSION=3.0.0-alpha5
RELEASES=https://github.com/xmlcalabash/xmlcalabash3/releases/download
echo "Setup to test XML Calabash $VERSION"
mkdir -p /tmp/x
cd /tmp/x || exit 1
rm -rf ./xmlcalabash-$VERSION
echo "Downloading..."
curl -s -L -o xmlcalabash-$VERSION.zip $RELEASES/$VERSION/xmlcalabash-$VERSION.zip
cd /tmp/x
echo "Unpacking..."
unzip -q xmlcalabash-$VERSION.zip
echo "Smoke test:"
java -jar xmlcalabash-$VERSION/xmlcalabash-app-$VERSION.jar version
```
   