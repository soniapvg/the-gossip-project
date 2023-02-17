# The Gossip Project

## How to run

- `$ git clone https://github.com/soniapvg/the-gossip-project.git`
- `$ cd path/to/the-gossip-project`
- start PostgreSQL
   - on MacOs with brew, run `$ brew services start @postgresql`
   - on Linux, run `$ sudo service postgresql start`
- if needed, you can edit database settings in `the-gossip-project/config/database.yml`
- `$ rails db:setup`
- `$ rails server`
- go to `http://localhost:3000`in your web browser

## Requirements

- [Ruby 3.0.0](https://www.ruby-lang.org)
- [Rails version 7.0.4 or up](https://rubyonrails.org)
- [Bundler gem](https://bundler.io)
- [PostgreSQL version 9.3 or up](https://www.postgresql.org)

## Roadmap

- [x] v1
   - [x] Add, show and edit gossips
- [x] v2
   - [x] Overall look'n'feel (basic)
   - [x] Sign in / Log in / Log out
   - [x] Add, edit and delete gossips, only when logged in
- [ ] v3
   - [ ] Comments
   - [ ] Tags
   - [ ] Likes