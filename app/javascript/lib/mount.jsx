import { createRoot } from "react-dom/client";
import { components } from "../components";

/**
 * Mounts React "islands" declared in ERB views.
 *
 * Usage in any .erb view:
 *
 *   <div
 *     data-react-component="ProjectsGallery"
 *     data-props="<%= { projects: @projects }.to_json %>"
 *   ></div>
 *
 * Rails passes data as JSON, React receives it as props.
 */
export function mountReactComponents() {
  document.querySelectorAll("[data-react-component]").forEach((el) => {
    // Avoid double-mounting when Turbo re-triggers the event
    if (el.dataset.reactMounted) return;
    el.dataset.reactMounted = "true";

    const name = el.dataset.reactComponent;
    const Component = components[name];

    if (!Component) {
      console.warn(`[react] Component "${name}" is not registered in components/index.js`);
      return;
    }

    let props = {};
    try {
      props = JSON.parse(el.dataset.props || "{}");
    } catch (e) {
      console.warn(`[react] Invalid JSON in data-props for "${name}"`, e);
    }

    createRoot(el).render(<Component {...props} />);
  });
}
