# classroom_addons

## Classes

### classroom_addons::remote_answers

This sets up a remote so that students can grab the answers, studensts et it up like so:

```
git fetch answers
git reset maswers/[lab number] --hard
git push --hard
```

Instructor adds labs by branching at the end of the lab


#### Params

`master_name`

The username of the machine to use as the answers master




