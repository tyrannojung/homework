// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

contract TrafficLight {
    enum LightState { Green, Red, Yellow }

    LightState public currentLight;

    constructor() {
        currentLight = LightState.Red;
    }

    function changeLight(LightState _newState) public {
        require(_newState != currentLight, "New state");
        currentLight = _newState;
    }
}
