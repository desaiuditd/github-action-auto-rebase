# Github Action: Auto Rebase

## Pre-requisites

### Github CLI

```bash
brew install gh
gh auth login
```

### act

Install act - It's a tool to [run your GitHub Actions locally!](https://nektosact.com/introduction.html)

```bash
brew install act
```

## Clone this repo

```bash
git clone git@github.com:desaiuditd/github-action-auto-rebase.git
cd github-action-auto-rebase
```

## Prepare Secrets & Inputs

```bash
cp .input.example .input
```

Update relevant input values of your choice in .`input` file.

1. `REPO` - The repository name with owner prefix. E.g., `desaiuditd/github-action-auto-rebase`.
2. `PR_NUMBER` - The Pull Request number for which you want to rebase the branch.
3. `AMEND` - Optional. Default `false`. Boolean to indicate whether you want to amend the last commit with a force push,
   even if the branch is already rebased. Sometimes this is useful to re-trigger the CI build.
4. `BASE_BRANCH` - Optional. Default `main`. If you have a custom default main branch, pass the branch name here.

## Run Action

```bash
make auto-rebase
```
