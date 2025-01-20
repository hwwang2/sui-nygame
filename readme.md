## publish
``` shell
sui client publish
[warning] Client/Server api version mismatch, client api version : 1.39.3, server api version : 1.40.2
UPDATING GIT DEPENDENCY https://github.com/MystenLabs/sui.git
INCLUDING DEPENDENCY Sui
INCLUDING DEPENDENCY MoveStdlib
BUILDING nygame
warning[W04028]: implicit copy of a constant
    ┌─ \\?\D:\w3f\nygame\sources\nygame.move:130:41
    │
130 │         assert!(coin::value(&u_coin) >= STAKE_COST[cnt-1], EInsufficientBalance);
    │                                         ^^^^^^^^^^ This access will make a new copy of the constant. Consider binding the value to a variable first to make this copy explicit
    │
    = This warning can be suppressed with '#[allow(implicit_const_copy)]' applied to the 'module' or module member ('const', 'fun', or 'struct')

Successfully verified dependencies on-chain against source.
Transaction Digest: Bcj1BVkuBPquADC4ddDpkTjUfKb9MWCF5CCLJAFfQkJ4
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                             │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                                   │
│ Gas Owner: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                                │
│ Gas Budget: 27232000 MIST                                                                                    │
│ Gas Price: 1000 MIST                                                                                         │
│ Gas Payment:                                                                                                 │
│  ┌──                                                                                                         │
│  │ ID: 0x5189ae9b46325f7b981494c142d473941d6d75fa1f30c0ca9002235d7e7bfa08                                    │
│  │ Version: 27796901                                                                                         │
│  │ Digest: 3ECyv3ya6BxVsJyb5k4yREWRaPjQ3MNDDMvd3HiEtcbn                                                      │
│  └──                                                                                                         │
│                                                                                                              │
│ Transaction Kind: Programmable                                                                               │
│ ╭──────────────────────────────────────────────────────────────────────────────────────────────────────────╮ │
│ │ Input Objects                                                                                            │ │
│ ├──────────────────────────────────────────────────────────────────────────────────────────────────────────┤ │
│ │ 0   Pure Arg: Type: address, Value: "0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2" │ │
│ ╰──────────────────────────────────────────────────────────────────────────────────────────────────────────╯ │
│ ╭─────────────────────────────────────────────────────────────────────────╮                                  │
│ │ Commands                                                                │                                  │
│ ├─────────────────────────────────────────────────────────────────────────┤                                  │
│ │ 0  Publish:                                                             │                                  │
│ │  ┌                                                                      │                                  │
│ │  │ Dependencies:                                                        │                                  │
│ │  │   0x0000000000000000000000000000000000000000000000000000000000000001 │                                  │
│ │  │   0x0000000000000000000000000000000000000000000000000000000000000002 │                                  │
│ │  └                                                                      │                                  │
│ │                                                                         │                                  │
│ │ 1  TransferObjects:                                                     │                                  │
│ │  ┌                                                                      │                                  │
│ │  │ Arguments:                                                           │                                  │
│ │  │   Result 0                                                           │                                  │
│ │  │ Address: Input  0                                                    │                                  │
│ │  └                                                                      │                                  │
│ ╰─────────────────────────────────────────────────────────────────────────╯                                  │
│                                                                                                              │
│ Signatures:                                                                                                  │
│    y3vQE18GqyLNVEdZS94XlelH3yYtwCMb8XUtSsX89mlsgmKeySFqFuND8/T9BJU8HR8WxiCj0DUIG/4Ro5tcAQ==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: Bcj1BVkuBPquADC4ddDpkTjUfKb9MWCF5CCLJAFfQkJ4                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 620                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x010b5c541ab5ab0d71889b5f0eb4317eefd0aa298b0df4d4116c3f693b02380f                         │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )  │
│  │ Version: 27796902                                                                              │
│  │ Digest: 6dJK9DbKpnQC8qCv8eSmmJLMnSu4EfBntXs8zW2TXhm1                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x552cc226347f6481d9f2e41648d86e01de852a21e33558cc11fde05fd757384b                         │
│  │ Owner: Shared( 27796902 )                                                                      │
│  │ Version: 27796902                                                                              │
│  │ Digest: 529Fx3HXw3jYrDniNF4Qc3Ya4jgc2ZssxtDqeHJqK7Hh                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x84d46f9474b5bd1aaa00891fcc1420dd4ef25a5b2b7b78c4936575924fef4474                         │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )  │
│  │ Version: 27796902                                                                              │
│  │ Digest: GmBXH2guSR4VZC2MguYrqYp38wGo97kpmSSitQWmjamY                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xe9f640d5fd33ca27bdfaf45bd69b5b9205c3af4e6bc3bc465c4a0215b9004dd6                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: DBizFfH2fr3S7MqCFSjKi5XqzeR8dK29aquHrBKfP2Gx                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x5189ae9b46325f7b981494c142d473941d6d75fa1f30c0ca9002235d7e7bfa08                         │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )  │
│  │ Version: 27796902                                                                              │
│  │ Digest: F1oE5ZdXEvstpRK6inbyY4zTyyCxnRti6mjTjrd7pMCU                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x5189ae9b46325f7b981494c142d473941d6d75fa1f30c0ca9002235d7e7bfa08                         │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )  │
│  │ Version: 27796902                                                                              │
│  │ Digest: F1oE5ZdXEvstpRK6inbyY4zTyyCxnRti6mjTjrd7pMCU                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 25232000 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    ErKXQRGkwCEu9C1bpoLD8Aq7PqkBLR6mqnN5Wvgm3977                                                   │
│    Gtwgse64nSVXhQvmqCpwCe5xJz9N4VypvEGJUy5DyG4e                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭──────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                       │
├──────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                     │
│  ┌──                                                                                                 │
│  │ ObjectID: 0x010b5c541ab5ab0d71889b5f0eb4317eefd0aa298b0df4d4116c3f693b02380f                      │
│  │ Sender: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                        │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )     │
│  │ ObjectType: 0x2::package::UpgradeCap                                                              │
│  │ Version: 27796902                                                                                 │
│  │ Digest: 6dJK9DbKpnQC8qCv8eSmmJLMnSu4EfBntXs8zW2TXhm1                                              │
│  └──                                                                                                 │
│  ┌──                                                                                                 │
│  │ ObjectID: 0x552cc226347f6481d9f2e41648d86e01de852a21e33558cc11fde05fd757384b                      │
│  │ Sender: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                        │
│  │ Owner: Shared( 27796902 )                                                                         │
│  │ ObjectType: 0xe9f640d5fd33ca27bdfaf45bd69b5b9205c3af4e6bc3bc465c4a0215b9004dd6::nygame::State     │
│  │ Version: 27796902                                                                                 │
│  │ Digest: 529Fx3HXw3jYrDniNF4Qc3Ya4jgc2ZssxtDqeHJqK7Hh                                              │
│  └──                                                                                                 │
│  ┌──                                                                                                 │
│  │ ObjectID: 0x84d46f9474b5bd1aaa00891fcc1420dd4ef25a5b2b7b78c4936575924fef4474                      │
│  │ Sender: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                        │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )     │
│  │ ObjectType: 0xe9f640d5fd33ca27bdfaf45bd69b5b9205c3af4e6bc3bc465c4a0215b9004dd6::nygame::AdminCap  │
│  │ Version: 27796902                                                                                 │
│  │ Digest: GmBXH2guSR4VZC2MguYrqYp38wGo97kpmSSitQWmjamY                                              │
│  └──                                                                                                 │
│ Mutated Objects:                                                                                     │
│  ┌──                                                                                                 │
│  │ ObjectID: 0x5189ae9b46325f7b981494c142d473941d6d75fa1f30c0ca9002235d7e7bfa08                      │
│  │ Sender: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                        │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )     │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                        │
│  │ Version: 27796902                                                                                 │
│  │ Digest: F1oE5ZdXEvstpRK6inbyY4zTyyCxnRti6mjTjrd7pMCU                                              │
│  └──                                                                                                 │
│ Published Objects:                                                                                   │
│  ┌──                                                                                                 │
│  │ PackageID: 0xe9f640d5fd33ca27bdfaf45bd69b5b9205c3af4e6bc3bc465c4a0215b9004dd6                     │
│  │ Version: 1                                                                                        │
│  │ Digest: DBizFfH2fr3S7MqCFSjKi5XqzeR8dK29aquHrBKfP2Gx                                              │
│  │ Modules: nygame                                                                                   │
│  └──                                                                                                 │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -25253880                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
```

packageid: 0xe9f640d5fd33ca27bdfaf45bd69b5b9205c3af4e6bc3bc465c4a0215b9004dd6
shared state: 0x552cc226347f6481d9f2e41648d86e01de852a21e33558cc11fde05fd757384b
adminCap: 0x84d46f9474b5bd1aaa00891fcc1420dd4ef25a5b2b7b78c4936575924fef4474




