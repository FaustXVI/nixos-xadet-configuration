{
    programs = {
        git = {
            enable = true;
            userName = "FaustXVI";
            userEmail = "xavier.detant@gmail.com";
            signing = {
                signByDefault = true;
                key = "B0671321";
            };
            aliases = {
                co = "checkout";
                ci = "commit";
                st = "status";
                br = "branch";
                branch-clean = "!git branch --merged | grep -v master | xargs -n 1 git branch -d";
                next = "!git checkout `git rev-list HEAD..demo-end | tail -1`";
            };
        };
    };
}
