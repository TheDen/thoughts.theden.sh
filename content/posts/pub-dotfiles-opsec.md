---
title: "Are Your Public Dotfiles Revealing Too Much?"
date: "2025-02-04"
draft: false
---

# Why is it a Problem?

Committing dotfiles to a public git repository is now pretty common. Oftentimes people include their `.bashrc` without much thought. However, information in one's `bashrc` could potentially leak sensitive information — for example:

- `ssh` connection aliases that expose server IPs/hostnames, usernames, and potentially private key locations and ciphers
- AWS account IDs via aliases and functions, for example when a user aliases authentication with ECR — [a basic GitHub search reveals many in the wild](https://github.com/search?q=%22amazonaws.com%22+%22docker+login%22+path%3A.bashrc&type=code)
- A list of installed software on machine, via aliases, completions, functions etc.
- Absolute paths could reveal the home directory — exposing the user `id` name
- Aliases that leak server information, for example `kubectl` aliases could reference a cluster name, or namespaces, deployments etc.

There could be a lot more examples, but you get the idea.

# Worth Worrying About?

Depends. I think everyone knowing that I use `kubectl` and `git` wouldn't be surprising. Having an `ssh` alias to a public IP would be a red flag for me. Of course, for perfect OPSEC, not committing dotfiles to a public git repo would work.

# Workarounds?

A simple solution to this problem is to create a private `.bashrc` file that is not committed to a public repository.

For example, I have a `~/.bashrc_private` file, which contains `ssh` aliases to servers that I don't want to share with the public.

Then in `.bashrc` or `.bash_profile` I source `.bashrc_private`

```shell
source ~/.bashrc_private
```

(This can sit anywhere in the file, though I append it at the end)

Regardless of the risk-factors, I suggest auditing your publicly available dotfiles to prevent unnecessary exposure to bad actors.
