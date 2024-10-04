#!/bin/bash

cat << EOT > /home/ec2-user/.bashrc.d/banner.bash
if [ "\$TERM_PROGRAM" = "vscode" ]; then
    if [ ! -f ~/.banner ]; then
        touch ~/.banner
        cat << EOF

                                          Welcome to

███████╗██╗  ██╗███████╗    ██╗    ██╗ ██████╗ ██████╗ ██╗  ██╗███████╗██╗  ██╗ ██████╗ ██████╗ 
██╔════╝██║ ██╔╝██╔════╝    ██║    ██║██╔═══██╗██╔══██╗██║ ██╔╝██╔════╝██║  ██║██╔═══██╗██╔══██╗
█████╗  █████╔╝ ███████╗    ██║ █╗ ██║██║   ██║██████╔╝█████╔╝ ███████╗███████║██║   ██║██████╔╝
██╔══╝  ██╔═██╗ ╚════██║    ██║███╗██║██║   ██║██╔══██╗██╔═██╗ ╚════██║██╔══██║██║   ██║██╔═══╝ 
███████╗██║  ██╗███████║    ╚███╔███╔╝╚██████╔╝██║  ██║██║  ██╗███████║██║  ██║╚██████╔╝██║     
╚══════╝╚═╝  ╚═╝╚══════╝     ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝ ╚═╝ 

                      Hands-on labs for Amazon Elastic Kubernetes Service

EOF
    fi
fi
EOT