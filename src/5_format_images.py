from PIL import Image
import os


print("====================================================================")
print("                    Module: Format images")
print("====================================================================")
print("\n\n\n")
print("!!! MAKE SURE IMAGES YOU WANT TO FORMAT ARE IN './output/[LIST NAME]/[LIST NAME]_PNG' !!!")
print("\n")

folder_name = input("Enter the FOLDER NAME to use (eg: fruits): ")

print(folder_name)

# Define the input and output folders
input_folder = f'./output/{folder_name}/{folder_name}_PNG'
output_folder = f'./output/{folder_name}/{folder_name}_WEBP'

# Ensure the output folder exists
os.makedirs(output_folder, exist_ok=True)

# Loop through the files in the input folder
for filename in os.listdir(input_folder):
    if filename.endswith(".png"):
        input_path = os.path.join(input_folder, filename)
        output_path = os.path.join(output_folder, os.path.splitext(filename)[0] + ".webp")

        try:
            # Open the PNG image
            img = Image.open(input_path)

            # Resize the image to 300x300 pixels
            img = img.resize((300, 300))

            # Save it as WebP format
            img.save(output_path, "webp", quality=85)

            print(f"Converted {input_path} to {output_path}")

        except Exception as e:
            print(f"Error processing {input_path}: {str(e)}")

print("============================")
print("         Job done")
print("============================")
