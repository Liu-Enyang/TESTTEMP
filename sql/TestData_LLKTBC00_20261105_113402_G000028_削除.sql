-- テストデータ作成ツール v1 / DB2 / 2026-11-05 11:33:59
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 後片付け専用。複製区分と一緒に実行しないでください。自動コミットOFFで確認後COMMIT。
DELETE FROM "GSS"."LLKTBC00" t WHERE t."C0CLMNBR" = 'LEY0138' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C0DIST" AS "C0DIST",
    'LEY0138' AS "C0CLMNBR"
FROM "GSS"."LLKTBC00" s
WHERE s."C0DIST" = 'A100'
) c WHERE t."C0DIST" = c."C0DIST" AND t."C0CLMNBR" = c."C0CLMNBR");
