import yaml


with (config.configdir / 'config.yml').open() as f:
    yaml_data = yaml.safe_load(f)

def dict_attrs(obj, path='', delim=''):
    if isinstance(obj, dict):
        for k, v in obj.items():
            yield from dict_attrs(
                v,
                delim.join([path, k]) if path else k,
                delim=delim
            )
    else:
        yield path, obj

for k, v in dict_attrs(yaml_data, delim='.'):
    config.set(k, v)

#config.set(
#    "content.headers.custom",
#    {"accept": "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8"}
#)

with (config.configdir / 'binds.yml').open() as f:
    bindings = yaml.safe_load(f)

for k, v in dict_attrs(bindings):
    config.bind(k, v)
