import qbs

MachinekitApplication {
    name: "Demo"
    halFiles: ["Demo.hal"]
    bbioFiles: ["Demo.bbio"]
    compFiles: ["kalman.comp"]
    pythonFiles: ["gyroaccel.py", "libraries"]
    type: "machinekit"
    uis: ["../HelloWorld/HelloWorld.Control"]
}

