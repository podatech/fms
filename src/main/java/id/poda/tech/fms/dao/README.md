**Data Access Object**, used to transfer data from database

A DAO is a class that locates data for you (it is mostly a finder, but it's commonly used to also store the data). The pattern doesn't restrict you to store data of the same type, thus you can easily have a DAO that locates/stores related objects.

E.g. you can easily have UserDao that exposes methods like

`Collection<Permission> findPermissionsForUser(String userId)
User findUser(String userId)
Collection<User> findUsersForPermission(Permission permission)`

All those are related to User (and security) and can be specified under then same DAO. This is not the case for Repository.