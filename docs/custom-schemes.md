# Custom Schemes

IDUtils supports adding custom identifier schemes via Python entry points.

## Registering a custom scheme

Define an entry point in your package's `pyproject.toml`:

```toml
[project.entry-points."idutils.custom_schemes"]
my_new_scheme = "my_module:get_scheme_config_func"
```

Or in `setup.cfg`:

```ini
[options.entry_points]
idutils.custom_schemes =
    my_new_scheme = my_module:get_scheme_config_func
```

The function must return a dictionary with the scheme configuration:

```python
def get_scheme_config_func():
    return {
        # Required: returns True if the value matches this scheme
        "validator": lambda value: bool(some_pattern.match(value)),
        # Optional: returns a normalized form of the value
        "normalizer": lambda value: value.strip(),
        # Optional: list of other schemes to remove when this scheme is detected
        "filter": ["list_of_schemes_to_filter_out"],
        # Optional: returns a URL for the identifier
        "url_generator": lambda scheme, normalized_pid: f"https://example.org/{normalized_pid}",
    }
```

All keys are optional — defaults are applied for any omitted key.

!!! note
    Custom schemes cannot override existing built-in schemes.

## Extension API

::: idutils.ext
