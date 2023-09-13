from rembg import remove
import os

print("====================================================================")
print("              Module: Remove background from images")
print("====================================================================")
print("\n\n\n")
print("!!! MAKE SURE IMAGES YOU WANT TO FORMAT ARE IN './output/[LIST NAME]/[LIST NAME]_PNG' !!!")
print("\n")

folder_name = input("Enter the FOLDER NAME to use (eg: fruits): ")

# Define the input and output folders
input_folder = f'./output/{folder_name}/{folder_name}_WEBP'
output_folder = f'./output/{folder_name}/{folder_name}_WEBP_NO_BG'

# Ensure the output folder exists
os.makedirs(output_folder, exist_ok=True)

for filename in os.listdir(input_folder):
    if filename.endswith(".webp"):
        input_path = os.path.join(input_folder, filename)
        output_path = os.path.join(output_folder, os.path.splitext(filename)[0] + "NO_BG" + ".webp")

        try:
            with open(input_path, 'rb') as i:
                with open(output_path, 'wb') as o:
                    input = i.read()
                    output = remove(input)
                    o.write(output)

            print(f"Removed background from {input_path}")

        except Exception as e:
            print(f"Error processing {input_path}: {str(e)}")

print("============================")
print("          Job done")
print("============================")
