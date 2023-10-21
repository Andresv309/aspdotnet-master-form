
const dropdowns = document.querySelectorAll(".dropdown");

document.addEventListener("click", (event) => {
  const dropdowns = document.querySelectorAll(".dropdown");
  
  dropdowns.forEach((dropdown) => {
    const dropdownMenu = dropdown.querySelector(".dropdown-menu");

    if (dropdown.contains(event.target)) {
      // Click is inside the current dropdown
      dropdownMenu.classList.toggle("hidden");
    } else {
      // Click is outside the current dropdown, so hide it
      dropdownMenu.classList.add("hidden");
    }
  });
});