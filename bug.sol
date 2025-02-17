function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  // Transfer ownership to the newOwner
  emit OwnershipTransferred(_owner, newOwner);
  _owner = newOwner;
}