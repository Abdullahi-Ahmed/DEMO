# Main Script 📜

This script aids in processing the Coalesce output. It provides various functionalities including the creation of several CSV files based on the input data and optional Git repository cloning.

## Table of Contents 📖

1. [Pre-requisites](#pre-requisites)
2. [Function Descriptions](#function-descriptions)
3. [Command-line Usage](#command-line-usage)
4. [Instructions](#instructions)

---

## Pre-requisites 🛠

- Ensure you have all the necessary modules and packages installed:
  - `argparse`
  - `subprocess`
  - `os`
  - `process_csv` (local module)

---

## Function Descriptions 📝

### General Functions:

- **`write_storage_mapping_csv`**: Writes storage mapping data to a CSV file.
- **`write_node_types_csv`**: Writes node types data to a CSV file.
- **`write_database_csv`**: Writes database data to a CSV file.
- **`write_schema_csv`**: Writes schema data to a CSV file.
- **`write_macros_csv`**: Writes macros data to a CSV file.
- **`write_packages_csv`**: Writes packages data to a CSV file.
- **`write_projects_csv`**: Writes projects data to a CSV file.
- **`write_sqltype_csv`**: Writes SQL type data to a CSV file.
- **`write_columns_csv`**: Writes columns data to a CSV file.

---

## Command-line Usage 🖥

To use this script via the command line, you can run the following command:

\```
python <script_name>.py -i <coalesce_output_path> -o <output_coalesce_lineage> -g <git_repo> -p <pat> -b <branch>
\```

### Arguments:

- **`-i` or `--coalesce_output_path`**: (Optional) The output path of coalesce.
- **`-o` or `--output_coalesce_lineage`**: (Required) The directory to store coalesce lineage output.
- **`-g` or `--git_repo`**: (Optional) Git repository URL (GitHub, Bitbucket, GitLab, Azure DevOps).
- **`-p` or `--pat`**: (Optional) Personal Access Token or equivalent for private repositories.
- **`-b` or `--branch`**: (Optional, default="main") Branch to clone from.

---

## Instructions 📋

1. **Clone a Git Repository (Optional)**:
   - If you provide the `-g` argument followed by a Git repository URL, the script will attempt to clone this repository.
   - For private repositories, use the `-p` argument to provide a Personal Access Token (or equivalent).
   - To specify a branch other than the default ("main"), use the `-b` argument.

2. **Specify Input and Output**:
   - Use the `-i` argument to specify the path of your Coalesce output. If the `-g` argument is provided, this will be ignored in favor of the cloned repository.
   - Use the `-o` argument to specify the directory where the script should store the lineage output.

3. **Run the Script**:
   - Execute the script. Upon successful execution, various CSV files will be created in the specified directory.

---

I hope this documentation provides a clear understanding of the script's functionality and usage. If you have further questions or need modifications, let me know! 😊
