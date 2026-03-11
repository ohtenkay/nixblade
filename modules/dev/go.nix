{ ... }:
{
  flake.modules.nixos.dev =
    { pkgs, ... }:
    {
      environment.systemPackages = with pkgs; [
        go
        gopls
        gofumpt

        # project only, figure out dev shells
        protobuf
        protoc-gen-go
        protoc-gen-go-grpc
      ];
    };
}
