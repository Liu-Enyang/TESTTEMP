-- 一括保存 / DB2 / 削除 / 5履歴

-- 履歴 G000026 / LLKTBC83
-- テストデータ作成ツール v1 / DB2 / 2026-11-05 10:47:58
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 後片付け専用。複製区分と一緒に実行しないでください。自動コミットOFFで確認後COMMIT。
DELETE FROM "GSS"."LLKTBC83" t WHERE t."C83CLMNBR" = 'LEY0138' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C83DIST" AS "C83DIST",
    'LEY0138' AS "C83CLMNBR"
FROM "GSS"."LLKTBC83" s
WHERE s."C83CLMNBR" = 'UT00018'
) c WHERE t."C83DIST" = c."C83DIST" AND t."C83CLMNBR" = c."C83CLMNBR");

-- 履歴 G000025 / LLKTBC05
-- テストデータ作成ツール v1 / DB2 / 2026-11-05 10:43:26
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 後片付け専用。複製区分と一緒に実行しないでください。自動コミットOFFで確認後COMMIT。
DELETE FROM "GSS"."LLKTBC05" t WHERE t."C5CLMNBR" = 'LEY0138' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C5POINT" AS "C5POINT",
    s."C5DIST" AS "C5DIST",
    'LEY0138' AS "C5CLMNBR",
    s."C5CLMCNO" AS "C5CLMCNO",
    s."C5MC" AS "C5MC",
    s."C5DETCT" AS "C5DETCT",
    s."C5DETNO" AS "C5DETNO"
FROM "GSS"."LLKTBC05" s
WHERE s."C5CLMNBR" = 'UT00038'
) c WHERE t."C5POINT" = c."C5POINT" AND t."C5DIST" = c."C5DIST" AND t."C5CLMNBR" = c."C5CLMNBR" AND t."C5CLMCNO" = c."C5CLMCNO" AND t."C5MC" = c."C5MC" AND t."C5DETCT" = c."C5DETCT" AND t."C5DETNO" = c."C5DETNO");

-- 履歴 G000024 / LLKTBC04
-- テストデータ作成ツール v1 / DB2 / 2026-11-05 10:43:05
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 後片付け専用。複製区分と一緒に実行しないでください。自動コミットOFFで確認後COMMIT。
DELETE FROM "GSS"."LLKTBC04" t WHERE t."C4CLMNBR" = 'LEY0138' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C4POINT" AS "C4POINT",
    s."C4DIST" AS "C4DIST",
    'LEY0138' AS "C4CLMNBR",
    s."C4CLMCNO" AS "C4CLMCNO",
    s."C4MC" AS "C4MC"
FROM "GSS"."LLKTBC04" s
WHERE s."C4CLMNBR" = 'UT00038'
) c WHERE t."C4POINT" = c."C4POINT" AND t."C4DIST" = c."C4DIST" AND t."C4CLMNBR" = c."C4CLMNBR" AND t."C4CLMCNO" = c."C4CLMCNO" AND t."C4MC" = c."C4MC");

-- 履歴 G000023 / LLKTBC02
-- テストデータ作成ツール v1 / DB2 / 2026-11-05 10:42:46
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 後片付け専用。複製区分と一緒に実行しないでください。自動コミットOFFで確認後COMMIT。
DELETE FROM "GSS"."LLKTBC02" t WHERE t."C2CLMNBR" = 'LEY0138' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C2POINT" AS "C2POINT",
    s."C2DIST" AS "C2DIST",
    'LEY0138' AS "C2CLMNBR",
    s."C2MC" AS "C2MC"
FROM "GSS"."LLKTBC02" s
WHERE s."C2CLMNBR" = 'UT00038'
) c WHERE t."C2POINT" = c."C2POINT" AND t."C2DIST" = c."C2DIST" AND t."C2CLMNBR" = c."C2CLMNBR" AND t."C2MC" = c."C2MC");

-- 履歴 G000022 / LLKTBC01
-- テストデータ作成ツール v1 / DB2 / 2026-11-05 10:42:02
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 後片付け専用。複製区分と一緒に実行しないでください。自動コミットOFFで確認後COMMIT。
DELETE FROM "GSS"."LLKTBC01" t WHERE t."C1CLMNBR" = 'LEY0138' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C1DIST" AS "C1DIST",
    'LEY0138' AS "C1CLMNBR"
FROM "GSS"."LLKTBC01" s
WHERE s."C1CLMNBR" = 'UT00038'
) c WHERE t."C1DIST" = c."C1DIST" AND t."C1CLMNBR" = c."C1CLMNBR");
