// Entry point for the build script in your package.json
import "@hotwired/turbo-rails";
import { mountReactComponents } from "./lib/mount";

// Mount React islands on every page load (also after Turbo navigations)
document.addEventListener("DOMContentLoaded", mountReactComponents);
document.addEventListener("turbo:load", mountReactComponents);

const themeStorageKey = "portfolio-theme";

function applyTheme(theme) {
  document.documentElement.dataset.theme = theme;
  const toggle = document.querySelector("[data-theme-toggle]");
  if (!toggle) return;

  const dark = theme === "dark";
  toggle.setAttribute("aria-pressed", String(dark));
  toggle.setAttribute("aria-label", dark ? "Activar modo claro" : "Activar modo oscuro");
  toggle.querySelector(".theme-icon").textContent = dark ? "☀" : "☾";
  toggle.querySelector(".theme-label").textContent = dark ? "CLARO" : "OSCURO";
}

function initializeTheme() {
  const savedTheme = localStorage.getItem(themeStorageKey);
  const systemPrefersDark = window.matchMedia("(prefers-color-scheme: dark)").matches;
  applyTheme(savedTheme || (systemPrefersDark ? "dark" : "light"));
}

document.addEventListener("turbo:load", initializeTheme);
document.addEventListener("click", (event) => {
  const toggle = event.target.closest("[data-theme-toggle]");
  if (!toggle) return;

  const theme = document.documentElement.dataset.theme === "dark" ? "light" : "dark";
  localStorage.setItem(themeStorageKey, theme);
  applyTheme(theme);
});
