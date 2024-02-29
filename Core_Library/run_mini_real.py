from surfquakecore.real.real_core import RealCore

# Inventory Information
inventory_path = "/Volumes/LaCie/all_andorra/mini_test/inputs/metadata/inv_all.xml"

# picking Output of PhaseNet
picks_path = '/Volumes/LaCie/all_andorra/mini_test/outputs/picks'

# Set working_directory and output
working_directory = '/Volumes/LaCie/all_andorra/mini_test/outputs/real/working_directory'
output_directory = '/Volumes/LaCie/all_andorra/mini_test/outputs/real/output_directory'

# Set path to REAL configuration
config_path = '/Volumes/LaCie/all_andorra/mini_test/inputs/configs/real_config.ini'
# Run association
rc = RealCore(inventory_path, config_path, picks_path, working_directory, output_directory)
rc.run_real()
print("End of Events AssociationProcess, please see for results: ", output_directory)