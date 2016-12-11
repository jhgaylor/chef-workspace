# - template:
#     src: service.j2
#     dest: "/etc/init/{{app_name}}.conf"
#     owner: root
#     group: root
#     mode: 0644

# - service:
#     name: "{{app_name}}"
#     state: started
#     enabled: yes