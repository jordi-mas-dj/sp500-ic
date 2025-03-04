
mkdir exbio
cd exbio
#tar -xvzf ../10k_sp500-exbio-A-B_20250228.tar.gz
#tar -xvzf ../10k_sp500-exbio-C-D_20250228.tar.gz
#tar -xvzf ../10k_sp500-exbio-E-G_20250228.tar.gz
#tar -xvzf ../10k_sp500-exbio-H-L_20250228.tar.gz
#tar -xvzf ../10k_sp500-exbio-M-O_20250228.tar.gz
#tar -xvzf ../10k_sp500-exbio-P-R_20250228.tar.gz
#tar -xvzf ../10k_sp500-exbio-S-T_20250228.tar.gz
#tar -xvzf ../10k_sp500-exbio-U-Z_20250228.tar.gz

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