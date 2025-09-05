FROM gentoo/stage3:latest

# Configure Gentoo repository
RUN mkdir -p /etc/portage/repos.conf && \
    echo "[DEFAULT]\nmain-repo = gentoo\n[gentoo]\nlocation = /var/db/repos/gentoo\nsync-type = webrsync" > /etc/portage/repos.conf/gentoo.conf

# Initial snapshot with emerge-webrsync
RUN emerge-webrsync && \
    emerge --quiet -j3 dev-util/pkgdev dev-util/pkgcheck && \
    rm -rf /var/db/repos/gentoo

CMD ["bash"]
