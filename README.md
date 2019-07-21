# Noticeproject

A barebones noticeboard project designed to test various skills with rails and javascript. 

Run bundle install and rails db:setup to run the project and populated the database from seeds.rb.

Features in the project:

- Create a notice on the home page and it will be rendered through asynchronous javascript.
- The home page allows you to see the titles for notices submitted at any time, within the last week, and within the last month. This is through parsing a JSON request to the application.
- All notices are rendered on the archive page.
- /search contains a dynamic search bar that displays all notices whose title contains a substring of the title query AND whose type matches the one given.
- A backend which is behind a bcrypt protected password wall. The backend contains a menu for an admin to view and destroy notices.
- Admins can also report notices for being Abuse, Obscene, or Illegal. Reporting a notice will make the blobs change colour. The blobs will stay in that colour so the admins can see what they have reported.
