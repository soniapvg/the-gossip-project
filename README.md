# The Gossip Project

## How to run

- `git clone https://github.com/soniapvg/the-gossip-project.git`
- `cd path/to/the-gossip-project`
- start PostgreSQL
   - on MacOs with brew, run `brew services start @postgresql`
   - on Linux, run `sudo service postgresql start`
- if needed, you can edit database settings in `the-gossip-project/config/database.yml`
- `rails db:setup`
- `rails server`
- go to `http://localhost:3000`in your web browser
