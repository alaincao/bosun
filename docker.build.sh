#!/bin/bash

set -ex
cd /

cat >/start.sh << EOF
#!/bin/bash
set -ex
cd ~/go/src/bosun.org/cmd/scollector
go build
EOF

chmod +x /start.sh
rm /docker.build.sh
