### data
This layer will be responsible of getting all local or remote data.

This initially was intended to be a pure dart package, but I had to make it depend on flutter as there is a bug in flutter apps not allowing independent dart packages to read files.