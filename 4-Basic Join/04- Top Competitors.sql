SELECT H.HACKER_ID, H.NAME
    FROM SUBMISSIONS S
    JOIN CHALLENGES C
        ON S.CHALLENGE_ID = C.CHALLENGE_ID
    JOIN DIFFICULTY D
        ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
    JOIN HACKERS H
        ON S.HACKER_ID = H.HACKER_ID
    WHERE S.SCORE = D.SCORE 
        AND C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
    GROUP BY H.HACKER_ID, H.NAME
        HAVING COUNT(S.HACKER_ID) > 1
    ORDER BY COUNT(S.HACKER_ID) DESC, S.HACKER_ID ASC;
