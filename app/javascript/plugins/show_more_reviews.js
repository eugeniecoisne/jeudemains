const showMoreReviews = () => {
  const showMore = document.querySelector("#moreReview");

  if (showMore) {
    showMore.addEventListener("click", (event) => {
      document.querySelector('.card-reviews').classList.toggle('show')

      if (document.querySelector('.card-reviews').classList.contains('show')) {
        event.currentTarget.innerText = 'Afficher moins de commentaires'
      } else {
        event.currentTarget.innerText = 'Afficher plus de commentaires'
      }
    });
  }
}

export { showMoreReviews };
