macro include_module(module_name)
  {% resolved_module = module_name.resolve %}
  {% unless resolved_module.module? %}
    raise "{{module_name.id}} is not a module"
  {% end %}
  {% for method in resolved_module.methods %}
    def {{ method.name }}({{ *method.args }})
      {{ method.body }}
    end
  {% end %}
  {% for constant in resolved_module.constants %}
    {{ constant.id }} = {{ resolved_module.name(generic_args: false) }}::{{ constant.id }}
  {% end %}
end
