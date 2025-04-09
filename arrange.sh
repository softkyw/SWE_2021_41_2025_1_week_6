
FILES_DIR="./files"

for file in "$FILES_DIR"/*; do

  filename=$(basename "$file")


  first_char=$(echo "${filename:0:1}" | tr 'A-Z' 'a-z')


  target_dir="./$first_char"


  if [ -d "$target_dir" ]; then
    mv "$file" "$target_dir/"
  fi
done
