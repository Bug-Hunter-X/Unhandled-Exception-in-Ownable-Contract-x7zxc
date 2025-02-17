function transferOwnership(address newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  // Check if the new owner is different from the current owner
  if (newOwner != _owner) {
    // Emit the OwnershipTransferred event before updating ownership
    emit OwnershipTransferred(_owner, newOwner);
    _owner = newOwner; //Update the owner
  } else {
    revert("Ownable: transfer to the same address");
  }
} 