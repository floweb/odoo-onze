# How to

First of all, you will need access to [Odoo Enterprise](https://github.com/odoo/enterprise) repo, then basically clone it right inside this folder.

```
git clone -b 11.0 https://github.com/odoo/enterprise
```

Once you've done this, simply run:

```
docker-compose run --rm -u root odoo chown -R odoo:odoo /var/lib/odoo
docker-compose up
```

## Using the debugger

### Basic Usage: Setting trace

To debug, with the server on, just add:

```python
    import wdb
    wdb.set_trace()
```

anywhere in your code. Your program will stop at the set_trace line. (Just like pdb)

Then, go to http://localhost:1984 and select your debugging session.

You can learn more about wdb (your new debugger) in this [README](https://github.com/Kozea/wdb).

# Release Notes

- 0.1: It just works!
- 0.2: Added [wdb](https://github.com/Kozea/wdb), a web debugger for your dockerized Odoo!
