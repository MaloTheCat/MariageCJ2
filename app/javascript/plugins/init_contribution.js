let contribution;

const doContribute = () => {
  document.querySelector(".contribution").addEventListener("submit", function(e){
      e.preventDefault();    //stop form from submitting
      console.log('je suis supérieur à 0');
    //do whatever an submit the form
  });
  // value_submited.innerHTML
  // let contribution = document.querySelector('.contribution');
}

const initContribution = () => {
  if (contribution > 0) {
    doContribute;
  } else {
    document.querySelector(".contribution").addEventListener("submit", function(e){
      e.preventDefault();
      console.log('je suis inférieur ou égale à 0');
    })
  }

}

export { initContribution };


// TRIGGER = appuyer sur submit button du form

// ACTION = stocker variable let contribution
