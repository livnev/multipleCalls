pragma solidity >=0.5.3;

import "ds-test/test.sol";

import "./easyNest.sol";

contract MultiplecallsTest is DSTest {
  Callee callee;
  easyNest nest;

  function setUp() public {
    callee = new Callee();
    nest = new easyNest(callee);
  }

  function test_basic() public {
    nest.raiseTemp(1 ether);
  }
}
