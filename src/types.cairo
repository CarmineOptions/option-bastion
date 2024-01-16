use starknet::ContractAddress;
use cubit::f128::types::Fixed;
use core::serde::Serde;

type OptionType = felt252;

#[derive(Drop, Serde)]
struct IOption {
    maturity: u64,
    strike_price: Fixed,
    name_long: felt252,
    name_short: felt252,
    quote_token_address: ContractAddress,
    base_token_address: ContractAddress,
    option_type: OptionType,
    initial_volatility: Fixed
}
