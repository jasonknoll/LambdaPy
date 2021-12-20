
@echo off

cd src
ghc *.hs
mov *.hi ../bin
mov *.exe ../bin
cd ..