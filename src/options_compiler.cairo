mod OptionsCompiler {
    use core::option::OptionTrait;
    use core::traits::TryInto;
    use option_bastion::types::IOption;
    use option_bastion::constants::{ETH_ADDRESS, USDC_ADDRESS, BTC_ADDRESS, CALL, PUT};
    use cubit::f128::types::{Fixed, FixedTrait};

    fn compile_options() -> Array<IOption> {
        let mut options = ArrayTrait::<IOption>::new();

        let feb_01_timestamp = 1706831999;

        options
            .append(
                IOption {
                    maturity: feb_01_timestamp,
                    strike_price: FixedTrait::from_unscaled_felt(2300),
                    name_long: 'ETHUSDC-01FEB24-2300-LONGCALL',
                    name_short: 'ETHUSDC-01FEB24-2300-SHORTCALL',
                    quote_token_address: USDC_ADDRESS.try_into().unwrap(),
                    base_token_address: ETH_ADDRESS.try_into().unwrap(),
                    option_type: CALL,
                    initial_volatility: FixedTrait::from_unscaled_felt(62)
                }
            );

        options
            .append(
                IOption {
                    maturity: feb_01_timestamp,
                    strike_price: FixedTrait::from_unscaled_felt(2400),
                    name_long: 'ETHUSDC-01FEB24-2400-LONGCALL',
                    name_short: 'ETHUSDC-01FEB24-2400-SHORTCALL',
                    quote_token_address: USDC_ADDRESS.try_into().unwrap(),
                    base_token_address: ETH_ADDRESS.try_into().unwrap(),
                    option_type: CALL,
                    initial_volatility: FixedTrait::from_unscaled_felt(62)
                }
            );

        options
            .append(
                IOption {
                    maturity: feb_01_timestamp,
                    strike_price: FixedTrait::from_unscaled_felt(2500),
                    name_long: 'ETHUSDC-01FEB24-2500-LONGCALL',
                    name_short: 'ETHUSDC-01FEB24-2500-SHORTCALL',
                    quote_token_address: USDC_ADDRESS.try_into().unwrap(),
                    base_token_address: ETH_ADDRESS.try_into().unwrap(),
                    option_type: CALL,
                    initial_volatility: FixedTrait::from_unscaled_felt(58)
                }
            );

        options
            .append(
                IOption {
                    maturity: feb_01_timestamp,
                    strike_price: FixedTrait::from_unscaled_felt(2200),
                    name_long: 'ETHUSDC-01FEB24-2200-LONGPUT',
                    name_short: 'ETHUSDC-01FEB24-2200-SHORTPUT',
                    quote_token_address: USDC_ADDRESS.try_into().unwrap(),
                    base_token_address: ETH_ADDRESS.try_into().unwrap(),
                    option_type: PUT,
                    initial_volatility: FixedTrait::from_unscaled_felt(62)
                }
            );

        options
            .append(
                IOption {
                    maturity: feb_01_timestamp,
                    strike_price: FixedTrait::from_unscaled_felt(2100),
                    name_long: 'ETHUSDC-01FEB24-2100-LONGPUT',
                    name_short: 'ETHUSDC-01FEB24-2100-SHORTPUT',
                    quote_token_address: USDC_ADDRESS.try_into().unwrap(),
                    base_token_address: ETH_ADDRESS.try_into().unwrap(),
                    option_type: PUT,
                    initial_volatility: FixedTrait::from_unscaled_felt(62)
                }
            );

        options
            .append(
                IOption {
                    maturity: feb_01_timestamp,
                    strike_price: FixedTrait::from_unscaled_felt(45000),
                    name_long: 'BTCUSDC-01FEB24-45000-LONGCALL',
                    name_short: 'BTCUSDC-01FEB24-45000-SHORTCALL',
                    quote_token_address: USDC_ADDRESS.try_into().unwrap(),
                    base_token_address: BTC_ADDRESS.try_into().unwrap(),
                    option_type: CALL,
                    initial_volatility: FixedTrait::from_unscaled_felt(62)
                }
            );

        options
            .append(
                IOption {
                    maturity: feb_01_timestamp,
                    strike_price: FixedTrait::from_unscaled_felt(46000),
                    name_long: 'BTCUSDC-01FEB24-46000-LONGCALL',
                    name_short: 'BTCUSDC-01FEB24-46000-SHORTCALL',
                    quote_token_address: USDC_ADDRESS.try_into().unwrap(),
                    base_token_address: BTC_ADDRESS.try_into().unwrap(),
                    option_type: CALL,
                    initial_volatility: FixedTrait::from_unscaled_felt(62)
                }
            );

        options
            .append(
                IOption {
                    maturity: feb_01_timestamp,
                    strike_price: FixedTrait::from_unscaled_felt(45000),
                    name_long: 'BTCUSDC-01FEB24-45000-LONGPUT',
                    name_short: 'BTCUSDC-01FEB24-45000-SHORTPUT',
                    quote_token_address: USDC_ADDRESS.try_into().unwrap(),
                    base_token_address: BTC_ADDRESS.try_into().unwrap(),
                    option_type: PUT,
                    initial_volatility: FixedTrait::from_unscaled_felt(62)
                }
            );

        options
            .append(
                IOption {
                    maturity: feb_01_timestamp,
                    strike_price: FixedTrait::from_unscaled_felt(46000),
                    name_long: 'BTCUSDC-01FEB24-46000-LONGPUT',
                    name_short: 'BTCUSDC-01FEB24-46000-SHORTPUT',
                    quote_token_address: USDC_ADDRESS.try_into().unwrap(),
                    base_token_address: BTC_ADDRESS.try_into().unwrap(),
                    option_type: PUT,
                    initial_volatility: FixedTrait::from_unscaled_felt(62)
                }
            );

        options
    }
}
