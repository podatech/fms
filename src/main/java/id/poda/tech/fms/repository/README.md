**The repository layer** is the lowest layer of a web application. It is responsible of communicating with the used data storage.

It's a repository of a specific type of objects - it allows you to search for a specific type of objects as well as store them. Usually it will ONLY handle one type of objects. E.g. `AppleRepository` would allow you to do `AppleRepository.findAll(criteria)` or `AppleRepository.save(juicyApple)`. Note that the Repository is using Domain Model terms (not DB terms - nothing related to how data is persisted anywhere).

A repository will most likely store all data in the same table, whereas the pattern doesn't require that. The fact that it only handles one type of data though, makes it logically connected to one main table (if used for DB persistence).