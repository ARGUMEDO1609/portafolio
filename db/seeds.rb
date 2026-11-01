# ============================================================
#  SEEDS — datos iniciales de la base de datos
#
#  Ejecutar con:  bin/rails db:seed
# ============================================================

# ------------------------------------------------------------
# 1) USUARIO ADMINISTRADOR  (para el panel /admin)
#
#    👉 AQUÍ PONES TUS DATOS: cambia el email y la contraseña.
#    También puedes pasarlos por terminal sin editar este archivo:
#
#      ADMIN_EMAIL=tu@correo.com ADMIN_PASSWORD=TuClave123 bin/rails db:seed
# ------------------------------------------------------------
admin_email    = ENV.fetch("ADMIN_EMAIL", "admin@portafolio.test")
admin_password = ENV.fetch("ADMIN_PASSWORD", "cambia-esta-clave")

admin = User.find_or_create_by!(email: admin_email) do |user|
  user.password = admin_password
  user.admin    = true
end

puts "✔ Admin listo: #{admin.email} #{'(contraseña por defecto: cámbiala)' if admin.valid_password?(admin_password)}"

# ------------------------------------------------------------
# 2) PROYECTOS  (se creará en el paso 2 con el modelo Project)
#
#    👉 AQUÍ PONDRÁS TUS PROYECTOS, por ejemplo:
#
#    Project.find_or_create_by!(title_es: "E-commerce API") do |p|
#      p.title_en       = "E-commerce API"
#      p.description_es = "API de tienda con Rails y Mercado Pago..."
#      p.description_en = "Store API built with Rails and Mercado Pago..."
#      p.tech_stack     = ["Ruby on Rails", "PostgreSQL", "RSpec"]
#      p.repo_url       = "https://github.com/tuusuario/tu-repo"
#      p.demo_url       = "https://tu-demo.com"
#    end
# ------------------------------------------------------------

# ------------------------------------------------------------
# 3) SKILLS  (se creará en el paso 2 con el modelo Skill)
#
#    👉 AQUÍ PONDRÁS TUS HABILIDADES, por ejemplo:
#
#    Skill.find_or_create_by!(name: "React") do |s|
#      s.category = "frontend"
#      s.level    = 80
#    end
# ------------------------------------------------------------
