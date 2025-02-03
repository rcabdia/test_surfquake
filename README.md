# Test case for surfQuake 

In core library the user will find the scripts designed to run a full surfQuake example. From making a project, picking phase up to MTI. The equivalent approach is found as a Command Line Interface inside folder CLI.

Just replace folder paths hardcoded in the scripts by user **absolute paths**. 
Original outputs are inside the folder outputs, we recommend that the user follow the same structure (no mandatory of course)

You will find in this repository two examples (Andorra and Granada), ready to run using surfQuake core. The structure is as follows:

	- CLI (Command Line Interface): run_surfquake.sh  is a scrip in bash where you can adpt your paths to test the Andorra example from the CLI.

	- Core_Library:

		- run_mini_catalog.py

		- run_mini_mti.py

		- run_mini_nll.py

		- run_mini_picking.py

		- run_mini_project.py

		- run_mini_real.py

		- run_mini_source.py

	- inputs: Basically configurations files to run surfQuake

		- configs:
			- source_spec.conf
			- nll_config.ini
			- real_config.ini
			- mti_config_mini_test.ini (Warning, set here the path to your model)

		- metadata: stationxml file of the stations/channels used in the example

		- model_mti: 1D Earth Velocity Model for MTI

		- model1D: 1D Earth Velocity Model for Event location

		- waveforms_cut: Raw mseed files

	- outputs: Expected outputs after running surfQuake

		- catalog:
			- catalog.xml -> Format obspy catalog object
			- catalog_surf.txt -> txt Format file output of surfQuake

		- mti 

		- nll

		- picks

		- real

		- source





