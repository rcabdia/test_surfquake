<img src="logo/surfQuake.png" width="600">

# Test case for surfQuake 

Welcome to the SurfQuake Test Case repository. Here, you'll find everything you need to run a full SurfQuake example, from project setup to phase picking and MTI (Moment Tensor Inversion). This guide provides a clear structure for testing SurfQuake using two predefined examples: Andorra and Granada.

## How to Use This Repository

1. Core Library

Inside the Core_Library directory, you'll find scripts designed to execute a complete SurfQuake workflow. The same functionality is available via a Command Line Interface (CLI) in the CLI folder.

2. Structure
The repository is structured as follows:

	- CLI (Command Line Interface): run_surfquake.sh is a script in bash that allows the user to customise paths to test the Andorra & Granada example from the CLI.

	- Core_Library: Scripts required for running different SurfQuake components:

		- run_mini_catalog.py

		- run_mini_mti.py

		- run_mini_nll.py

		- run_mini_picking.py

		- run_mini_project.py

		- run_mini_real.py

		- run_mini_source.py

	- Inputs (Configuration and Model Files): Contains necessary configuration files for running SurfQuake:

		- configs:

			- source_spec.conf
			- nll_config.ini
			- real_config.ini
			- mti_config_mini_test.ini (Warning, set here the path to your model)

		- metadata: StationXML files for stations/channels used in the example.

		- model_mti: 1D Earth Velocity Model for MTI

		- model1D: 1D Earth Velocity Model for Event location

		- waveforms_cut: Raw mseed files

	- outputs: Expected outputs after running surfQuake

		- catalog:

			- catalog.xml -> Format obspy catalog object
			- catalog_surf.txt -> txt Format file output of surfQuake

		- mti → Moment Tensor Inversion results

		- nll → NonLinLoc results

		- picks → Phase picking results

		- real → Associator processing outputs

		- source → Source inversion results

3. Recommendations

Original outputs are stored inside the outputs/ folder.
We recommend following the same structure to maintain organization (though this is not mandatory).
Ensure that absolute paths are correctly set to avoid errors during execution.

If you encounter any issues or need further clarification, feel free to contribute or raise an issue in the repository https://github.com/rcabdia/SurfQuake/issues.

Happy Quaking! 🌍




