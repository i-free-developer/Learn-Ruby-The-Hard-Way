# Request-Response Cycle I

Guide for navigating a Rails app with static pages.

https://www.codecademy.com/articles/request-response-cycle-static

## BACKGROUND

When developing a Rails app, the **request/response cycle** is a useful guide to see how all the app's files and folders fit together. The request/response cycle traces how a user's request flows through the app. Understanding the request/response cycle is helpful to figure out which files to edit when developing an app (and where to look when things aren't working).

## HOW IT WORKS

![Request/response cycle](https://s3.amazonaws.com/codecademy-content/projects/3/request-response-cycle-static.svg)

1. A user opens his browser, types in a URL, and presses Enter.
2. When a user presses Enter, the browser makes a request for that URL.
3. The request hits the Rails router (**config/routes.rb**). The router maps the URL to the correct controller and action to handle the request.
4. The action receives the request and passes it on to the view.
5. The view renders the page as HTML.
6. The controller sends the HTML back to the browser. The page loads and the user sees it.

In this way, the request/response cycle is a useful way to see how a Rails app's files and folders are for and how they fit together.