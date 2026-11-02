# Definition of words

::content::

### intermediate stateと追加情報の取得

<dl class="divide-y divide-gray-300 text-lg leading-snug [&_code]:whitespace-nowrap">

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">intermediate state</dt>
<dd>一つの処理が完了するまでの途中経過を引き継ぐために必要な情報。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">elicitation</dt>
<dd>サーバーがクライアントを通じて、ユーザーに追加情報を求める仕組み。<code>elicitation/create</code>で、フォームへの入力や外部URLでの操作を求める。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>action</code><br>（elicitation）</dt>
<dd>追加情報の依頼に対するユーザーの対応を示すフィールド。<code>"accept"</code>は受け入れ、<code>"decline"</code>は辞退、<code>"cancel"</code>は明示的に選択せず閉じた場合などの中止を示す。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold"><code>content</code><br>（elicitation）</dt>
<dd>elicitationのフォームでユーザーが入力した値を返すフィールド。</dd>
</div>

<div class="grid grid-cols-[14rem_1fr] gap-x-6 py-2">
<dt class="font-semibold">sampling</dt>
<dd>サーバーがクライアントにLLMでの生成を依頼する仕組み。クライアントがLLMの呼び出しを制御する。</dd>
</div>

</dl>
