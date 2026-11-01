class PagesController < ApplicationController
  def home
    @projects = [
      {
        number: "01",
        name: "Proyecto destacado",
        description: "Reemplaza este texto con el reto, tu solución y el resultado de un proyecto real.",
        stack: %w[Rails PostgreSQL],
        category: "Aplicación web",
        url: "#"
      },
      {
        number: "02",
        name: "Una idea en construcción",
        description: "Cuenta qué construiste, qué decisiones tomaste y qué aprendiste durante el proceso.",
        stack: %w[React JavaScript],
        category: "Producto digital",
        url: "#"
      },
      {
        number: "03",
        name: "Exploración personal",
        description: "Muestra una pieza de trabajo que represente tu curiosidad y tu forma de resolver problemas.",
        stack: %w[UI Diseño],
        category: "Experimento",
        url: "#"
      }
    ]
  end
end
