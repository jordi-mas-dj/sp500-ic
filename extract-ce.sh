
mkdir ce 
cd ce
tar -xvzf ../10k_sp500_A_D_20240228.tar.gz
tar -xvzf ../10k_sp500_E_M_20240228.tar.gz
tar -xvzf ../10k_sp500_N_Z_20240228.tar.gz 
for letter in {A..Z}; do
  find . -maxdepth 1 -type f -name "$letter*" | while read file; do
    [ -e "$file" ] || continue  # Skip if no files match
    fname=$(basename "$file")
    dir="${fname:0:1}"  # Extract the first letter
    mkdir -p "$dir"    # Create directory if it doesn't exist
    mv "$file" "$dir/" # Move file to the directory
    echo mv "$file" "$dir/"
  done
done