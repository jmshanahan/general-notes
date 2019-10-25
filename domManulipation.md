# Introduction

Document Object Model is the glue that binds all of our web pages together.
Often we need to modify the DOM. React makes this easire but we still have a requirement to select sections of the DOM and do some work on it.


## Selecting Elements

### Selecting a Single Element

The querySelector is the tool of choice here.

`document.querySelector(/* your selector */)`


Options for the query selector are 

`document.querySelector('.foo')`             class selector\
`document.querySelector('#foo')`             id selector\
`document.querySelector('div')`              tag selector\
`document.querySelector('[name="foo"]')`     attribute selector\
`document.querySelector('div + p > span')`   you go girl!\


### Selecting Multiple Elements

`document.querySelectorAll('p')`   selects all `<p>` elements\


