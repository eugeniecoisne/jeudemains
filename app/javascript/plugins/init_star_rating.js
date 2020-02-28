import "jquery-bar-rating";
import "jquery-bar-rating/dist/themes/css-stars.css";
import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

const initStarRating = () => {
  const rating = $('#review_rating');
  const animator_rating = $('#review_animator_rating');

  if (rating) {
    rating.barrating({
    theme: 'css-stars'
  });
  }

  if (animator_rating) {
    animator_rating.barrating({
    theme: 'css-stars'
  });
  }

};

export { initStarRating };
