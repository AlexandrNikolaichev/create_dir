# mkdir

## Usage

`./mkdir.rb test.json`

## Result:
```
$ tree
.
├── README.md
├── mkdir.rb
├── test.json
└── test_dir
    ├── test.rb
    ├── test1
    │   ├── test.c
    │   └── test.h
    ├── test2
    │   └── hello.c
    └── test3
```

## test.json:
```json
{
  "name":"test_dir",
  "children":[
    {
      "name":"test1",
      "children":[],
      "files":[
        "test.c",
        "test.h"
      ]
    },
    {
      "name":"test2",
      "children":[],
      "files":[
        "hello.c"
      ]
    },
    {
      "name":"test3",
      "children":[],
      "files":[]
    }
  ],
  "files":[
    "test.rb"
  ]
}
```

