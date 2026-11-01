class PagesController < ApplicationController
  def home
    @projects = [
      {
        number: "01",
        name: "Inspiration Store",
        description: "Tienda en línea con catálogo, carrito, cuentas de usuario y checkout. Frontend React conectado a una API Rails.",
        stack: %w[React Rails Wompi PostgreSQL],
        category: "E-commerce",
        image: "inspiration-store.webp",
        url: "https://github.com/ARGUMEDO1609/inspirations-store"
      },
      {
        number: "02",
        name: "Portafolio personal",
        description: "Sitio personal construido con Rails y Tailwind CSS. Presenta mis proyectos, tecnologías, formación y contacto con diseño adaptable y modo oscuro.",
        stack: ["Ruby on Rails", "Tailwind CSS", "HTML"],
        category: "Desarrollo web",
        video: "portafolio.mp4",
        url: "https://github.com/ARGUMEDO1609/portafolio"
      }
    ]
  end
end
