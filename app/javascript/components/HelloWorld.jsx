/**
 * Smoke-test component to verify the Rails + React pipeline.
 * Will be replaced by the real components (ProjectsGallery, Skills, ContactForm).
 */
export default function HelloWorld({ name }) {
  return (
    <span className="font-bold text-pink-500">
      ⚛️ ¡React funciona{name ? `, ${name}` : ""}!
    </span>
  );
}
