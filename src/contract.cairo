use starknet::ContractAddress;
use starknet::ClassHash;
use option_bastion::types::IOption;

#[starknet::interface]
trait IOptionBastion<TContractState> {
    fn upgrade(ref self: TContractState, new_class_hash: ClassHash);
    fn get_options(self: @TContractState) -> Array<IOption>;
}

#[starknet::contract]
mod OptionBastion {
    use core::array::ArrayTrait;
    use core::option::OptionTrait;
    use core::traits::TryInto;
    use starknet::ContractAddress;
    use starknet::ClassHash;
    use starknet::syscalls::replace_class_syscall;
    use starknet::get_caller_address;
    use option_bastion::types::IOption;
    use option_bastion::options_compiler::OptionsCompiler;


    #[storage]
    struct Storage {
        owner: ContractAddress
    }

    #[constructor]
    fn constructor(ref self: ContractState, owner: ContractAddress) {
        self.owner.write(owner);
    }

    #[external(v0)]
    impl OptionBastion of super::IOptionBastion<ContractState> {
        fn upgrade(ref self: ContractState, new_class_hash: ClassHash) {
            let owner = self.owner.read();
            let caller = get_caller_address();

            assert(owner == caller, 'Only owner can upgrade');
            replace_class_syscall(new_class_hash);
        }
        fn get_options(self: @ContractState) -> Array<IOption> {
            OptionsCompiler::compile_options()
        }
    }
}
