import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    if (localStorage.theme === "dark" || 
        (!("theme" in localStorage) && window.matchMedia("(prefers-color-scheme: dark)").matches)) {
      document.documentElement.classList.add("dark")
    }
  }

  toggle() {
    document.documentElement.classList.toggle("dark")
    if (document.documentElement.classList.contains("dark")) {
      localStorage.theme = "dark"
    } else {
      localStorage.theme = "light"
    }
  }
}
