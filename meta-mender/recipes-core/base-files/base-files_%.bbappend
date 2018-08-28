do_install_append() {
    rm "${D}/etc/issue"
    echo "${MACHINE} - ${MENDER_ARTIFACT_NAME}" > ${D}/etc/issue
}