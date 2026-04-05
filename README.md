# P6's POSIX.2: p6df-gws

## Table of Contents

- [Badges](#badges)
- [Summary](#summary)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)
- [Usage](#usage)
  - [Functions](#functions)
- [Hierarchy](#hierarchy)
- [Author](#author)

## Badges

[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

## Summary

TODO: Add a short summary of this module.

## Contributing

- [How to Contribute](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CONTRIBUTING.md>)

## Code of Conduct

- [Code of Conduct](<https://github.com/p6m7g8-dotfiles/.github/blob/main/CODE_OF_CONDUCT.md>)

## Usage

### Functions

#### p6df-gws

##### p6df-gws/init.zsh

- `p6df::modules::gws::deps()`
- `p6df::modules::gws::langs()`
- `p6df::modules::gws::path::init(_module, _dir)`
  - Args:
    - _module
    - _dir
- `p6df::modules::gws::skills::init(_module, _dir)`
  - Args:
    - _module
    - _dir
- `words gws = p6df::modules::gws::profile::mod()`

#### p6df-gws/lib

##### p6df-gws/lib/workspace.sh

- `p6df::modules::gws::delegation::setup(delegated_email)`
  - Args:
    - delegated_email
- `p6df::modules::gws::dwd::admin::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::admin::groups::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::admin::orgunits::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::admin::reports::audit::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::admin::reports::usage::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::all::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::analytics::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::calendar::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::chat::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::chat::memberships::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::chat::spaces::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::classroom::coursework::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::classroom::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::classroom::rosters::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::contacts::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::docs::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::drive::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::forms::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::gmail::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::meet::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::sheets::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::slides::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::tasks::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `p6df::modules::gws::dwd::vault::get(sa_key_file, email)`
  - Args:
    - sa_key_file
    - email
- `str {token} = p6df::modules::gws::admin::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::admin::groups::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::admin::orgunits::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::admin::reports::audit::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::admin::reports::usage::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::analytics::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::calendar::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::chat::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::chat::memberships::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::chat::spaces::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::classroom::coursework::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::classroom::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::classroom::rosters::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::contacts::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::docs::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::drive::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::forms::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::gmail::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::meet::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::sheets::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::slides::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::tasks::get(email)`
  - Args:
    - email
- `str {token} = p6df::modules::gws::vault::get(email)`
  - Args:
    - email

## Hierarchy

```text
.
├── init.zsh
├── lib
│   └── workspace.sh
└── README.md

2 directories, 3 files
```

## Author

Philip M. Gollucci <pgollucci@p6m7g8.com>
