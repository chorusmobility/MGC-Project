{ rev    ? "5d9c60cb0f2993e7fbf7890dceea5bd7394791ae"             # The Git revision of nixpkgs to fetch
, sha256 ? "0qqhizhj0gnhbj7v01n5dz0ys8w4kylpd5khlnz9fwr3i0zqfy5n" # The SHA256 of the downloaded data
}:

builtins.fetchTarball {
  url = "https://github.com/airalab/airapkgs/archive/${rev}.tar.gz";
  inherit sha256;
}
