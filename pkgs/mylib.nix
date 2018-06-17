{ lib, ...}:
let 
inherit (lib.lists) fold;
inherit (lib.strings) concatStrings;
in {
    home = rec {
        intoFolder = (folder: pkg: files:
                fold (file: object: object // {
                    "${folder}/${file}".source = ''${pkg}/${file}'';
                    })
                {}
                files);
                pkgToFolder = (folder: pkg: intoFolder folder pkg pkg.files);
    };
}
