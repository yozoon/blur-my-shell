# Todo

Nn means how important is the elements:

- N1 -> MAJOR, needed for release
- N2 -> IMPORTANT, to do soon after release
- N3 -> MINOR, to do when possible

- [x] blur panel
  - [x] fix artefacts when button clicked
  - [x] automatically change background/text color so that we don't need `smart transparent topbar` extension
  - [ ] blur for each monitor?  -> N3
  - [x] allow the use of corners || hide them?  -> N3
  - [x] update blur on size changed (required for `hide top bar`)

- [x] blur `dash to dock`
  - [x] update dash blur size when dash size changes
  - [x] fix artefacts on mouse hovering
  - [x] allow the use of corners || hide them?  -> N2
  - [x] blur for each monitor
  - [x] update on monitor plug in/out ! NEEDS TESTING
  - [x] fix the dash not being able to be enabled again
  - [ ] remove icons' shadow on hover?  -> N2

- [x] blur overview
  - [x] remove panel/dash blur on overview
  - [x] blur for each monitor
  - [x] update on monitor plug in/out ! NEEDS TESTING
  - [x] fix effect being disabled when background changes
  - [x] make getting out of overview more responsive (so that effects do not blend for some milliseconds) -> N2
  - [x] add an ease in/out animation  -> N2
  - [ ] blur app folders popups -> N3

- [x] blur lockscreen -> N1
  - [x] set lockscreen blur effect to the same intensity as other components  -> N1

- [x] blur `dash to panel`  -> N2

- [x] blur `ubuntu panel` -> N2

- [x] blur vanilla dash -> N1
  - [ ] remove borders of vanilla dash  -> N2

- [x] allow changing blur settings  -> N1
  - [x] choose which parts to blur  -> N2
  - [ ] define blur settings (sigma/brighness) for each part? (probably not as they are disabled on overview)  -> N2

- misc
  - [ ] fix the "shadows" issue -> [gitlab.gnome.org](https://gitlab.gnome.org/GNOME/gnome-shell/-/issues/2857)
  - [ ] fix the "overview opacity" issue
  - [ ] fix the "screenshot" issue -> shows an audit on journalctl
    - `sept. 25 17:16:49 main audit[86871]: ANOM_ABEND auid=1000 uid=1000 gid=1000 ses=3 subj=unconfined_u:unconfined_r:unconfined_t:s0-s0:c0.c1023 pid=86871 comm="gnome-shell" exe="/usr/bin/gnome-shell" sig=11 res=1`
  - [x] fix error `The meta of type 'ShellBlurEffect' with name '<unknown>' is already attached to actor 'StWidget'` at launch
  - [x] verify that we proprely disable the extension (no error + no big allocation left)
  - [x] use names instead of cached instances for actors and widgets (may be less buggy and painful)
  - [x] publish the extension (beta) when ~ready  -> N1

finally: make `Shell.BlurEffect` fixed and available in `css`
