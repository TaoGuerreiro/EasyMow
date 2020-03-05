const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  const textNavbar = document.querySelectorAll('.target');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 380) {
        navbar.classList.add('bg-light');
        textNavbar.forEach((line) => {
          line.classList.remove('text-light');
          line.classList.add('text-success');
        });
      } else {
        navbar.classList.remove('bg-light');
        textNavbar.forEach((line) => {
          line.classList.add('text-light');
          line.classList.remove('text-success');
        });
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
