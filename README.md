# Back end of Search Engine with Strapi

Strapi is a Headless CMS with an very usefull panel control for the manage of the data.

# Local Development Setup

Create a postgres database locally running the latest version of postgres and taking in count the credentials hosted in the database file located in /config/database.js

Restore postgres from the database dump (located on devtools directory of the project at /dev_tools)

# Installing & Running the Frontend Application

## Install of dependencies & run scripts

```
yarn install
```

### Start Strapi in watch mode

The following command will promp out the panel of control. You'll need the credentials (email and password) to continue.

```
yarn develop
```

#### Start strapi without watch mode

```
yarn start
```

#### Build strapi admin panel

```
yarn build
```

#### Display all available commands

```
yarn strapi
```

#### Go to the admin interface

You can see a usefull dashboard in which you can create users, make CRUD operations and other admin related operations. You can access to this panel at: http://localhost:1337/admin

using the following credentials:
user:diana.moreno6@gmail.com
pwd: Dc.1685.2021
