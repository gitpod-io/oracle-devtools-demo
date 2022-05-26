FROM gitpod/workspace-full

USER root

RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb \
    && rm packages-microsoft-prod.deb

RUN install-packages dotnet-sdk-6.0 libaio1 unixodbc alien apt-transport-https

RUN wget https://download.oracle.com/otn_software/linux/instantclient/216000/oracle-instantclient-basic-21.6.0.0.0-1.el8.x86_64.rpm \ 
    && wget https://download.oracle.com/otn_software/linux/instantclient/216000/oracle-instantclient-sqlplus-21.6.0.0.0-1.el8.x86_64.rpm \
    && wget https://download.oracle.com/otn_software/linux/instantclient/216000/oracle-instantclient-devel-21.6.0.0.0-1.el8.x86_64.rpm \
    && alien -i oracle-instantclient*-basic*.rpm \
    && alien -i oracle-instantclient*-sqlplus*.rpm \
    && alien -i oracle-instantclient*-devel*.rpm \
    && echo '/usr/lib/oracle/21/client64/lib/' | tee -a /etc/ld.so.conf.d/oracle.conf \
    && ldconfig
