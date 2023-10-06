
# json-to-env

`json-to-env` is a simple bash script utility to locally convert JSON files into `.env` format. It uses the `jq` tool for JSON parsing.

## Requirements

- `jq`: The script uses jq to parse and convert the JSON data.
- Flat JSON Structure: The provided JSON file should have a flat structure. Nested JSON structures are not supported for conversion.

## Usage

```bash
./json-to-env.sh <input_json_file> <output_env_file>
```

- `<input_json_file>`: The path to your source JSON file.
- `<output_env_file>`: The path where you want the resulting .env file to be saved.

### Example:

```bash
./json-to-env.sh config.json config.env
```

## Installation

1. Clone this repository or download the `json-to-env.sh` file directly.
2. Provide execute permissions to the script:

```bash
chmod +x json-to-env.sh
```

3. Ensure `jq` is installed. If not, you can generally install it using package managers:

For Ubuntu/Debian:
```bash
sudo apt-get install jq
```

For macOS (using Homebrew):
```bash
brew install jq
```

For other distributions or platforms, please check the `jq` [official documentation](https://stedolan.github.io/jq/download/).

## Contributing

Feel free to fork this repository, make changes, and submit pull requests. Any kind of contributions are welcome!

## License

[MIT](https://github.com/ausaf007/json-to-env/blob/master/LICENSE)
