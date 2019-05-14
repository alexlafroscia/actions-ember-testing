# actions-ember-testing

> GitHub Action for Ember Testing

This GitHub Action provides a Node 10 environment and Headless Chrome, so you can run your Ember tests in GitHub Actions.

![Example Workflow](docs/workflow-parallel-linting.png)

## Super Quick Start

Want to get started quick? Define a `.github/main.workflow` like this:

```hcl
workflow "Build and Test" {
  on = "push"
  resolves = ["Run Tests"]
}

action "Install Dependencies" {
  uses = "nuxt/actions-yarn@node-10"
  args = "install"
}

action "Run Tests" {
  uses = "alexlafroscia/actions-ember-testing@master"
  needs = ["Install Dependencies"]
}
```

Want to know more or a more advanced configuration? Check out the [wiki][wiki]!

## Projects Using this Action

If you want help setting this up for your own projects, you can check out the following projects which leverage this Action.

- [`ember-steps`](https://github.com/alexlafroscia/ember-steps)

Want to add your project to the list? Feel free to send a PR!

[wiki]: https://github.com/alexlafroscia/actions-ember-testing/wiki
