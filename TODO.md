# Take a Hike

## MVP

#### Models
- [x] BCrypt for Users
  - [x] User model - add username and admin
- [x] Account model - user_id
  * One to one between User and Account
- [x] Hike model - name, length, elevation, difficulty, rating, description
- [x] Review model - account_id, hike_id, author, content, rating
  * Has and belongs to many between Hike and Account

#### Database
- [x] Seed Hikes
- [x] Seed 1 admin User
- [x] Seed 3 normal Users
- [x] Seed 2-4 Reviews/Hike

#### Authorization
- [x] Admin can add/edit/remove hikes
- [ ] Admin can add/edit/remove reviews
- [ ] Accounts can add new reviews and edit/remove their own reviews

#### Views
- [x] Sign up, sign in
- [ ] Homepage
- [x] View all Hikes
- [x] View individual Hike
  - [ ] Show all reviews
- [ ] Profile page for Accounts
  - [ ] Show all reviews they've left
- [ ] About/Contact
- [x] Admin control page


## Stretch Goals
- [ ] Scrape data from AllTrails to seed database
- [ ] Bookmark model - account_id, hike_id
  * List all bookmarks for that account in the profile page
- [ ] Weather API
- [ ] Allow sign in with username
