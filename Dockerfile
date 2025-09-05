FROM gentoo/stage3:latest

# Configure Gentoo repository
RUN mkdir -p /etc/portage/repos.conf && \
    echo "[gentoo]\nlocation = /var/db/repos/gentoo\nsync-type = webrsync" > /etc/portage/repos.conf/gentoo.conf

# Initial snapshot with emerge-webrsync
RUN emerge-webrsync && \
    emerge app-portage/pkgdev app-portage/pkgcheck && \
    rm -rf /var/db/repos/gentoo

CMD ["bash"]
