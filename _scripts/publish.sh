#!/bin/sh
rsync -u overlay.tar.bz2 /var/www/portage-overlay.jenkins-01.hq.rabe.ch/htdocs/overlay.tar.bz2
rsync -u repositories.xml /var/www/portage-overlay.jenkins-01.hq.rabe.ch/htdocs/repositories.xml
