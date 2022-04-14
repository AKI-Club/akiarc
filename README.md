# akiarc - Archive Handler for AKI Corporation's Nintendo 64 games
`akiarc` is an archive handler for AKI Corporation's Nintendo 64 games.

## Usage
Running `akiarc` without any arguments will print the program usage.

- Extract files: `akiarc -e ARCHIVE_FILE`
- Build archive: `akiarc -b ARCHIVE_FILE [FILES]`

### Optional Arguments
- `-q` enables quiet mode (only show errors and success messages).

- When building an archive (`-b`), `-l LIST_FILE` can be used to define a list of
files to be included in the archive.

## Building an Archive
`ARCHIVE_FILE` is the output filename.

`[FILES]` is a list of files to be included in the archive.

Alternatively, you can use the `-l` option to pass in a text file with a
list of files to be included in the archive. One file per line, no comments.

## Format Information
	0x00: Number of files (big endian, 4 bytes)
	0x04: Start of offset list (all offsets are big endian, 4 bytes)

The offset list will be padded to `dword` length (8 bytes) with 0xFF values, if necessary.

If a file does not land on a `dword` boundary, it will be padded with 0x00 values.

## License
This program is licensed under the Unlicense. See the `UNLICENSE` file for more information.
