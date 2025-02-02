module nygame::nygame{
    //==============================================================================================
    // Dependencies
    //==============================================================================================
    use std::string::{String};
    use sui::event;
    use sui::table::{Self, Table};
    use sui::hash::{Self};

    use sui::balance::{Self, Balance};
    use sui::coin::{Self, Coin};
    use sui::sui::SUI;

    //==============================================================================================
    // Constants
    //==============================================================================================
    const STAKE: u64 = 1000000000;
    const STAKE_COST: vector<u64> = vector[10000000, 100000000, 200000000, 330000000, 500000000, 800000000];

    //==============================================================================================
    // Error codes
    //==============================================================================================
    /// You already have a Profile
    const EGameExist: u64 = 1;
    const EGameNotExist: u64=2;
    const EGameOverGuess: u64=3;
    const EGameGuessRepeat: u64=4;
    const EWrongGuess: u64=5;
    const EInsufficientBalance: u64=6;
    const ERewardAlreadyDrawed: u64=7;
    
    //==============================================================================================
    // Structs 
    //==============================================================================================
    public struct Game has store{
        gid: String,
        guesses: vector<Guess>,
        sign: vector<u8>,
        rewardSent: bool,
    }
    public struct Guess has store {
        guess: String,
        owner: address
    }
    
    public struct State has key{
        id: UID,
        balance: Balance<SUI>,
        games: Table<String, Game>,
    }
    public struct AdminCap has key, store {
        id: UID
    }

    //==============================================================================================
    // Event Structs 
    //==============================================================================================
    public struct GameCreated has copy, drop {
        gid: String,
    }

    public struct NewGuess has copy, drop {
        gid: String,
        guess: String,
        owner: address,
    }

    public struct RewardSent has copy, drop {
        gid: String,
        winner: address,
    }

    //==============================================================================================
    // Init
    //==============================================================================================
    fun init(ctx: &mut TxContext) {
        transfer::share_object(State{
            id: object::new(ctx), 
            balance: balance::zero<SUI>(),
            games: table::new(ctx),
        });
        let admin_cap = AdminCap {
            id: object::new(ctx)
        };
        transfer::public_transfer(admin_cap, tx_context::sender(ctx))
    }

    public fun add_balance(_coin: Coin<SUI>, state: &mut State) {
        assert!(coin::value(&_coin) > 0, EInsufficientBalance);
        let balan = coin::into_balance(_coin);
        balance::join(&mut state.balance, balan);
    }

    //==============================================================================================
    // Entry Functions 
    //==============================================================================================
    public fun new_game(
        gid: String, 
        sign: vector<u8>, 
        state: &mut State,
        _admin_cap: &AdminCap,
        _ctx: &mut TxContext
    ){
        assert!(!table::contains(&state.games, gid), EGameExist);
        let new_game = Game {
            gid,
            guesses: vector::empty<Guess>(),
            sign,
            rewardSent: false,
        };
        table::add(&mut state.games, gid, new_game);
        event::emit(GameCreated{
            gid,
        });
    }

    public fun guess(gid: String, 
        ges: String, 
        state: &mut State,
        u_coin: Coin<SUI>,
        ctx: &mut TxContext){
        assert!(table::contains(&state.games, gid), EGameNotExist);
        let cnt = vector::length(&state.games[gid].guesses);
        assert!(cnt<=5, EGameOverGuess);
        let mut front_index = 0;
        while (front_index < cnt) {
            assert!(state.games[gid].guesses[front_index].guess!=ges, EGameGuessRepeat);
            front_index = front_index + 1;
        };
        assert!(coin::value(&u_coin) >= STAKE_COST[cnt], EInsufficientBalance);
        balance::join(&mut state.balance, coin::into_balance(u_coin));
        state.games[gid].guesses.push_back(Guess{
            guess: ges,
            owner: tx_context::sender(ctx),
        });
        event::emit(NewGuess{
            gid,
            guess: ges,
            owner: tx_context::sender(ctx),
        });
    }

    public fun draw_reward(gid: String, nonce: String, idx: u64, state: &mut State, ctx: &mut TxContext){
        assert!(table::contains(&state.games, gid), EGameNotExist);
        // let gm = state.games[gid];
        let gm = table::borrow_mut(&mut state.games, gid);
        assert!(!gm.rewardSent, ERewardAlreadyDrawed);
        let mut bys = b"".to_string();
        bys.append(gid);
        bys.append(gm.guesses[idx].guess);
        bys.append(nonce);
        assert!(hash::keccak256(bys.as_bytes()) == gm.sign, EWrongGuess);
        let coin2 = coin::take(&mut state.balance, STAKE, ctx);
        transfer::public_transfer(coin2, gm.guesses[idx].owner);
        gm.rewardSent = true;
        event::emit(RewardSent{
            gid,
            winner: gm.guesses[idx].owner
        });
    }

    public fun validate(gid: String, ges: String, nonce: String, state: &State,): bool{
        assert!(table::contains(&state.games, gid), EGameNotExist);
        let gm = table::borrow(&state.games, gid);
        let mut bys = b"".to_string();
        bys.append(gid);
        bys.append(ges);
        bys.append(nonce);
        hash::keccak256(gid.as_bytes()) == gm.sign
    }

    public fun withdraw(state: &mut State, _admin_cap: &AdminCap, ctx: &mut TxContext) {
        // only the house address can withdraw funds
        // assert!(tx_context::sender(ctx) == house_data.house, ECallerNotHouse);
        let total_balance = balance::value(&state.balance);
        assert!(total_balance > 2*STAKE, EInsufficientBalance);
        let coin = coin::take(&mut state.balance, total_balance-STAKE*2, ctx);
        transfer::public_transfer(coin, tx_context::sender(ctx));
    }

    //==============================================================================================
    // Helper Functions 
    //==============================================================================================
    #[test_only]
    public fun init_for_testing(ctx: &mut TxContext) {
        init(ctx);
    }
}


