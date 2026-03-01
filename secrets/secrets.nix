let
  ondrejNixblade = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDJCZLjfgVci6feLILVLEYWyG7C9NAk+WGqrlHDRdLyZ";
in
{
  "git-email.age".publicKeys = [ ondrejNixblade ];
}
