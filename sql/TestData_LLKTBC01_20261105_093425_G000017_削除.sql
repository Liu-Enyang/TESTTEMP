-- テストデータ作成ツール v1 / DB2 / 2026-11-05 09:34:20
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 後片付け専用。複製区分と一緒に実行しないでください。自動コミットOFFで確認後COMMIT。
DELETE FROM "GSS"."LLKTBC01" t WHERE t."C1CLMNBR" = 'LEY0038' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C1DIST" AS "C1DIST",
    'LEY0038' AS "C1CLMNBR"
FROM "GSS"."LLKTBC01" s
WHERE s."C1CLMNBR" = 'UT00038'
) c WHERE t."C1DIST" = c."C1DIST" AND t."C1CLMNBR" = c."C1CLMNBR");
