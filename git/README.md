# Git aliases / branching strategy / commonly used commands

## Branching strategy

- **master**
  - official release branch, `initializes CI/CD pipeline`, all commits should be
    tagged with a version number, using
    [**semantic versioning**](https://semver.org/)

---

- **dev**
  - integration branch for feat branches. This is a long running branch, which
    `merges with feat branches` and is `used to create feat/release branches`.

---

- **feat**
  - `created from dev branch`, when a feature is complete it gets merged back
    into dev. Feat branches never interact directly with master. Feat can be one
    of:
    - **feat** - intended for features - i.e. - adding pagination, filtering,
      adding new UI elements, API endpoints and updating existing elements with
      additional features. **Naming Convention**: feat/feature-name
    - **chore** branches are used for boring day to day tasks, like updating .md
      files, documentation, conventions, configuration files for eslint/prettier
      etc. **Naming Convention**: chore/prettier-remove-semi-colons
    - **style** branches are used solely for visual improvements in the style of
      the UI. **Naming Convention**: style/component-name
    - **refactor** branches are used when refactoring a piece of code(improving
      readability, but not altering functionality). **Naming Convention**:
      refactor/function-name
    - **test** branches are used when adding unit/integration/e2e tests.
      **Naming convention**: test/file-name-unit

---

- **release**
  - `Created from dev branch`.
  - Creating a release branch `starts the release cycle`, so
    `no new features can be added after this point` - only bug fixes.
  - `Once it's ready to ship`, the `release branch gets merged into master` and
    tagged with a version number. In addition `it gets merged into dev`, which
    may have progressed since the release was initiated. This enables a team to
    polish the current release, while another team keeps working on features for
    the next release.
    - It's important to `merge all release branches into both master and dev`,
      because critical updates may have been added to the release branch and
      they need to be accessible to new features. **Naming convention**:
      release/0.1.0

---

- **fix**
  - `created from master`, to quickly patch production releases.
  - This is the `only branch that should fork directly off of master`.
  - As soon as the `fix is completed`, it
    `gets merged in master, dev and the current release branch`.
    - Master then gets tagged with an updated version number. **Naming
      convention**: fix/close-modal-on-overlay-click
