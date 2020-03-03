const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-lewagon');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 400) {
        navbar.classList.add('bg-light');
      } else {
        navbar.classList.remove('bg-light');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
