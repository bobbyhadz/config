# tmux

tmux **runs your window in a process**, that's **not tied to the session**. If
you ssh to a server, launch tmux, execute commands and the ssh connection
crashes, the process doesn't end, you can just reconnect and continue working in
the same session.

# tmux shortcuts:

The default **prefix** for `tmux` is `ctrl + b`.

**create a new session, specifying a name**:

- `tmux new -s mySessionName` => **Don't nest tmux sessions, create them from
  the normal zsh state**

**create a new window in the session**:

- `ctrl + b` -> `c` => now we are in **window 1** - the `*` next to the terminal
  name indicates the active window

**create pane to the right**:

- `ctrl + b` -> `%`

**create pane to the bottom**:

- `ctrl + b` -> `"`

**navigate between panes**:

- `ctrl + b` -> `left arrow` / `right arrow` / `top arrow` / `bottom arrow` =>
  Notice that the `active` pane has a green outline around it.

**toggle focus a pane, hiding the other panes**:

- `ctrl + b` -> `z` => Focuses a pane, hiding the other panes. Simply press it
  again to show/hide.

**move a pane to the left / right**

- `ctrl + b` => `}` - move pane to the right
- `ctrl + b` => `{` - move pane to the left

**change layout between panes**

- `ctrl + b` => `space` => click it until you get the desired layout

**resize a pane**

- `HOLD ctrl + b` -> `arrow keys` to resize in a particular direction.

**close a pane**:

- `ctrl + d` or type `exit`

**Switch to window X**:

- `ctrl + b` -> `0` => now we are in **window 0**. Notice the `*` symbol next to
  the active window name in the bottom bar.

**rename window**:

- `ctrl + b` -> `,` => **delete the old** and **type in the new window name**

**close a window**:

- `ctrl + d` or type `exit`

**detach a session**:

- `ctrl + b` -> d => brings you back to your default terminal. **Saving in the
  terminal at the state from when you detached**. These sessions will be
  **preserved until the system reboots**.

**list tmux detached sessions**:

- `tmux ls`

**attach to a session**:

- `tmux attach -t 0` => **0** being the **default session name**, it might be
  different if you change it. It **brings you back to the state from when you
  detached the terminal**.

**rename a session**:

- `tmux rename-session -t 0 newSessionName` => 0 being the default session name
  for session at index 0. **You can also tab for command-name, flag, or session
  name autocompletion.**

**delete a session**:

- `tmux kill-session -t sessionName` => If you press `ctrl+d` inside an empty
  session it kills it as well.
