cd ligo/src
rm -rf .build
mkdir -p .build

ligo compile contract market.jsligo --entry-point main  > ./.build/market.tz

ligo compile storage market.jsligo --entry-point main '
{
  admin: ("tz1bxwduvRwBhq59FmThGKD5ceDFadr57JTq" as address),
  pending_admin: None() as option<address>,
  paused: false,

  items: list([]) as Types.item_list,
  ledger: Big_map.empty as Types.item_ledger,
}
' > ./.build/market_storage.tz
