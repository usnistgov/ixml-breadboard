[Describe the PR]

### Final check:

Within the scope of work,

- [ ] All readme files and documentation resources are current
- [ ] Initial comments look reasonable
- [ ] Everything touched has been checked for parsing as appropriate (wf/valid)
- [ ] Scripts are all executable (permissions `+x`)

---
:information_source: To update permissions on all `*.sh` files via git (from project directory):

```bash
$ find . -name '*.sh' | xargs git update-index --chmod=+x
```
