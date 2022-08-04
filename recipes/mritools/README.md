
----------------------------------
## mritools/3.3.0 ##
Unwrapping of 3D and 4D datasets. Coil combination of 5D datasets. And Susceptibility weighted imaging

mritools contains ROMEO, CLEARSWI and MCPC3DS



Example:
```
Example usage for single-echo or multiple time points with identical echo time (fMRI):
$ romeo ph.nii -m mag.ii -k nomask -o outputdir

Example usage for a 3-echo Scan with TE = [3,6,9] ms:
$ romeo ph.nii -m mag.ii -k nomask -t [3,6,9] -o outputdir

Note that echo times are required for unwrapping multi-echo data.
```

More documentation can be found here: https://github.com/korbinian90/romeo and https://github.com/korbinian90/CLEARSWI.jl

To run applications outside of this container: ml mritools/3.3.0

Citation:
```
romeo: Dymerska, B., Eckstein, K., Bachrata, B., Siow, B., Trattnig, S., Shmueli, K., Robinson, S.D., 2020. Phase Unwrapping with a Rapid Opensource Minimum Spanning TreE AlgOrithm (mritools). Magnetic Resonance in Medicine. https://doi.org/10.1002/mrm.28563

MCPC-3D-S Coil Combination: Eckstein, K., Dymerska, B., Bachrata, B., Bogner, W., Poljanc, K., Trattnig, S., Robinson, S.D., 2018. Computationally Efficient Combination of Multi-channel Phase Data From Multi-echo Acquisitions (ASPIRE). Magnetic Resonance in Medicine 79, 2996–3006. https://doi.org/10.1002/mrm.26963

clearswi: Korbinian Eckstein, Beata Bachrata, Gilbert Hangel, Georg Widhalm, Christian Enzinger, Markus Barth, Siegfried Trattnig, Simon Daniel Robinson,
Improved susceptibility weighted imaging at ultra-high field using bipolar multi-echo acquisition and optimized image processing: CLEAR-SWI,
NeuroImage, Volume 237, 2021, https://doi.org/10.1016/j.neuroimage.2021.118175.https://doi.org/10.1016/j.neuroimage.2021.118175
```

----------------------------------
