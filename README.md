# snote

Create secure notes in the macOS keychain.
This script is basically a wrapper around the `security`.

## Usage

```txt
    snote init [-c]
        Initializes snote by creating a new keychain.
        Use -c to symlink keychain to iCloud documents.

    snote ls [folder]
        List all folders and notes. 
        Optionally specify a folder name to list only notes in folder.

    snote add name
        Add note by name. Uses \$EDITOR to provide content.

    snote get name
        Get note by path.

    snote edit name
        Edit note with \$EDITOR.

    snote rm path
        Remove note by name.
```
