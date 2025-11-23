# open-policy-agent-snap
The snap package for the Open Policy Agent. The current version is v1.10.1. This repo tries to match with the OPA releases.
So, there will be a new version whenever there is an OPA release.

## Install

To install this snap, please run

```
sudo snap install open-policy-agent
```


## Usage

By default, binaries from snaps have to be installed as `snap-name.binary-name`. This is not very convenient. So, the snap
has added an alias named `opa` for this binary. But by snap convention, a snapstore administrator will have to approve this
alias for it to be enabled on install. Until then, the following step is needed

```
sudo snap alias open-policy-agent.opa opa
```

Once the previous step is done, you can use it as `opa`. For example,

```
opa version
```


If you prefer not to do the alias step, you will have to invoke it as follows

```
open-policy-agent.opa version
```
