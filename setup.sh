#!/bin/bash

chown -R root:root /opt/eclipse
chmod -R +r /opt/eclipse

echo $'#!/bin/sh\nexport ECLIPSE_HOME="/opt/eclipse"\n$ECLIPSE_HOME/eclipse $*' > /usr/bin/eclipse

chmod 755 /usr/bin/eclipse

echo $'[Desktop Entry]\nEncoding=UTF-8\nName=Eclipse\nComment=Eclipse IDE\nExec=eclipse\nIcon=/opt/eclipse/icon.xpm\nTerminal=false\nType=Application\nCategories=GNOME;Application;Development;\nStartupNotify=true\n' > eclipse.desktop

