
# Wappia tools

1. Place this folder somewhere in your PATH. 
2. Copy the env.sh.example to env.sh and replace each key with your own. 
3. Install `jq`, probably `sudo apt install jq`
4. Install `hub`, from Github, if you need `purr` command
5. You will need to set some environment variables, as listend in the [env.sh.example](./env.sh.example) file. You may set them wherever you want, but for more granular control we recomend using a tool such as [direnv](https://direnv.net/). This way you can have different settings for different organisations and projects.


## Club

This tool makes it easier to work with Clubhouse and Github. It has been thoroughly battle tested.

If you have any uncommited changes the tool will refuse to do anything.


### `club` 

checks out master.


### `club help` 

prints help.


### `club <storyId>`, Example: `club 1234`

- If there's no branch for the given Clubhouse Story it will check out master, fetch latest changes, and create a new branch according to the [Clubhouse branch conventions](https://help.clubhouse.io/hc/en-us/articles/207540323-Using-the-Clubhouse-GitHub-Integration-with-Branches-and-Pull-Requests). It will also move the Story to In Development (todo: column should be configurable).

- If anyone has already created a branch for this Clubhouse Story it will be checked out. Note: this works even if the story belongs to someone else.


## Purr

Deploys and creates pull requests based on Clubhouse information.

Sets reviewer according to env.sh

### `purr`

Push all commits, build current branch, deploy to <Owner>/ch<StoryId>.wappia.lingio.net, and create a pull-request with appropriate links to deploy and Clubhouse Story. Sets reviewer according to env.sh


### `purr <company>`

Push all commits, build current branch, deploy to <Owner>/ch<StoryId>.<company>.wappia.net, and create a pull-request with appropriate links to deploy and Clubhouse Story.


### `purr <company> <branch>`

Push all commits, build current branch, deploy to <branch>.<company>.wappia.net, and create a pull-request with appropriate links to deploy and Clubhouse Story.
