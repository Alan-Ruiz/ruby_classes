## Feedback

# 1a
  You are trying to get the element by id using variable **title**, but you haven't defined that variable before,
  that is the reason why you will see **null** when you console log it.

# 1b , 1c, 1d, 1e
  Should be assigning the first line to a variable and then using that variable to log the content,
  that way you avoid repetition and make you code more efficient.

# 1e 
  Instuctions weren't saying that you need to return the textContent so no need to iterate over the elements. Also, in the case of needing to iterate your way is correct but using forEach would make it much more readable: 
      elements.forEach((element) => {
        console.log(element.textContent)
      })

# 2a
  Should select the first <li> which is .list-item, and then use element.parentNode to get the <ul>, instead of selecting the id of the <ul> and printing it.
  So you could have used: // let listItem = document.querySelector('.list-item');
                          // console.log(listItem.parentNode);
  and that way you are doing less steps for the same outcome.

  # 2b, 2c
  Good, but please do all the steps for each of the tickets, don't use code from past tickets unless when told to.

  # 2d 
  The challenge specifically asked to use firstChild and lastChild.
  The difference boils down to the difference between a Node and an Element. Every Element is also a Node, but a Node can also be a Text node, a Comment node, or something else.

  firstElementChild returns the first child Element node, whereas firstChild returns the first child Node, regardless of whether it’s an Element, a Text, a Comment, or something else.


# 2e 
  Make sure you read the instructions correctly.
  'nextSibling' returns the next Node object whereas 'nextElementSibling' returns the next Element object, so probably the real question is what is the difference between a Node & an Element?

  Basically an Element is specified by an HTML Tag whereas a Node is any Object in the DOM, so an Element is a Node but a Node can also include Text Nodes in the form of whitespace, comments, text characters or line breaks. For more info on Elements vs Nodes see this [Difference between Node object and Element object?](https://stackoverflow.com/questions/9979172/difference-between-node-object-and-element-object)

# 3a 
  Small feedback here, what you did is correct, but to be a little more efficient instead of repeating the selector twice, you can: let h1Title = document.getElementById('title');
                            h1Title.style = 'color: red; font-size: 30px;';
  That way, if you have more than 2 changes, you will still only write 2 lines of code. Remeber DRY!

# 3b 
  