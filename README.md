# NumSim


## Installation Instructions

1. Install Octave.:  https://www.gnu.org/software/octave/ 
2. Download the nurbs Pacakge from:  http://octave.sourceforge.net/nurbs/index.html
3. At Octave Command Prompt type   ( Same directory as the downloaded file)
   1. pkg install nurbs-version.tar.gz
   2. pkg load nurbs

## Code layout

The code is structured as follows:

1. A data store class will act as a repository for GIS information. This will be in charge 
	of data storage, caching and retrieval. The data itself may be 
	* Unstructured (E.g. Land value information)
	* Structured (Altitude data) @akulsareen

	In both cases an interpolation scheme is needed to answer queries that don't lie at 
	points. This will have to be a fast method of the class. @akashrajkn
2. A cost function which will return the cost of a track represented by a BSpline. The 
	arguments to the cost function will be the control vertices and other parameters.
3. A solver function which optimizes the cost
4. A visualization tool to show the curve superimposed on the GIS data.

## Documentation

### Data Store API

### BSpline API (Octave toolkit)

### Cost function documentation

### Visualization API
