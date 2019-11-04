## Introduction

This document is a collection of javascript bits that I really like and want to keep on record.

### Creat A Promise

This piece is taken from A medium publication 'The Startup"
What You Need to Know About Asynchronous Programming in JavaScript by Danny Morekerke.

The following code reads a file asynchronously. But it is done the old fashioned way with a callback.

```
const fs = require('fs');
fs.readFile('/path/to/file', (err, file) => {
  if(err) {
    // handle the error
  }
  else {
    // do something with the file
  }
});
```

We would like to do better:
Something like this

```
fs.readFile('/path/to/file')
.then(file => {
  // do something with the file
})
.catch(err => {
  // handle the error
});

```

But that is not going to work because fs.readFile dosen't return a Promise.
So this is how you do it

```
const readFileAsync = path => {
  return new Promise((resolve, reject) => {
    fs.readFile(path, (err, file) => {
      return err ? reject(err) : resolve(file);
    });
  });
};// usage
readFileAsync('/path/to/file')
.then(file => {
  // do something with the file
})
.catch(err => {
  // handle the error
});
```

> This is why I love programming, Beautiful code!!!

There is a util.promisify in node but I haven't checked it out at the moment.

But what if we want this to be triggered on an event.

```
const toArrayBuffer = blob => {
  const reader = new FileReader();
  reader.onload = e => {
    const buffer = e.target.result;
  };
  reader.onerror = e => {
    // handle the error
  };  reader.readAsArrayBuffer(blob);
};
```

Again we can wrap it into a promise.

```
const toArrayBuffer = blob => {
  const reader = new FileReader();
  return new Promise((resolve, reject) => {
    reader.onload = e => resolve(e.target.result);
    reader.onerror = e => reject(e.target.error);
    reader.readAsArrayBuffer(blob);
  });
};
```

There is lots of more goodies in the article but we'll leave it here.
The article is available at [The Start Up](https://medium.com/swlh/what-you-need-to-know-about-asynchronous-programming-in-javascript-894f90a97941)
