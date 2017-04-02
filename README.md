 # RISC OS CVS to GIT converter

 The program should on any Unix and requires Perl, Xz, Git and CVS. It converts a local copy of the the [RISC OS Open CVS repository](https://www.riscosopen.org/content/downloads/risc-os-tarballs) to [Git](https://git-scm.com/).

 It probably won't work on RISC OS unmodified, however patches and pull requests to fix this are welcome.

 ## How to use

 ```bash
 ./cvs2git --git ../GIT --cvsroot ~/RISC_OS/cvsroot
 ```

 Will read the CVS repository in `~/RISC_OS/cvsroot` and create many Git repositories in `../GIT`. A Git repository will be created for each component, and in addition a Git repository called `unified` which contains a branch for every product which reference the other repositories as [submodules](https://git-scm.com/book/en/v2/Git-Tools-Submodules), for example `IOMDHALDev-submodules`  and `Disc-submodules`.

 If you add the option `--unified`:

 ```bash
 ./cvs2git --git ../GIT --cvsroot ~/RISC_OS/cvsroot --unified
 ```

 A single Git repository will be created with branches for each component, the `-submodules` suffixed branches as above, a `-unified` suffixed branch for each component which doesn't use submodules, and the `master` branch which contains all the products.

 Since a checkout of the `master` contains all products it is ideal as a base for future development work.

 ## Problems

 * Some versions are untagged in CVS and therefore missing, the provided script `add_missing_cvs_tags` will add the required tags to CVS.
 * `castle/RiscOS/Utilities/Release/builder` is omitted because the CVS repository is corrupt.
 * `castle/RiscOS/Utilities/Release/crc32` is omitted because there is no `VersionNum` file.
 * Git commit hashes are not stable between versions of this converter.
 * It is slow, especially `--unified` mode.

 ## Todo

 - [ ] Don't include stable product files in recent parts of `master` branch as it adds clutter.
 - [ ] Add README and Licence files.
 - [ ] Strip dynamic dependencies?
 - [ ] Canoncalise white space.
 - [ ] Replace log message "/home/srevill-nfs/sandbox/rool/msg.txt" with something meaningful.
 - [ ] Join up the 2 parts of `VFPSupport`.
 - [ ] Join up the split history of `InetSetup`.
 - [ ] Convert CVS usernames to names (and email addresses if wished).
 - [ ] Try building some or all of the history.
 - [ ] Declare the conversion stable.
