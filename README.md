# CPP template

This template is structured for setting up a `c++` project.

## Build and installation:

Currently we are supporting two type of building process.
1. CMAKE
2. Docker

### CMAKE:

For ease of use, change the application name in the `CMakeLists.txt` file and all should be good to go.

```bash
APP_NAME="<desired_app_name>"
```

### Docker:

Dockerfile using `Ubuntu 18:04` as base. Run:

```bash
docker-compose up --build
```

## Structure of the application
Structure of the application is as follows:

<pre>
.
├── CMakeLists.txt
├── LICENSE
├── README.md
├── build_application.sh
├── docker
│   └── dockerfile
├── docker-compose.yaml
├── libs
│   ├── aarch64
│   │   ├── include
│   │   │   └── external
│   │   └── lib
│   │       └── external
│   └── x86_64
│       ├── include
│       │   └── external
│       └── lib
│           └── external
└── src
    ├── CMakeLists.txt
    └── main.cpp
</pre>

For including the libraries, just add the header files in the include directory. For `SO` files, use the `libs/{arch}/lib/` directory.
