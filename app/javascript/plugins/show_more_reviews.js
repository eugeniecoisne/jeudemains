const showMoreReviews = () => {
  console.log('hello')
  const showMore = document.querySelector("#moreReview");

  showMore.addEventListener("click", (event) => {
    document.querySelector('.card-reviews').classList.toggle('show')

    if (document.querySelector('.card-reviews').classList.contains('show')) {
      event.currentTarget.innerText = 'Afficher moins de commentaires'
    } else {
      event.currentTarget.innerText = 'Afficher plus de commentaires'
    }
  });
}

export { showMoreReviews };
