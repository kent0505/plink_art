import re

# Read the Dart file
dart_file_path = './lib/core/models/game.dart'

# Read the Dart file content
with open(dart_file_path, 'r') as file:
    dart_code = file.readlines()

# Initialize counters
game_counter = 1
inside_game_list = False

# Process each line
with open('game.dart', 'w') as output_file:
    for line in dart_code:
        # Check if we're inside the list of Game objects
        if 'List<Game>' in line and '[' in line:
            inside_game_list = True

        if inside_game_list and 'Game(' in line:
            # Check if the line already has a comment with a number
            if '//' not in line:
                # Append the number to the end of the line as a comment
                line = re.sub(r'(\s*Game\(.*\)),', r'\1, // {}'.format(game_counter), line)
                game_counter += 1

        # End of the list
        if inside_game_list and '];' in line:
            inside_game_list = False

        # Write the modified or unmodified line to the output file
        output_file.write(line)

print(f"Numbers added to {game_counter - 1} Game instances.")