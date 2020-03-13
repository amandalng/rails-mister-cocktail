import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["have a chat", "grab a drink", "have some fun", "get drunk"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
