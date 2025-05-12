import os

# Define the target folder
folder_path = r"C:\Users\timothy.pluimer\Downloads\Data Engineering\Data-Engineering-1\344\344.3"

# Iterate over all files in the folder
for filename in os.listdir(folder_path):
    # Construct full file path
    full_path = os.path.join(folder_path, filename)

    # Skip if it's a directory
    if os.path.isfile(full_path):
        # New filename with prefix
        new_filename = "TJ_" + filename
        new_full_path = os.path.join(folder_path, new_filename)

        # Rename the file
        os.rename(full_path, new_full_path)
        print(f'Renamed: {filename} -> {new_filename}')

if not os.path.exists(new_full_path):
    os.rename(full_path, new_full_path)
    print(f'Renamed: {filename} -> {new_filename}')
else:
    print(f'Skipped (already exists): {new_filename}')
