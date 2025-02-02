
#[test_only]
module nygame::nygame_tests{
  
    // uncomment this line to import the module
    // use nygame::sui_resource_mange::{Self, };
    use nygame::nygame::{Self, AdminCap, State, Game, Guess} ;
    use sui::test_scenario::{Self};
    use sui::test_utils::assert_eq;
    use std::string;
    use sui::hash::{Self};
    use sui::coin::{Self, Coin, TreasuryCap};
    use sui::sui::SUI;

    const ENotImplemented: u64 = 0;

    #[test]
    fun test_nygame() {
        let user = @0xa;
        let mut scenario = test_scenario::begin(user);
        
        nygame::init_for_testing(scenario.ctx());
        
        scenario.next_tx(user);
        let gid = string::utf8(b"123");
        let word = string::utf8(b"waste");
        let nonce = string::utf8(b"nonce111");
        let mut bys = b"".to_string();
        bys.append(gid);
        bys.append(word);
        bys.append(nonce);
        let sign = hash::keccak256(bys.as_bytes());
        {
            let mut state = test_scenario::take_shared<State>(&scenario);
            let cap = test_scenario::take_from_sender<AdminCap>(&scenario);
            nygame::new_game(
                gid, 
                sign, 
                &mut state,
                &cap,
                scenario.ctx()
            );
            test_scenario::return_to_sender(&scenario, cap);
            test_scenario::return_shared(state);
        };

        let tx =scenario.next_tx(user);
        let expected_events_emitted = 1;
        assert_eq(
            test_scenario::num_user_events(&tx), 
            expected_events_emitted
        );

        // next_tx(&mut scenario, addr1);
        // {
        //     let mut treasurycap = test_scenario::take_from_sender<TreasuryCap<MANAGED>>(&scenario);
        //     managed::mint(&mut treasurycap, 100, addr1, test_scenario::ctx(&mut scenario));
        //     test_scenario::return_to_address<TreasuryCap<MANAGED>>(addr1, treasurycap);
        // };


        {
            let mut state = test_scenario::take_shared<State>(&scenario);
            let mut payment = coin::mint_for_testing<SUI>(10000000, scenario.ctx());
            // let si = test_scenario::take_from_sender<Coin<SUI>>(&scenario);
            // let coin = test_scenario::take_from_sender<Coin<MANAGED>>(&scenario);
            nygame::guess(
                gid, 
                word, 
                &mut state,
                payment,
                scenario.ctx()
            );
            // test_scenario::return_to_sender(&scenario, si);
            test_scenario::return_shared(state);
        };

        let tx =scenario.next_tx(user);
        let expected_events_emitted = 1;
        assert_eq(
            test_scenario::num_user_events(&tx), 
            expected_events_emitted
        );

        // {
        //     let state = test_scenario::take_shared<State>(&scenario);
        //     let profile = test_scenario::take_from_sender<Profile>(&scenario);
        //     assert!(
        //         sui_resource_mange::check_if_has_profile(user, &state) == 
        //         option::some(object::id_to_address(object::borrow_id(&profile))), 
        //         0
        //     );
        //     debug::print(&sui_resource_mange::check_if_has_profile(user, &state));
        //     test_scenario::return_to_sender(&scenario, profile);
        //     test_scenario::return_shared(state);
        // };

        test_scenario::end(scenario);
    }

    #[test, expected_failure(abort_code = ::nygame::nygame_tests::ENotImplemented)]
    fun test_nygame_fail() {
        abort ENotImplemented
    }
  
}