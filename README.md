# Inject_Dylib
Swift code to programmatically perform dylib injection. You can also use this (or the manual method of dylib injection from the command line) to validate/test some of the findings from my EntitlementChecks scripts (https://github.com/cedowens/EntitlementCheck).

## Steps:

1. Build your injection dylib to do whatever function you desire (ex: pop calc, print text to stdout, etc.)
2. In the Inject_Dylib **main.swift** file, edit the binpath variable value and enter the path to the application you want to inject into
3. In the Inject_Dylib **main.swift** file, edit the maliciousDylibPath variable value and enter the name of the injection dylib you want to use
4. Build the Inject-Dylib project (by default Xcode will drop the binary to **~/Library/Developer/Xcode/DerivedData/Inject_Dylib-[random]/Build/Products/Debug**)
5. Place your injection dylib in the same folder as the Inject_Dylib binary
6. > ./Inject_Dylib

The sample code here injects into GarageBand (which does not have HardenedRuntime enabled) and uses the included calc.dylib (pops calculator) for the injection.

![Image](example.gif)
