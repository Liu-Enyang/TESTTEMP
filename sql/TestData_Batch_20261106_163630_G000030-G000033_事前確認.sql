-- 一括保存 / DB2 / 事前確認 / 4履歴

-- 履歴 G000030 / LLKTBC01
-- テストデータ作成ツール v1 / DB2 / 2026-11-06 16:34:59
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 各テーブルの検索結果がOK（SOURCE_COUNT > 0、EXISTING_PK_COUNT = 0、DUPLICATE_COUNT = 0）であることを確認。
-- LLKTBC01
SELECT CASE WHEN source_count.SOURCE_COUNT > 0 AND existing_count.EXISTING_PK_COUNT = 0 AND duplicate_count.DUPLICATE_COUNT = 0 THEN 'OK' ELSE 'NG' END AS "検索結果",
    source_count.SOURCE_COUNT, existing_count.EXISTING_PK_COUNT, duplicate_count.DUPLICATE_COUNT
FROM (SELECT COUNT(*) AS SOURCE_COUNT FROM "GSS"."LLKTBC01" s WHERE s."C1CLMNBR" = 'UT00038') source_count
CROSS JOIN (SELECT COUNT(*) AS EXISTING_PK_COUNT FROM "GSS"."LLKTBC01" t WHERE t."C1CLMNBR" = 'LEY0238' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C1DIST" AS "C1DIST",
    'LEY0238' AS "C1CLMNBR"
FROM "GSS"."LLKTBC01" s
WHERE s."C1CLMNBR" = 'UT00038'
) c WHERE t."C1DIST" = c."C1DIST" AND t."C1CLMNBR" = c."C1CLMNBR")) existing_count
CROSS JOIN (SELECT COUNT(*) AS DUPLICATE_COUNT FROM (SELECT c."C1DIST", c."C1CLMNBR" FROM (
SELECT
    s."C1DIST" AS "C1DIST",
    'LEY0238' AS "C1CLMNBR"
FROM "GSS"."LLKTBC01" s
WHERE s."C1CLMNBR" = 'UT00038'
) c GROUP BY c."C1DIST", c."C1CLMNBR" HAVING COUNT(*) > 1) duplicates) duplicate_count;

-- 履歴 G000031 / LLKTBC02
-- テストデータ作成ツール v1 / DB2 / 2026-11-06 16:35:47
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 各テーブルの検索結果がOK（SOURCE_COUNT > 0、EXISTING_PK_COUNT = 0、DUPLICATE_COUNT = 0）であることを確認。
-- LLKTBC02
SELECT CASE WHEN source_count.SOURCE_COUNT > 0 AND existing_count.EXISTING_PK_COUNT = 0 AND duplicate_count.DUPLICATE_COUNT = 0 THEN 'OK' ELSE 'NG' END AS "検索結果",
    source_count.SOURCE_COUNT, existing_count.EXISTING_PK_COUNT, duplicate_count.DUPLICATE_COUNT
FROM (SELECT COUNT(*) AS SOURCE_COUNT FROM "GSS"."LLKTBC02" s WHERE s."C2CLMNBR" = 'UT00038') source_count
CROSS JOIN (SELECT COUNT(*) AS EXISTING_PK_COUNT FROM "GSS"."LLKTBC02" t WHERE t."C2CLMNBR" = 'LEY0238' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C2POINT" AS "C2POINT",
    s."C2DIST" AS "C2DIST",
    'LEY0238' AS "C2CLMNBR",
    s."C2MC" AS "C2MC"
FROM "GSS"."LLKTBC02" s
WHERE s."C2CLMNBR" = 'UT00038'
) c WHERE t."C2POINT" = c."C2POINT" AND t."C2DIST" = c."C2DIST" AND t."C2CLMNBR" = c."C2CLMNBR" AND t."C2MC" = c."C2MC")) existing_count
CROSS JOIN (SELECT COUNT(*) AS DUPLICATE_COUNT FROM (SELECT c."C2POINT", c."C2DIST", c."C2CLMNBR", c."C2MC" FROM (
SELECT
    s."C2POINT" AS "C2POINT",
    s."C2DIST" AS "C2DIST",
    'LEY0238' AS "C2CLMNBR",
    s."C2MC" AS "C2MC"
FROM "GSS"."LLKTBC02" s
WHERE s."C2CLMNBR" = 'UT00038'
) c GROUP BY c."C2POINT", c."C2DIST", c."C2CLMNBR", c."C2MC" HAVING COUNT(*) > 1) duplicates) duplicate_count;

-- 履歴 G000032 / LLKTBC04
-- テストデータ作成ツール v1 / DB2 / 2026-11-06 16:36:02
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 各テーブルの検索結果がOK（SOURCE_COUNT > 0、EXISTING_PK_COUNT = 0、DUPLICATE_COUNT = 0）であることを確認。
-- LLKTBC04
SELECT CASE WHEN source_count.SOURCE_COUNT > 0 AND existing_count.EXISTING_PK_COUNT = 0 AND duplicate_count.DUPLICATE_COUNT = 0 THEN 'OK' ELSE 'NG' END AS "検索結果",
    source_count.SOURCE_COUNT, existing_count.EXISTING_PK_COUNT, duplicate_count.DUPLICATE_COUNT
FROM (SELECT COUNT(*) AS SOURCE_COUNT FROM "GSS"."LLKTBC04" s WHERE s."C4CLMNBR" = 'UT00038') source_count
CROSS JOIN (SELECT COUNT(*) AS EXISTING_PK_COUNT FROM "GSS"."LLKTBC04" t WHERE t."C4CLMNBR" = 'LEY0238' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C4POINT" AS "C4POINT",
    s."C4DIST" AS "C4DIST",
    'LEY0238' AS "C4CLMNBR",
    s."C4CLMCNO" AS "C4CLMCNO",
    s."C4MC" AS "C4MC"
FROM "GSS"."LLKTBC04" s
WHERE s."C4CLMNBR" = 'UT00038'
) c WHERE t."C4POINT" = c."C4POINT" AND t."C4DIST" = c."C4DIST" AND t."C4CLMNBR" = c."C4CLMNBR" AND t."C4CLMCNO" = c."C4CLMCNO" AND t."C4MC" = c."C4MC")) existing_count
CROSS JOIN (SELECT COUNT(*) AS DUPLICATE_COUNT FROM (SELECT c."C4POINT", c."C4DIST", c."C4CLMNBR", c."C4CLMCNO", c."C4MC" FROM (
SELECT
    s."C4POINT" AS "C4POINT",
    s."C4DIST" AS "C4DIST",
    'LEY0238' AS "C4CLMNBR",
    s."C4CLMCNO" AS "C4CLMCNO",
    s."C4MC" AS "C4MC"
FROM "GSS"."LLKTBC04" s
WHERE s."C4CLMNBR" = 'UT00038'
) c GROUP BY c."C4POINT", c."C4DIST", c."C4CLMNBR", c."C4CLMCNO", c."C4MC" HAVING COUNT(*) > 1) duplicates) duplicate_count;

-- 履歴 G000033 / LLKTBC05
-- テストデータ作成ツール v1 / DB2 / 2026-11-06 16:36:17
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 各テーブルの検索結果がOK（SOURCE_COUNT > 0、EXISTING_PK_COUNT = 0、DUPLICATE_COUNT = 0）であることを確認。
-- LLKTBC05
SELECT CASE WHEN source_count.SOURCE_COUNT > 0 AND existing_count.EXISTING_PK_COUNT = 0 AND duplicate_count.DUPLICATE_COUNT = 0 THEN 'OK' ELSE 'NG' END AS "検索結果",
    source_count.SOURCE_COUNT, existing_count.EXISTING_PK_COUNT, duplicate_count.DUPLICATE_COUNT
FROM (SELECT COUNT(*) AS SOURCE_COUNT FROM "GSS"."LLKTBC05" s WHERE s."C5CLMNBR" = 'UT00038') source_count
CROSS JOIN (SELECT COUNT(*) AS EXISTING_PK_COUNT FROM "GSS"."LLKTBC05" t WHERE t."C5CLMNBR" = 'LEY0238' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C5POINT" AS "C5POINT",
    s."C5DIST" AS "C5DIST",
    'LEY0238' AS "C5CLMNBR",
    s."C5CLMCNO" AS "C5CLMCNO",
    s."C5MC" AS "C5MC",
    s."C5DETCT" AS "C5DETCT",
    s."C5DETNO" AS "C5DETNO"
FROM "GSS"."LLKTBC05" s
WHERE s."C5CLMNBR" = 'UT00038'
) c WHERE t."C5POINT" = c."C5POINT" AND t."C5DIST" = c."C5DIST" AND t."C5CLMNBR" = c."C5CLMNBR" AND t."C5CLMCNO" = c."C5CLMCNO" AND t."C5MC" = c."C5MC" AND t."C5DETCT" = c."C5DETCT" AND t."C5DETNO" = c."C5DETNO")) existing_count
CROSS JOIN (SELECT COUNT(*) AS DUPLICATE_COUNT FROM (SELECT c."C5POINT", c."C5DIST", c."C5CLMNBR", c."C5CLMCNO", c."C5MC", c."C5DETCT", c."C5DETNO" FROM (
SELECT
    s."C5POINT" AS "C5POINT",
    s."C5DIST" AS "C5DIST",
    'LEY0238' AS "C5CLMNBR",
    s."C5CLMCNO" AS "C5CLMCNO",
    s."C5MC" AS "C5MC",
    s."C5DETCT" AS "C5DETCT",
    s."C5DETNO" AS "C5DETNO"
FROM "GSS"."LLKTBC05" s
WHERE s."C5CLMNBR" = 'UT00038'
) c GROUP BY c."C5POINT", c."C5DIST", c."C5CLMNBR", c."C5CLMCNO", c."C5MC", c."C5DETCT", c."C5DETNO" HAVING COUNT(*) > 1) duplicates) duplicate_count;
