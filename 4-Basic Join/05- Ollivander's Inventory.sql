SELECT W.ID, WP.AGE, W.COINS_NEEDED, W.POWER
FROM WANDS W JOIN WANDS_PROPERTY WP
ON W.CODE = WP.CODE
WHERE WP.IS_EVIL = 0 AND W.COINS_NEEDED = 
    (SELECT MIN(W2.COINS_NEEDED)
    FROM WANDS W2 JOIN WANDS_PROPERTY WP2
    ON W2.CODE = WP2.CODE
    WHERE W.POWER = W2.POWER AND WP.AGE = WP2.AGE)
    ORDER BY W.POWER DESC, WP.AGE DESC;
