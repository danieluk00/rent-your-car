let overview = document.querySelector('.overview');
let reviews = document.querySelector('.reviews');

let overviewText = document.querySelector('.overview-text');
let reviewsContainer = document.querySelector('.reviews-container');

if (overview) {
  overview.addEventListener('click', () => {
  reviews.classList.remove('active');
  overview.classList.add('active');
  overviewText.classList.remove('hidden');
  reviewsContainer.classList.add('hidden');
});
}

if (reviews) {
  reviews.addEventListener('click', () => {
  overview.classList.remove('active');
  reviews.classList.add('active');
  reviewsContainer.classList.remove('hidden');
  overviewText.classList.add('hidden');
});
}

