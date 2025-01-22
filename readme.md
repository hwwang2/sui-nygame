## publish
``` shell
Successfully verified dependencies on-chain against source.
Transaction Digest: 3JYKzndgpK4RwfUSHuLyhbLDmpSxCD8mxV9Z2gWfR4J1
╭──────────────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Data                                                                                             │
├──────────────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Sender: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                                   │
│ Gas Owner: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                                │
│ Gas Budget: 27186400 MIST                                                                                    │
│ Gas Price: 1000 MIST                                                                                         │
│ Gas Payment:                                                                                                 │
│  ┌──                                                                                                         │
│  │ ID: 0x5189ae9b46325f7b981494c142d473941d6d75fa1f30c0ca9002235d7e7bfa08                                    │
│  │ Version: 27796903                                                                                         │
│  │ Digest: EvarvMH3t7KPB4JwjDs28k9mmacD1dQtV9HmVU8YSvmw                                                      │
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
│    Ltx1wJTocHNjkPp4j0laC5W56iijSfWabSLWJCdgb4eosmm8nzT+4B4I/0PvhGRDFhENOeamKjNbSkuhUUHABg==                  │
│                                                                                                              │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Transaction Effects                                                                               │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Digest: 3JYKzndgpK4RwfUSHuLyhbLDmpSxCD8mxV9Z2gWfR4J1                                              │
│ Status: Success                                                                                   │
│ Executed Epoch: 622                                                                               │
│                                                                                                   │
│ Created Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x0f697927d8e6a4509ae510a04a0aa50bc66d67fa9dae168d5bfe50b514e42d24                         │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )  │
│  │ Version: 27796904                                                                              │
│  │ Digest: FtTAHQonunvWur3uwKuY8LBNwvddeuRahqLiPdqYUfgv                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x1aad7ad62528f3223909c0337b890adc4ff717eff8cdf6afb165503df58fdcc3                         │
│  │ Owner: Immutable                                                                               │
│  │ Version: 1                                                                                     │
│  │ Digest: EN31sJc4m9WTU8CWw7m4vWdpet9UcKuqv6UarkZsXyxS                                           │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0x5af8b1db5ce99600a4af66cae6df53b6fe6cf5b48d36464664913184eaa78c8b                         │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )  │
│  │ Version: 27796904                                                                              │
│  │ Digest: rJDyiyBZDY91GV2a47DKapCaHbGDmM971nLZDhK8A8U                                            │
│  └──                                                                                              │
│  ┌──                                                                                              │
│  │ ID: 0xb29e479fc9818dffca158bcc5fe4698bdc5f3d1bf8d19449d1aed777e380eb12                         │
│  │ Owner: Shared( 27796904 )                                                                      │
│  │ Version: 27796904                                                                              │
│  │ Digest: DsypuwpswRZtWVWwLB2H6gcPBvoTcmWKkR1Gqhto6uZC                                           │
│  └──                                                                                              │
│ Mutated Objects:                                                                                  │
│  ┌──                                                                                              │
│  │ ID: 0x5189ae9b46325f7b981494c142d473941d6d75fa1f30c0ca9002235d7e7bfa08                         │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )  │
│  │ Version: 27796904                                                                              │
│  │ Digest: 3oh5S3zGwadn1gxSCTHRX8xbHGFXXWxeyrrAhn1p8JdF                                           │
│  └──                                                                                              │
│ Gas Object:                                                                                       │
│  ┌──                                                                                              │
│  │ ID: 0x5189ae9b46325f7b981494c142d473941d6d75fa1f30c0ca9002235d7e7bfa08                         │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )  │
│  │ Version: 27796904                                                                              │
│  │ Digest: 3oh5S3zGwadn1gxSCTHRX8xbHGFXXWxeyrrAhn1p8JdF                                           │
│  └──                                                                                              │
│ Gas Cost Summary:                                                                                 │
│    Storage Cost: 25186400 MIST                                                                    │
│    Computation Cost: 1000000 MIST                                                                 │
│    Storage Rebate: 978120 MIST                                                                    │
│    Non-refundable Storage Fee: 9880 MIST                                                          │
│                                                                                                   │
│ Transaction Dependencies:                                                                         │
│    Gtwgse64nSVXhQvmqCpwCe5xJz9N4VypvEGJUy5DyG4e                                                   │
│    H59uwbodiYKDh4Q5k4MqVVLAnA65GZUSpCKNaBvNwY2J                                                   │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
╭─────────────────────────────╮
│ No transaction block events │
╰─────────────────────────────╯

╭──────────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Object Changes                                                                                       │
├──────────────────────────────────────────────────────────────────────────────────────────────────────┤
│ Created Objects:                                                                                     │
│  ┌──                                                                                                 │
│  │ ObjectID: 0x0f697927d8e6a4509ae510a04a0aa50bc66d67fa9dae168d5bfe50b514e42d24                      │
│  │ Sender: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                        │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )     │
│  │ ObjectType: 0x2::package::UpgradeCap                                                              │
│  │ Version: 27796904                                                                                 │
│  │ Digest: FtTAHQonunvWur3uwKuY8LBNwvddeuRahqLiPdqYUfgv                                              │
│  └──                                                                                                 │
│  ┌──                                                                                                 │
│  │ ObjectID: 0x5af8b1db5ce99600a4af66cae6df53b6fe6cf5b48d36464664913184eaa78c8b                      │
│  │ Sender: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                        │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )     │
│  │ ObjectType: 0x1aad7ad62528f3223909c0337b890adc4ff717eff8cdf6afb165503df58fdcc3::nygame::AdminCap  │
│  │ Version: 27796904                                                                                 │
│  │ Digest: rJDyiyBZDY91GV2a47DKapCaHbGDmM971nLZDhK8A8U                                               │
│  └──                                                                                                 │
│  ┌──                                                                                                 │
│  │ ObjectID: 0xb29e479fc9818dffca158bcc5fe4698bdc5f3d1bf8d19449d1aed777e380eb12                      │
│  │ Sender: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                        │
│  │ Owner: Shared( 27796904 )                                                                         │
│  │ ObjectType: 0x1aad7ad62528f3223909c0337b890adc4ff717eff8cdf6afb165503df58fdcc3::nygame::State     │
│  │ Version: 27796904                                                                                 │
│  │ Digest: DsypuwpswRZtWVWwLB2H6gcPBvoTcmWKkR1Gqhto6uZC                                              │
│  └──                                                                                                 │
│ Mutated Objects:                                                                                     │
│  ┌──                                                                                                 │
│  │ ObjectID: 0x5189ae9b46325f7b981494c142d473941d6d75fa1f30c0ca9002235d7e7bfa08                      │
│  │ Sender: 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2                        │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )     │
│  │ ObjectType: 0x2::coin::Coin<0x2::sui::SUI>                                                        │
│  │ Version: 27796904                                                                                 │
│  │ Digest: 3oh5S3zGwadn1gxSCTHRX8xbHGFXXWxeyrrAhn1p8JdF                                              │
│  └──                                                                                                 │
│ Published Objects:                                                                                   │
│  ┌──                                                                                                 │
│  │ PackageID: 0x1aad7ad62528f3223909c0337b890adc4ff717eff8cdf6afb165503df58fdcc3                     │
│  │ Version: 1                                                                                        │
│  │ Digest: EN31sJc4m9WTU8CWw7m4vWdpet9UcKuqv6UarkZsXyxS                                              │
│  │ Modules: nygame                                                                                   │
│  └──                                                                                                 │
╰──────────────────────────────────────────────────────────────────────────────────────────────────────╯
╭───────────────────────────────────────────────────────────────────────────────────────────────────╮
│ Balance Changes                                                                                   │
├───────────────────────────────────────────────────────────────────────────────────────────────────┤
│  ┌──                                                                                              │
│  │ Owner: Account Address ( 0x45272ac48503abe241074ad613024852a639b7fefb553c71b41fd36670836cd2 )  │
│  │ CoinType: 0x2::sui::SUI                                                                        │
│  │ Amount: -25208280                                                                              │
│  └──                                                                                              │
╰───────────────────────────────────────────────────────────────────────────────────────────────────╯
```

packageid: 0x1aad7ad62528f3223909c0337b890adc4ff717eff8cdf6afb165503df58fdcc3
shared state: 0xb29e479fc9818dffca158bcc5fe4698bdc5f3d1bf8d19449d1aed777e380eb12
adminCap: 0x5af8b1db5ce99600a4af66cae6df53b6fe6cf5b48d36464664913184eaa78c8b


## 转移admin
sui client transfer --to 0x340ff414f778eb4ad4189770a1009ab3d980c1a6cc40832ceb00bf1faa43ad97 --object-id
 0x5af8b1db5ce99600a4af66cae6df53b6fe6cf5b48d36464664913184eaa78c8b

