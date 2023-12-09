# Serotonin Study Song 

This piece of Sonic Pi generated music was inspired by the hormones that keep us relaxed and running as human beings. I was inspired by serotonin, dopamine, and melotonin. For each hormone, I looked at NMR spectra, and translated the cluster midpoint in ppm to an integer mod 12 to get a note from each cluster. For example, serotonin has two peaks centered at 7.41 ppm, which is first multiplied by 10 and rounded to an integer to get 74. Then 74 mod 12 is 2, which corresponds to the note D (specifically D5 in Sonic Pi). For each hormone, I got the notes, then arranged the notes in a pleasing melody with a harmonious chord underneath. Additionally, there is code to play the notes for each hormone in a randomized order for a set duration and amplitude. 

Several moments of chord and melody progressions were planned ahead of time and commented out. I used live coding to add and take away these elements while recording, which resulted in the audio files found in this repository. The .rb file has more information about what parts were commented out when, but the file follows generally in order. Additionally, the song begins more upbeat, with serotonin, then switches to melotonin by the end for a mellow conclusion. 

### Sources 

Serotonin NMR spectrum: https://hmdb.ca/spectra/nmr_one_d/1294

Dopamine NMR spectrum: https://hmdb.ca/spectra/nmr_one_d/1070

Melatonin NMR spectrum: https://hmdb.ca/spectra/nmr_one_d/1693
