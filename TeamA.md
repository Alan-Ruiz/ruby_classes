# 2d
 check because not completed???


 # 2e 
  Good, but make sure if the instructions say select an element you don't reuse a variable.
  Make sure you log the results, it makes sense to log to test things but we are expecting your log to be the final result so make sure you at leats coment out your "testing" logs.
  You could have selected the right li by looking at the clases they have, but good job making a consition to check that you are getting the right one.

  # 3b 
    No need to use .createTextNode, as the ticket specified, you should have used textContent. Still, good job on getting the same outcome.

  # 3c
    Good use, very small typo, the challenge specified that it wanted the text to be “This paragraph has been updated.”, you implemented this well but the string was incorrect, this might seem small error but might cause some test to fail, so let's make sure we add the right data.
  # 3d
    Great! let's make sure we add the right string: "Hover over me!"

  # 3e 
    Very close, but **children[1]** there is undefined, you should call itemList.children[1] for it to work.
    another solution could be: const banana = itemList.querySelector("li:nth-of-type(2)");
                                banana.classList.remove("list-item");
                                