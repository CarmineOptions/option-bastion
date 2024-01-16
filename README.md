# Option Bastion

Smart Contract that holds new options to be added into `Carmine Options AMM`.

## What does it do?

This is the workflow of `OptionBastion`:

- Developer adds new options into the `OptionBastion` and declares, retrieving `CLASS_HASH`
- `Carmine Governance` creates new proposal to upgrade `OptionBastion` with new `CLASS_HASH`
- If the proposal passes `OptionBastion` gets upgraded
- Anyone can call `add_options` function of the `Carmine Governance`, which retrives option in the `OptionBastion` and then deploys them through `Carmine Options AMM`
  - if options were already added, this operation fails and nothing happens
  - otherwise, new options can now be traded through `Carmine Options AMM`

This way, options deployment is decoupled from the `Carmine Governance`, thus simplifying addition of new options and minimizing any risks of introducing bugs into `Carmine Governance`.

### Deployment

To deploy new `OptionBastion` you will need `scarb` and `starkli`.

First build the smart contract using `scarb`.

```sh
scarb build
```

Then declare built contract using `starkli`. This will print the `CLASS_HASH`, that will be used in the next step.

```sh
starkli declare target/dev/option_bastion_OptionBastion.contract_class.json
```

Finally deploy the class hash and specify owner (should be Carmine Governance).

```sh
starkli deploy CLASS_HASH GOVERNANCE_ADDRESS
```

### Upgrade

To upgrade existing `OptionBastion` instance, simply declare new `CLASS_HASH` using the above steps.

Then simply call `upgrade` function with the new `CLASS_HASH` as the argument. The `upgrade` function can only be executed by the contract owner! This should be Carmine Governance, but if the owner account cannot be accessed, new instance needs to be deployed, as specified above.
