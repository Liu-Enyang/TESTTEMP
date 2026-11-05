-- テストデータ作成ツール v1 / DB2 / 2026-11-05 11:36:14
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 各テーブルの検索結果がOK（SOURCE_COUNT > 0、EXISTING_PK_COUNT = 0、DUPLICATE_COUNT = 0）であることを確認。
-- LLKTBC00
SELECT CASE WHEN source_count.SOURCE_COUNT > 0 AND existing_count.EXISTING_PK_COUNT = 0 AND duplicate_count.DUPLICATE_COUNT = 0 THEN 'OK' ELSE 'NG' END AS "検索結果",
    source_count.SOURCE_COUNT, existing_count.EXISTING_PK_COUNT, duplicate_count.DUPLICATE_COUNT
FROM (SELECT COUNT(*) AS SOURCE_COUNT FROM "GSS"."LLKTBC00" s WHERE s."C0DIST" = 'A100') source_count
CROSS JOIN (SELECT COUNT(*) AS EXISTING_PK_COUNT FROM "GSS"."LLKTBC00" t WHERE t."C0DIST" = 'EESA' AND t."C0CLMNBR" = 'LEY0138') existing_count
CROSS JOIN (SELECT COUNT(*) AS DUPLICATE_COUNT FROM (SELECT c."C0DIST", c."C0CLMNBR" FROM (
SELECT
    'EESA' AS "C0DIST",
    'LEY0138' AS "C0CLMNBR"
FROM "GSS"."LLKTBC00" s
WHERE s."C0DIST" = 'A100'
) c GROUP BY c."C0DIST", c."C0CLMNBR" HAVING COUNT(*) > 1) duplicates) duplicate_count;


SELECT CURRENT APPLICATION COMPATIBILITY AS APPLCOMPAT
FROM SYSIBM.SYSDUMMY1;