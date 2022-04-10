macro include_module(module_name)
  {% if module_name.resolve.module? %}
  {% else %}
    raise "{{module_name.id}} is not a module"
  {% end %}
end
