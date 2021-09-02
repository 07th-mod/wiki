:: Run this script to check most external links in all *.md files.
:: It won't check internal links between pages.
::
:: This requires you have the "lychee" tool on your path
:: You can download binaries from here: https://github.com/lycheeverse/lychee/releases/latest
:: Or install using Rust's cargo: `cargo install lychee`
::
:: Add "-v" to see each checked link.
:: It's suggested you use Windows Terminal to view nicer output
::
:: Finally, Github may rate limit you, causing some github links to fail. You can overcome
:: this with the --github-token argument (see https://github.com/lycheeverse/lychee#github-token),
:: but if you only scan occasionally it's probably fine.
lychee --verbose --max-concurrency 1 --timeout 30 "../docs/**/*.md"
pause
