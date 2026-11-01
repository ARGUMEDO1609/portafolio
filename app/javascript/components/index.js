/**
 * Registry of React components mounted from ERB views.
 *
 * To add a new component:
 *   1. Create the file in this folder (e.g. Skills.jsx)
 *   2. Import it here and add it to the `components` object
 *   3. Use it in a view with: data-react-component="Skills"
 */
import HelloWorld from "./HelloWorld";

export const components = {
  HelloWorld,
};
