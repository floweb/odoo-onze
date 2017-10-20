# How to

First of all, you will need access to ``https://github.com/odoo/enterprise`` repo, then basically clone it right inside this folder.

```
git clone -b 11.0 https://github.com/odoo/enterprise
```

Once you've done this, simply run:

```
docker-compose run --rm -u root odoo chown -R odoo:odoo /var/lib/odoo
docker-compose up
```

# Release Notes

0.1: It just works!