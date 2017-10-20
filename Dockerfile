FROM odoo:11

ENV LANG C.UTF-8

USER root

RUN apt-get update && apt-get install -y git

COPY requirements.txt /mnt/requirements.txt

RUN pip3 install -r /mnt/requirements.txt

# TODO: Fix auth problem, as enterprise repo is private
# RUN git clone -b 11.0 https://github.com/odoo/enterprise /mnt/enterprise

COPY addons /mnt/extra-addons
COPY enterprise /mnt/enterprise

RUN chown -R odoo:odoo /mnt

USER odoo

COPY odoo.conf /etc/odoo/odoo.conf