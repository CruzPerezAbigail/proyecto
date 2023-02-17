FactoryBot.define do
  factory :maintenance do
    fecha_inicio {"MyDatetime"}
    fecha_fin {"MyDatetime"}
    observaciones {"MyString"}
    tipo_mantenimiento {"MyString"}
    zone_id {"MyInteger"}
    physical_id {"MyInteger"}
    tool_id {"MyInteger"}
    resource_id {"MyInteger"}
    usuarios_id {"MyString"}
    equipment_id {"MyString"}
  end
end
