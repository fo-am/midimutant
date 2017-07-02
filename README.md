Made in collaboration with Aphex Twin, the midimutant learns how to
program your DX7 synth so you don't have to.

Equipped only with a microphone input and midi output, the midimutant
runs on a Raspberry Pi and uses artificial evolution to grow new
sounds on hardware synthesisers that mimic an example sound you
provide.

Coming soon: source code and instructions on how to build your own.

How it works: Every sound in a population of initially random patches
is sent and auditioned via sysex midi messages, sampled and checked
for similarity using MFCC analysis. The best patches are chosen to
form the next generation using the sysex patch data as genetic
material, converging (most of the time) on similar sounds. Unlike a
neural network or machine learning algorithms, the artificial
evolution does not need to model the underlying parameter space -
i.e. how the synth internally functions to create sound. Midimutant
can therefore be used on any synthesiser with a documented sysex dump
format.
