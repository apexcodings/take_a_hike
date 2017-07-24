# Take a Hike

## MVP

#### Models
- [ ] Devise for Users
  - [ ] User model - add username and admin
- [ ] Account model - user_id, username?
  * One to one between User and Account
- [ ] Hike model - name, length, elevation, rating, description
- [ ] Review model - account_id, hike_id, author, content, rating
  * Has and belongs to many between Hike and Account

#### Database
- [ ] Seed Hikes
  - [ ] Scrape data from AllTrails
- [ ] Seed 1 admin User
- [ ] Seed 5 normal Users
- [ ] Seed 2-3 Reviews/Hike

#### Authorization
- [ ] Admin can add/edit/remove hikes
- [ ] Admin can add/edit/remove reviews
- [ ] Accounts can add new reviews and edit/remove their own reviews

#### Views
- [ ] Homepage
- [ ] View all Hikes
- [ ] View individual Hike
  - [ ] Show all reviews
- [ ] Profile page for Accounts
  - [ ] Show all reviews they've left
- [ ] About/Contact


## Stretch Goals
- [ ] Bookmark model - account_id, hike_id
  * List all bookmarks for that account in the profile page
- [ ] Weather API
