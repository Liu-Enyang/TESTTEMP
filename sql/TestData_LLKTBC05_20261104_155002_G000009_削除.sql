-- テストデータ作成ツール v1 / DB2 / 2026-11-04 15:49:41
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 後片付け専用。複製区分と一緒に実行しないでください。自動コミットOFFで確認後COMMIT。
DELETE FROM "GSS"."LLKTBC05" AS t WHERE EXISTS (SELECT 1 FROM (
SELECT
    s."C5POINT" AS "C5POINT",
    s."C5DIST" AS "C5DIST",
    'LEY0008' AS "C5CLMNBR",
    s."C5CLMCNO" AS "C5CLMCNO",
    s."C5MC" AS "C5MC",
    s."C5DETCT" AS "C5DETCT",
    s."C5DETNO" AS "C5DETNO",
    s."C5TYPE" AS "C5TYPE",
    s."C5PAYEE" AS "C5PAYEE",
    s."C5REDBLK" AS "C5REDBLK",
    s."C5IDDLDATA" AS "C5IDDLDATA",
    s."C5APPAMT" AS "C5APPAMT",
    s."C5APPDATA" AS "C5APPDATA",
    s."C5DECAMT" AS "C5DECAMT",
    s."C5DECDATA" AS "C5DECDATA",
    s."C5TRANSAMT01" AS "C5TRANSAMT01",
    s."C5TRANSAMT02" AS "C5TRANSAMT02",
    s."C5DEBITAMT" AS "C5DEBITAMT",
    s."C5DEBITDATA" AS "C5DEBITDATA",
    s."C5CREDT" AS "C5CREDT"
FROM "GSS"."LLKTBC05" s
WHERE s."C5CLMNBR" = 'UT00008'
) c WHERE t."C5POINT" = c."C5POINT" AND t."C5DIST" = c."C5DIST" AND t."C5CLMNBR" = c."C5CLMNBR" AND t."C5CLMCNO" = c."C5CLMCNO" AND t."C5MC" = c."C5MC" AND t."C5DETCT" = c."C5DETCT" AND t."C5DETNO" = c."C5DETNO");
