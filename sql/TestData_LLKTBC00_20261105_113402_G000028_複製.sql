-- テストデータ作成ツール v1 / DB2 / 2026-11-05 11:33:59
-- 複製元レコードは更新しません。以下の区分は別々に実行してください。
-- 実DB未検証。トリガー・UNIQUE制約・生成列・実際の型はDB側で確認してください。
-- DBクライアントの自動コミットをOFFにして実行し、エラー時はROLLBACKしてください。
-- 結果確認・削除SQLは複製元レコードを参照します。複製元を変更/削除する前に実行してください。
-- 全テーブルの事前確認後、この区分だけを実行。自動コミットOFF必須。
-- LLKTBC00
INSERT INTO "GSS"."LLKTBC00" (
    "C0DIST",
    "C0CLMNBR",
    "C0MACHINE",
    "C0PROD_CTG",
    "C0CLM_DEC_CTG",
    "C0PARTNO1",
    "C0PARTNO2",
    "C0TSIFLG",
    "C0KGKFLG"
)
SELECT
    s."C0DIST" AS "C0DIST",
    'LEY0138' AS "C0CLMNBR",
    s."C0MACHINE" AS "C0MACHINE",
    s."C0PROD_CTG" AS "C0PROD_CTG",
    s."C0CLM_DEC_CTG" AS "C0CLM_DEC_CTG",
    s."C0PARTNO1" AS "C0PARTNO1",
    s."C0PARTNO2" AS "C0PARTNO2",
    s."C0TSIFLG" AS "C0TSIFLG",
    s."C0KGKFLG" AS "C0KGKFLG"
FROM "GSS"."LLKTBC00" s
WHERE s."C0DIST" = 'A100';
SELECT t.* FROM "GSS"."LLKTBC00" t WHERE t."C0CLMNBR" = 'LEY0138' AND EXISTS (SELECT 1 FROM (
SELECT
    s."C0DIST" AS "C0DIST",
    'LEY0138' AS "C0CLMNBR"
FROM "GSS"."LLKTBC00" s
WHERE s."C0DIST" = 'A100'
) c WHERE t."C0DIST" = c."C0DIST" AND t."C0CLMNBR" = c."C0CLMNBR");
-- DB2: 結果確認後、同じ接続でCOMMITまたはROLLBACKを実行（自動コミットOFF）。
