color = "rojo"
color.object_id
"rojo".object_id
otro_color = :rojo
otro_color.object_id
:rojo.object_id

# prueba ahora con este ejemplo

inst_section = {
  cello: 'string',
  clarinet: 'woodwind',
  drum: 'percussion',
  oboe: 'woodwind',
  trumpet: 'brass',
  violin: 'string'
}


inst_section[:cello]
inst_section[:oboe]

inst_section.methods
