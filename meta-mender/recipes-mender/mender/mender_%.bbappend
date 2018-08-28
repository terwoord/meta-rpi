do_install_append() {
	sed -i 's|After=systemd-resolved.service|After=systemd-timesyncd.service systemd-resolved.service|g' ${D}${systemd_unitdir}/system/mender.service
	sed -i 's|Group=root| &\nExecStartPre=/bin/sleep 30|g' ${D}${systemd_unitdir}/system/mender.service
}
