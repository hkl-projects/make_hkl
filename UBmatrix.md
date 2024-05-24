# UB matrix
Andrei Savici
* TAS
    * https://github.com/mantidproject/documents/blob/main/Design/UBMatriximplementationnotes.pdf
* Euler angles
    * https://en.wikipedia.org/wiki/Euler_angles

* 2dsin(theta)=lambda
* E=81.81/(lambda^2), E=2.072 k^2
* Q^2 = ki^2 +kf^2 - 2ki kf cos(s1)
* Qlab = 2Pi R UB (h,k,l)
* Experiment in plane: phi = 0, sin(phi)=0, cos(phi) = +/-1
* Theta -> s1 for TAS
* phi ->0, 180, left or right
* R matrix -> goniometer, 
* B matrix: a,b,c (alpha,beta, gamma)
* U - align sample Bragg peak
* m1/m2 -> mono (s1-> crystal, s2-> 2theta, )
* s1/s2 -> sample
* a1/a2 -> analyzer

* Fix Position of detectors, gonio, gonio-type, UB -> compute hkl, dE
* hkl, dE Ei/Ef -> m2, a2, s2, gnoio angles (constrains)
* Calc UB matrix (positions, tilts)

Wavelength [Angstrom]
Energy [meV] = 81.80420236 /(Wavelength^2 [Angstron])
Wavevector k [1/Angstrom] =  6.28318531 / Wavelength[Angstrom]
velocity [m/s] = 3956.03397606 / Wavelength [Angstrom]

