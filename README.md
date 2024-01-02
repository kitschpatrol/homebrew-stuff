# Kitschpatrol's Homebrew Tap

Odds and ends.

## Repo Structure

Based on [`brew tap-new`](https://github.com/Homebrew/brew/blob/master/docs/How-to-Create-and-Maintain-a-Tap.md).

Added `package.json` for convenient script execution.

`Casks/custom` - Casks not available elsewhere

`Casks/fork` - Forks of casks otherwise available in [`homebrew/core`](https://github.com/Homebrew/homebrew-core)

`Casks/pinned` - Legacy casks formerly available in [`homebrew/core`](https://github.com/Homebrew/homebrew-core)

Format all files:

```sh
pnpm run format
```

Run tests:

```sh
pnpm run test
```

## How do I install these formulae?

`brew install kitschpatrol/stuff/<formula>`

Or `brew tap kitschpatrol/stuff` and then `brew install <formula>`.

## Tap precedence

There [doesn't seem to be a good way](https://github.com/Homebrew/legacy-homebrew/issues/24238) to prefer one tap's formulae or casks over another's, so the "pinned" formulae / casks are given unique names.

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).

## Taking sha256:

```sh
shasum -a 256 ./YourApp.zip
```
