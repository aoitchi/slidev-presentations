# Definition of words

<div class="flex-1 min-h-0 flex flex-col justify-center">

### MCPのレスポンスとtoolの実行結果

<dl class="divide-y divide-gray-300 text-lg leading-snug [&_code]:whitespace-nowrap">

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>result</code></dt>
<dd>MCPのレスポンスで結果を返すためのオブジェクト。2026-07-28では、<code>resultType</code>とメソッドごとの結果を含む。プロトコル上のエラーは<code>error</code>で返す。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>resultType</code></dt>
<dd>レスポンスの<code>result</code>に含まれる結果の種別。<code>"input_required"</code>は追加情報が必要なことを示し、<code>"complete"</code>は処理の完了を示す。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>content</code></dt>
<dd>toolの結果を、テキストや画像などの要素の配列で返すフィールド。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>structuredContent</code></dt>
<dd>toolの結果をJSONの値として返すためのフィールド。toolが出力形式を定義している場合は、その形式に従う。</dd>
</div>

</dl>

</div>
