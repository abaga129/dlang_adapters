# dlang_adapters
A collection of classes to create C++ish data structures from D's provided containers.

## Modules

### Deque

|Property |Return Value|Parameters |
|---------|------------|-----------|
|pushBack |void        |Stuff stuff|
|pushFront|void        |Stuff stuff|
|popBack  |void        |none       |
|popFront |void        |none       |
|back     |T t         |none       |
|front    |T t         |none       |
|empty    |bool        |none       |

### Queue

|Property |Return Value|Parameters |
|---------|------------|-----------|
|push     |void        |Stuff stuff|
|pop      |void        |none       |
|top      |T t         |none       |
|empty    |bool        |none       |

### Vector

|Property |Return Value|Parameters |
|---------|------------|-----------|
|pushBack |void        |Stuff stuff|
|popBack  |T t         |none       |
|back     |T t         |none       |
|empty    |bool        |none       |

### Stack

|Property |Return Value|Parameters |
|---------|------------|-----------|
|push     |void        |Stuff stuff|
|pop      |T t         |none       |
|top      |T t         |none       |
|empty    |bool        |none       |

### Set
|Property |Return Value|Parameters |
|---------|------------|-----------|
|insert   |void        |T element  |
|erase    |void        |T element  |
|clear    |void        |none       |
|find     |int         |T element  |
|empty    |bool        |none       |
|size     |int         |none       |
|arr      |T[]         |none       |

### Matrix
|Property |Return Value|Parameters |
|---------|------------|-----------|
|elem     |T[][]       |none       |
|det      |T           |none       |
|multiply |Matrix!T    |Matrix!T B |
