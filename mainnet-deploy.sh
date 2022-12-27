cd ligo/src/.build

tezos-client originate contract Market transferring 0.00001 from tz1bxwduvRwBhq59FmThGKD5ceDFadr57JTq \
running market.tz \
--force \
--init '
(Pair (Pair (Pair "tz1bxwduvRwBhq59FmThGKD5ceDFadr57JTq" {}) {} False) None)
' \
--burn-cap 1.1165