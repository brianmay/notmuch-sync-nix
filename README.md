# notmuch-sync nix flake

See https://github.com/zenhack/notmuch-sync

Build with

```
$ nix build
error: builder for '/nix/store/nmaril2m32ckrg7v2dzcgbrx1lcw90lj-python3.12-notmuch-sync-0.0.1.drv' failed with exit code 1;
       last 25 log lines:
       > Sourcing python-imports-check-hook.sh
       > Using pythonImportsCheckPhase
       > Sourcing python-namespaces-hook
       > Sourcing python-catch-conflicts-hook.sh
       > Running phase: unpackPhase
       > unpacking source archive /nix/store/p5ypggvdhx09ii3n7w9m88wdc52v245f-source
       > source root is source
       > setting SOURCE_DATE_EPOCH to timestamp 315619200 of file "source/test/test.py"
       > Running phase: patchPhase
       > Running phase: updateAutotoolsGnuConfigScriptsPhase
       > Running phase: configurePhase
       > no configure script, doing nothing
       > Running phase: buildPhase
       > Executing pypaBuildPhase
       > Creating a wheel...
       > pypa build flags: --no-isolation --outdir dist/ --wheel
       > * Getting build dependencies for wheel...
       > * Building wheel...
       > Successfully built notmuch_sync-0.0.1-py3-none-any.whl
       > Finished creating a wheel...
       > Finished executing pypaBuildPhase
       > Running phase: pythonRuntimeDepsCheckHook
       > Executing pythonRuntimeDepsCheck
       > Checking runtime dependencies for notmuch_sync-0.0.1-py3-none-any.whl
       >   - xapian-bindings not installed
       For full logs, run:
         nix log /nix/store/nmaril2m32ckrg7v2dzcgbrx1lcw90lj-python3.12-notmuch-sync-0.0.1.drv
```
