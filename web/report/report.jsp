<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Report</title>
    <style>
        @font-face {
            font-family: octicons-link;
            src: url(data:font/woff;charset=utf-8;base64,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) format('woff');
        }

        .markdown-body .octicon {
            display: inline-block;
            fill: currentColor;
            vertical-align: text-bottom;
        }

        .markdown-body .anchor {
            float: left;
            line-height: 1;
            margin-left: -20px;
            padding-right: 4px;
        }

        .markdown-body .anchor:focus {
            outline: none;
        }

        .markdown-body h1 .octicon-link,
        .markdown-body h2 .octicon-link,
        .markdown-body h3 .octicon-link,
        .markdown-body h4 .octicon-link,
        .markdown-body h5 .octicon-link,
        .markdown-body h6 .octicon-link {
            color: #1b1f23;
            vertical-align: middle;
            visibility: hidden;
        }

        .markdown-body h1:hover .anchor,
        .markdown-body h2:hover .anchor,
        .markdown-body h3:hover .anchor,
        .markdown-body h4:hover .anchor,
        .markdown-body h5:hover .anchor,
        .markdown-body h6:hover .anchor {
            text-decoration: none;
        }

        .markdown-body h1:hover .anchor .octicon-link,
        .markdown-body h2:hover .anchor .octicon-link,
        .markdown-body h3:hover .anchor .octicon-link,
        .markdown-body h4:hover .anchor .octicon-link,
        .markdown-body h5:hover .anchor .octicon-link,
        .markdown-body h6:hover .anchor .octicon-link {
            visibility: visible;
        }.markdown-body {
             -ms-text-size-adjust: 100%;
             -webkit-text-size-adjust: 100%;
             color: #24292e;
             line-height: 1.5;
             font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol;
             font-size: 16px;
             line-height: 1.5;
             word-wrap: break-word;
         }

        .markdown-body .pl-c {
            color: #6a737d;
        }

        .markdown-body .pl-c1,
        .markdown-body .pl-s .pl-v {
            color: #005cc5;
        }

        .markdown-body .pl-e,
        .markdown-body .pl-en {
            color: #6f42c1;
        }

        .markdown-body .pl-s .pl-s1,
        .markdown-body .pl-smi {
            color: #24292e;
        }

        .markdown-body .pl-ent {
            color: #22863a;
        }

        .markdown-body .pl-k {
            color: #d73a49;
        }

        .markdown-body .pl-pds,
        .markdown-body .pl-s,
        .markdown-body .pl-s .pl-pse .pl-s1,
        .markdown-body .pl-sr,
        .markdown-body .pl-sr .pl-cce,
        .markdown-body .pl-sr .pl-sra,
        .markdown-body .pl-sr .pl-sre {
            color: #032f62;
        }

        .markdown-body .pl-smw,
        .markdown-body .pl-v {
            color: #e36209;
        }

        .markdown-body .pl-bu {
            color: #b31d28;
        }

        .markdown-body .pl-ii {
            background-color: #b31d28;
            color: #fafbfc;
        }

        .markdown-body .pl-c2 {
            background-color: #d73a49;
            color: #fafbfc;
        }

        .markdown-body .pl-c2:before {
            content: "^M";
        }

        .markdown-body .pl-sr .pl-cce {
            color: #22863a;
            font-weight: 700;
        }

        .markdown-body .pl-ml {
            color: #735c0f;
        }

        .markdown-body .pl-mh,
        .markdown-body .pl-mh .pl-en,
        .markdown-body .pl-ms {
            color: #005cc5;
            font-weight: 700;
        }

        .markdown-body .pl-mi {
            color: #24292e;
            font-style: italic;
        }

        .markdown-body .pl-mb {
            color: #24292e;
            font-weight: 700;
        }

        .markdown-body .pl-md {
            background-color: #ffeef0;
            color: #b31d28;
        }

        .markdown-body .pl-mi1 {
            background-color: #f0fff4;
            color: #22863a;
        }

        .markdown-body .pl-mc {
            background-color: #ffebda;
            color: #e36209;
        }

        .markdown-body .pl-mi2 {
            background-color: #005cc5;
            color: #f6f8fa;
        }

        .markdown-body .pl-mdr {
            color: #6f42c1;
            font-weight: 700;
        }

        .markdown-body .pl-ba {
            color: #586069;
        }

        .markdown-body .pl-sg {
            color: #959da5;
        }

        .markdown-body .pl-corl {
            color: #032f62;
            text-decoration: underline;
        }

        .markdown-body details {
            display: block;
        }

        .markdown-body summary {
            display: list-item;
        }

        .markdown-body a {
            background-color: transparent;
        }

        .markdown-body a:active,
        .markdown-body a:hover {
            outline-width: 0;
        }

        .markdown-body strong {
            font-weight: inherit;
            font-weight: bolder;
        }

        .markdown-body h1 {
            font-size: 2em;
            margin: .67em 0;
        }

        .markdown-body img {
            border-style: none;
        }

        .markdown-body code,
        .markdown-body kbd,
        .markdown-body pre {
            font-family: monospace,monospace;
            font-size: 1em;
        }

        .markdown-body hr {
            box-sizing: content-box;
            height: 0;
            overflow: visible;
        }

        .markdown-body input {
            font: inherit;
            margin: 0;
        }

        .markdown-body input {
            overflow: visible;
        }

        .markdown-body [type=checkbox] {
            box-sizing: border-box;
            padding: 0;
        }

        .markdown-body * {
            box-sizing: border-box;
        }

        .markdown-body input {
            font-family: inherit;
            font-size: inherit;
            line-height: inherit;
        }

        .markdown-body a {
            color: #0366d6;
            text-decoration: none;
        }

        .markdown-body a:hover {
            text-decoration: underline;
        }

        .markdown-body strong {
            font-weight: 600;
        }

        .markdown-body hr {
            background: transparent;
            border: 0;
            border-bottom: 1px solid #dfe2e5;
            height: 0;
            margin: 15px 0;
            overflow: hidden;
        }

        .markdown-body hr:before {
            content: "";
            display: table;
        }

        .markdown-body hr:after {
            clear: both;
            content: "";
            display: table;
        }

        .markdown-body table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        .markdown-body td,
        .markdown-body th {
            padding: 0;
        }

        .markdown-body details summary {
            cursor: pointer;
        }

        .markdown-body h1,
        .markdown-body h2,
        .markdown-body h3,
        .markdown-body h4,
        .markdown-body h5,
        .markdown-body h6 {
            margin-bottom: 0;
            margin-top: 0;
        }

        .markdown-body h1 {
            font-size: 32px;
        }

        .markdown-body h1,
        .markdown-body h2 {
            font-weight: 600;
        }

        .markdown-body h2 {
            font-size: 24px;
        }

        .markdown-body h3 {
            font-size: 20px;
        }

        .markdown-body h3,
        .markdown-body h4 {
            font-weight: 600;
        }

        .markdown-body h4 {
            font-size: 16px;
        }

        .markdown-body h5 {
            font-size: 14px;
        }

        .markdown-body h5,
        .markdown-body h6 {
            font-weight: 600;
        }

        .markdown-body h6 {
            font-size: 12px;
        }

        .markdown-body p {
            margin-bottom: 10px;
            margin-top: 0;
        }

        .markdown-body blockquote {
            margin: 0;
        }

        .markdown-body ol,
        .markdown-body ul {
            margin-bottom: 0;
            margin-top: 0;
            padding-left: 0;
        }

        .markdown-body ol ol,
        .markdown-body ul ol {
            list-style-type: lower-roman;
        }

        .markdown-body ol ol ol,
        .markdown-body ol ul ol,
        .markdown-body ul ol ol,
        .markdown-body ul ul ol {
            list-style-type: lower-alpha;
        }

        .markdown-body dd {
            margin-left: 0;
        }

        .markdown-body code,
        .markdown-body pre {
            font-family: SFMono-Regular,Consolas,Liberation Mono,Menlo,Courier,monospace;
            font-size: 12px;
        }

        .markdown-body pre {
            margin-bottom: 0;
            margin-top: 0;
        }

        .markdown-body input::-webkit-inner-spin-button,
        .markdown-body input::-webkit-outer-spin-button {
            -webkit-appearance: none;
            appearance: none;
            margin: 0;
        }

        .markdown-body .border {
            border: 1px solid #e1e4e8!important;
        }

        .markdown-body .border-0 {
            border: 0!important;
        }

        .markdown-body .border-bottom {
            border-bottom: 1px solid #e1e4e8!important;
        }

        .markdown-body .rounded-1 {
            border-radius: 3px!important;
        }

        .markdown-body .bg-white {
            background-color: #fff!important;
        }

        .markdown-body .bg-gray-light {
            background-color: #fafbfc!important;
        }

        .markdown-body .text-gray-light {
            color: #6a737d!important;
        }

        .markdown-body .mb-0 {
            margin-bottom: 0!important;
        }

        .markdown-body .my-2 {
            margin-bottom: 8px!important;
            margin-top: 8px!important;
        }

        .markdown-body .pl-0 {
            padding-left: 0!important;
        }

        .markdown-body .py-0 {
            padding-bottom: 0!important;
            padding-top: 0!important;
        }

        .markdown-body .pl-1 {
            padding-left: 4px!important;
        }

        .markdown-body .pl-2 {
            padding-left: 8px!important;
        }

        .markdown-body .py-2 {
            padding-bottom: 8px!important;
            padding-top: 8px!important;
        }

        .markdown-body .pl-3,
        .markdown-body .px-3 {
            padding-left: 16px!important;
        }

        .markdown-body .px-3 {
            padding-right: 16px!important;
        }

        .markdown-body .pl-4 {
            padding-left: 24px!important;
        }

        .markdown-body .pl-5 {
            padding-left: 32px!important;
        }

        .markdown-body .pl-6 {
            padding-left: 40px!important;
        }

        .markdown-body .f6 {
            font-size: 12px!important;
        }

        .markdown-body .lh-condensed {
            line-height: 1.25!important;
        }

        .markdown-body .text-bold {
            font-weight: 600!important;
        }

        .markdown-body .pl-7 {
            padding-left: 48px!important;
        }

        .markdown-body .pl-8 {
            padding-left: 64px!important;
        }

        .markdown-body .pl-9 {
            padding-left: 80px!important;
        }

        .markdown-body .pl-10 {
            padding-left: 96px!important;
        }

        .markdown-body .pl-11 {
            padding-left: 112px!important;
        }

        .markdown-body .pl-12 {
            padding-left: 128px!important;
        }

        .markdown-body hr {
            border-bottom-color: #eee;
        }

        .markdown-body:before {
            content: "";
            display: table;
        }

        .markdown-body:after {
            clear: both;
            content: "";
            display: table;
        }

        .markdown-body>:first-child {
            margin-top: 0!important;
        }

        .markdown-body>:last-child {
            margin-bottom: 0!important;
        }

        .markdown-body a:not([href]) {
            color: inherit;
            text-decoration: none;
        }

        .markdown-body blockquote,
        .markdown-body details,
        .markdown-body dl,
        .markdown-body ol,
        .markdown-body p,
        .markdown-body pre,
        .markdown-body table,
        .markdown-body ul {
            margin-bottom: 16px;
            margin-top: 0;
        }

        .markdown-body hr {
            background-color: #e1e4e8;
            border: 0;
            height: .25em;
            margin: 24px 0;
            padding: 0;
        }

        .markdown-body blockquote {
            border-left: .25em solid #dfe2e5;
            color: #6a737d;
            padding: 0 1em;
        }

        .markdown-body blockquote>:first-child {
            margin-top: 0;
        }

        .markdown-body blockquote>:last-child {
            margin-bottom: 0;
        }

        .markdown-body kbd {
            background-color: #fafbfc;
            border: 1px solid #c6cbd1;
            border-bottom-color: #959da5;
            border-radius: 3px;
            box-shadow: inset 0 -1px 0 #959da5;
            color: #444d56;
            display: inline-block;
            font-size: 11px;
            line-height: 10px;
            padding: 3px 5px;
            vertical-align: middle;
        }

        .markdown-body h1,
        .markdown-body h2,
        .markdown-body h3,
        .markdown-body h4,
        .markdown-body h5,
        .markdown-body h6 {
            font-weight: 600;
            line-height: 1.25;
            margin-bottom: 16px;
            margin-top: 24px;
        }

        .markdown-body h1 {
            font-size: 2em;
        }

        .markdown-body h1,
        .markdown-body h2 {
            border-bottom: 1px solid #eaecef;
            padding-bottom: .3em;
        }

        .markdown-body h2 {
            font-size: 1.5em;
        }

        .markdown-body h3 {
            font-size: 1.25em;
        }

        .markdown-body h4 {
            font-size: 1em;
        }

        .markdown-body h5 {
            font-size: .875em;
        }

        .markdown-body h6 {
            color: #6a737d;
            font-size: .85em;
        }

        .markdown-body ol,
        .markdown-body ul {
            padding-left: 2em;
        }

        .markdown-body ol ol,
        .markdown-body ol ul,
        .markdown-body ul ol,
        .markdown-body ul ul {
            margin-bottom: 0;
            margin-top: 0;
        }

        .markdown-body li {
            word-wrap: break-all;
        }

        .markdown-body li>p {
            margin-top: 16px;
        }

        .markdown-body li+li {
            margin-top: .25em;
        }

        .markdown-body dl {
            padding: 0;
        }

        .markdown-body dl dt {
            font-size: 1em;
            font-style: italic;
            font-weight: 600;
            margin-top: 16px;
            padding: 0;
        }

        .markdown-body dl dd {
            margin-bottom: 16px;
            padding: 0 16px;
        }

        .markdown-body table {
            display: block;
            overflow: auto;
            width: 100%;
        }

        .markdown-body table th {
            font-weight: 600;
        }

        .markdown-body table td,
        .markdown-body table th {
            border: 1px solid #dfe2e5;
            padding: 6px 13px;
        }

        .markdown-body table tr {
            background-color: #fff;
            border-top: 1px solid #c6cbd1;
        }

        .markdown-body table tr:nth-child(2n) {
            background-color: #f6f8fa;
        }

        .markdown-body img {
            background-color: #fff;
            box-sizing: content-box;
            max-width: 100%;
        }

        .markdown-body img[align=right] {
            padding-left: 20px;
        }

        .markdown-body img[align=left] {
            padding-right: 20px;
        }

        .markdown-body code {
            background-color: rgba(27,31,35,.05);
            border-radius: 3px;
            font-size: 85%;
            margin: 0;
            padding: .2em .4em;
        }

        .markdown-body pre {
            word-wrap: normal;
        }

        .markdown-body pre>code {
            background: transparent;
            border: 0;
            font-size: 100%;
            margin: 0;
            padding: 0;
            white-space: pre;
            word-break: normal;
        }

        .markdown-body .highlight {
            margin-bottom: 16px;
        }

        .markdown-body .highlight pre {
            margin-bottom: 0;
            word-break: normal;
        }

        .markdown-body .highlight pre,
        .markdown-body pre {
            background-color: #f6f8fa;
            border-radius: 3px;
            font-size: 85%;
            line-height: 1.45;
            overflow: auto;
            padding: 16px;
        }

        .markdown-body pre code {
            background-color: transparent;
            border: 0;
            display: inline;
            line-height: inherit;
            margin: 0;
            max-width: auto;
            overflow: visible;
            padding: 0;
            word-wrap: normal;
        }

        .markdown-body .commit-tease-sha {
            color: #444d56;
            display: inline-block;
            font-family: SFMono-Regular,Consolas,Liberation Mono,Menlo,Courier,monospace;
            font-size: 90%;
        }

        .markdown-body .full-commit .btn-outline:not(:disabled):hover {
            border-color: #005cc5;
            color: #005cc5;
        }

        .markdown-body .blob-wrapper {
            overflow-x: auto;
            overflow-y: hidden;
        }

        .markdown-body .blob-wrapper-embedded {
            max-height: 240px;
            overflow-y: auto;
        }

        .markdown-body .blob-num {
            -moz-user-select: none;
            -ms-user-select: none;
            -webkit-user-select: none;
            color: rgba(27,31,35,.3);
            cursor: pointer;
            font-family: SFMono-Regular,Consolas,Liberation Mono,Menlo,Courier,monospace;
            font-size: 12px;
            line-height: 20px;
            min-width: 50px;
            padding-left: 10px;
            padding-right: 10px;
            text-align: right;
            user-select: none;
            vertical-align: top;
            white-space: nowrap;
            width: 1%;
        }

        .markdown-body .blob-num:hover {
            color: rgba(27,31,35,.6);
        }

        .markdown-body .blob-num:before {
            content: attr(data-line-number);
        }

        .markdown-body .blob-code {
            line-height: 20px;
            padding-left: 10px;
            padding-right: 10px;
            position: relative;
            vertical-align: top;
        }

        .markdown-body .blob-code-inner {
            color: #24292e;
            font-family: SFMono-Regular,Consolas,Liberation Mono,Menlo,Courier,monospace;
            font-size: 12px;
            overflow: visible;
            white-space: pre;
            word-wrap: normal;
        }

        .markdown-body .pl-token.active,
        .markdown-body .pl-token:hover {
            background: #ffea7f;
            cursor: pointer;
        }

        .markdown-body kbd {
            background-color: #fafbfc;
            border: 1px solid #d1d5da;
            border-bottom-color: #c6cbd1;
            border-radius: 3px;
            box-shadow: inset 0 -1px 0 #c6cbd1;
            color: #444d56;
            display: inline-block;
            font: 11px SFMono-Regular,Consolas,Liberation Mono,Menlo,Courier,monospace;
            line-height: 10px;
            padding: 3px 5px;
            vertical-align: middle;
        }

        .markdown-body :checked+.radio-label {
            border-color: #0366d6;
            position: relative;
            z-index: 1;
        }

        .markdown-body .select-menu-item input[type=radio]:not(:checked)+.octicon-check,
        .markdown-body .select-menu-item input[type=radio]:not(:checked)+.octicon-circle-slash {
            visibility: hidden;
        }

        .markdown-body .tab-size[data-tab-size="1"] {
            -moz-tab-size: 1;
            tab-size: 1;
        }

        .markdown-body .tab-size[data-tab-size="2"] {
            -moz-tab-size: 2;
            tab-size: 2;
        }

        .markdown-body .tab-size[data-tab-size="3"] {
            -moz-tab-size: 3;
            tab-size: 3;
        }

        .markdown-body .tab-size[data-tab-size="4"] {
            -moz-tab-size: 4;
            tab-size: 4;
        }

        .markdown-body .tab-size[data-tab-size="5"] {
            -moz-tab-size: 5;
            tab-size: 5;
        }

        .markdown-body .tab-size[data-tab-size="6"] {
            -moz-tab-size: 6;
            tab-size: 6;
        }

        .markdown-body .tab-size[data-tab-size="7"] {
            -moz-tab-size: 7;
            tab-size: 7;
        }

        .markdown-body .tab-size[data-tab-size="8"] {
            -moz-tab-size: 8;
            tab-size: 8;
        }

        .markdown-body .tab-size[data-tab-size="9"] {
            -moz-tab-size: 9;
            tab-size: 9;
        }

        .markdown-body .tab-size[data-tab-size="10"] {
            -moz-tab-size: 10;
            tab-size: 10;
        }

        .markdown-body .tab-size[data-tab-size="11"] {
            -moz-tab-size: 11;
            tab-size: 11;
        }

        .markdown-body .tab-size[data-tab-size="12"] {
            -moz-tab-size: 12;
            tab-size: 12;
        }

        .markdown-body .task-list-item {
            list-style-type: none;
        }

        .markdown-body .task-list-item+.task-list-item {
            margin-top: 3px;
        }

        .markdown-body .task-list-item input {
            margin: 0 .2em .25em -1.6em;
            vertical-align: middle;
        }

    </style>
</head>
<body>
<div style="min-width: 980px;max-width: 980px;margin:auto;">
    <article class="markdown-body entry-content p-5" itemprop="text"><p><a target="_blank" rel="noopener noreferrer" href="https://camo.githubusercontent.com/db82792eff3ca3b584742e65bd6f3a1258c27c34/68747470733a2f2f68617264776172656173736f63696174696f6e2e69652f77702d636f6e74656e742f75706c6f6164732f323031372f31322f4463752d6c6f676f2e706e67"><img src="https://camo.githubusercontent.com/db82792eff3ca3b584742e65bd6f3a1258c27c34/68747470733a2f2f68617264776172656173736f63696174696f6e2e69652f77702d636f6e74656e742f75706c6f6164732f323031372f31322f4463752d6c6f676f2e706e67" alt="Logo" data-canonical-src="https://hardwareassociation.ie/wp-content/uploads/2017/12/Dcu-logo.png" style="max-width:100%;"></a></p>
        <h1><a id="user-content-ee417-web-application-development" class="anchor" aria-hidden="true" href="#ee417-web-application-development"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>EE417: Web Application Development</h1>
        <h2><a id="user-content-project-report--andrea-mouraud---18103154" class="anchor" aria-hidden="true" href="#project-report--andrea-mouraud---18103154"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Project Report : Andrea Mouraud - 18103154</h2>
        <h3><a id="user-content-introduction" class="anchor" aria-hidden="true" href="#introduction"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Introduction</h3>
        <hr>
        <p>The goal of this project was to develop one of the randomly assigned subject from a list (available <a href="http://ee417.eeng.dcu.ie/home/assignment" rel="nofollow">here</a>).</p>
        <p>My subject was to create an <strong>Online Take-Away System</strong>, following these rules :</p>
        <ul>
            <li>Restaurant owners can register their restaurants and create an account</li>
            <li>They can add a menu of items for sale from their takeaway with corresponding description and prices</li>
            <li>Anonymous users can search for takeaways and browse their menus and place an order  (payment process not required)</li>
            <li>The application had to be using the DCU Oracle database and be deployed as a WAR on a the DCU Tomcat server</li>
        </ul>
        <p>The rest was up to me.</p>
        <p>The project was developed using :</p>
        <ul>
            <li>Java 8
                <ul>
                    <li>JSTL (JavaServer Pages Standard Tag Library)</li>
                </ul>
            </li>
            <li>IntelliJ IDEA 2018.3.4 (Ultimate Edition)</li>
            <li>No Javascript library</li>
            <li>HTML5 and CSS3</li>
            <li>Git and Github (versioning)</li>
            <li>Github and MarkDown (report)</li>
        </ul>
        <h3><a id="user-content-structure" class="anchor" aria-hidden="true" href="#structure"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Structure</h3>
        <hr>
        <p>The system is structured in such a way :</p>
        <table>
            <thead>
            <tr>
                <th>Route</th>
                <th>Description</th>
                <th align="center">Login Required</th>
                <th align="center">Account Creation</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><a href="http://ssd.eeng.dcu.ie:8091/mouraua2/" rel="nofollow">/</a></td>
                <td>Home page</td>
                <td align="center">No</td>
                <td align="center">-</td>
            </tr>
            <tr>
                <td><a href="http://ssd.eeng.dcu.ie:8091/mouraua2/application" rel="nofollow">/application</a></td>
                <td>Anonymous ordering page</td>
                <td align="center">No</td>
                <td align="center">-</td>
            </tr>
            <tr>
                <td><a href="http://ssd.eeng.dcu.ie:8091/mouraua2/application/professional" rel="nofollow">/application/professional</a></td>
                <td>Restaurant managing page</td>
                <td align="center">Yes</td>
                <td align="center">Yes</td>
            </tr>
            <tr>
                <td><a href="http://ssd.eeng.dcu.ie:8091/mouraua2/application/admin" rel="nofollow">/application/admin</a></td>
                <td>Database administration page</td>
                <td align="center">Yes</td>
                <td align="center">No</td>
            </tr>
            <tr>
                <td><a href="http://ssd.eeng.dcu.ie:8091/mouraua2/report" rel="nofollow">/report</a></td>
                <td>Report page</td>
                <td align="center">No</td>
                <td align="center">-</td>
            </tr>
            </tbody>
        </table>
        <h3><a id="user-content-javadoc" class="anchor" aria-hidden="true" href="#javadoc"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Javadoc</h3>
        <hr>
        <p>A complete Javadoc documentation for the project is available <a href="https://andreamouraud.github.io/" rel="nofollow">here</a></p>
        <h3><a id="user-content-admin" class="anchor" aria-hidden="true" href="#admin"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Admin</h3>
        <hr>
        <p>The <a href="http://ssd.eeng.dcu.ie:8091/mouraua2/application/admin" rel="nofollow">administration system</a> is used to manage the application:</p>
        <ul>
            <li>Reset the database</li>
            <li>Populate the database</li>
        </ul>
        <p>It is accessed with a single account, that cannot be removed nor changed:</p>
        <table>
            <thead>
            <tr>
                <th>Email</th>
                <th>Password</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><a href="mailto:admin@dcu.ie">admin@dcu.ie</a></td>
                <td>adminpass</td>
            </tr>
            </tbody>
        </table>
        <h3><a id="user-content-application" class="anchor" aria-hidden="true" href="#application"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Application</h3>
        <hr>
        <p>The application is separated in two parts</p>
        <h4><a id="user-content-anonymous-ordering" class="anchor" aria-hidden="true" href="#anonymous-ordering"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Anonymous ordering</h4>
        <p>The <a href="http://ssd.eeng.dcu.ie:8091/application/mouraua2/" rel="nofollow">anonymous ordering page</a> is where the user will be able to order his food.
            The ordering path is quite simple :</p>
        <ul>
            <li>A list of available restaurants that the user can select is presented, if none exists, a message notifies him.</li>
            <li>A list of available menus that the user can select (from the chosen restaurant) is presented, if none exists, a message notifies him.</li>
            <li>An order finalization page is presented to the user where he can set his name and order.</li>
            <li>An order confirmation page is presented.</li>
        </ul>
        <h4><a id="user-content-restaurant-managing" class="anchor" aria-hidden="true" href="#restaurant-managing"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Restaurant managing</h4>
        <p>Sample login details (generated from the <a href="http://ssd.eeng.dcu.ie:8091/mouraua2/application/admin" rel="nofollow">administration page</a> populate):</p>
        <table>
            <thead>
            <tr>
                <th>Email</th>
                <th>Password</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><a href="mailto:user@dcu.ie">user@dcu.ie</a></td>
                <td>password</td>
            </tr>
            </tbody>
        </table>
        <p>The <a href="http://ssd.eeng.dcu.ie:8091/mouraua2/application/professional" rel="nofollow">restaurant managing page</a> is where any restaurateur can register and manage his restaurants for customers to order.
            This is what he can do:</p>
        <ul>
            <li>Create and modify restaurants.</li>
            <li>Create and modify menus.</li>
            <li>See the last orders in each of his restaurants.</li>
        </ul>
        <h3><a id="user-content-database" class="anchor" aria-hidden="true" href="#database"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Database</h3>
        <hr>
        <p>If you wish to manually build the database tables instead of using the administration system, here are queries :</p>
        <p><em>The queries must be performed in this exact order because of constraint rules</em></p>
        <h4><a id="user-content-users" class="anchor" aria-hidden="true" href="#users"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Users</h4>
        <div class="highlight highlight-source-sql"><pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">mouraua2_users</span> (
                id <span class="pl-k">INTEGER</span> GENERATED ALWAYS <span class="pl-k">as</span> IDENTITY(START with <span class="pl-c1">1</span> INCREMENT by <span class="pl-c1">1</span>),
                email <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>) <span class="pl-k">NOT NULL</span> UNIQUE,
                password <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>) <span class="pl-k">NOT NULL</span>,
                firstname <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>) <span class="pl-k">NOT NULL</span>,
                lastname <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>) <span class="pl-k">NOT NULL</span>,
                gender <span class="pl-k">INTEGER</span>,
                salt <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>),
                <span class="pl-k">PRIMARY KEY</span>(id)
            )</pre></div>
        <h4><a id="user-content-restaurants" class="anchor" aria-hidden="true" href="#restaurants"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Restaurants</h4>
        <div class="highlight highlight-source-sql"><pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">mouraua2_restaurants</span> (
                id <span class="pl-k">INTEGER</span> GENERATED ALWAYS <span class="pl-k">as</span> IDENTITY(START with <span class="pl-c1">1</span> INCREMENT by <span class="pl-c1">1</span>),
                name <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>),
                location <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>),
                owner <span class="pl-k">INTEGER</span>,
                description <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>),
                phoneNumber <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>),
                <span class="pl-k">PRIMARY KEY</span>(id),
                <span class="pl-k">CONSTRAINT</span> FK_RESTAURANTS_USERS_owner <span class="pl-k">FOREIGN KEY</span> (owner) <span class="pl-k">REFERENCES</span> MOURAUA2_USERS(ID) <span class="pl-k">ON DELETE</span> <span class="pl-k">SET</span> <span class="pl-k">NULL</span>
            )</pre></div>
        <h4><a id="user-content-menus" class="anchor" aria-hidden="true" href="#menus"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Menus</h4>
        <div class="highlight highlight-source-sql"><pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">mouraua2_menus</span> (
                id <span class="pl-k">INTEGER</span> GENERATED ALWAYS <span class="pl-k">as</span> IDENTITY(START with <span class="pl-c1">1</span> INCREMENT by <span class="pl-c1">1</span>),
                name <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>),
                description <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>),
                restaurant <span class="pl-k">INTEGER</span>,
                price BINARY_DOUBLE,
                <span class="pl-k">PRIMARY KEY</span>(id),
                <span class="pl-k">CONSTRAINT</span> FK_MENUS_RESTAURANTS_id <span class="pl-k">FOREIGN KEY</span> (restaurant) <span class="pl-k">REFERENCES</span> MOURAUA2_RESTAURANTS(ID) <span class="pl-k">ON DELETE</span> <span class="pl-k">SET</span> <span class="pl-k">NULL</span>
            )</pre></div>
        <h4><a id="user-content-orders" class="anchor" aria-hidden="true" href="#orders"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Orders</h4>
        <div class="highlight highlight-source-sql"><pre><span class="pl-k">CREATE</span> <span class="pl-k">TABLE</span> <span class="pl-en">mouraua2_orders</span> (
                id <span class="pl-k">INTEGER</span> GENERATED ALWAYS <span class="pl-k">as</span> IDENTITY(START with <span class="pl-c1">1</span> INCREMENT by <span class="pl-c1">1</span>),
                restaurant <span class="pl-k">INTEGER</span>,
                menu <span class="pl-k">INTEGER</span>,
                customer <span class="pl-k">VARCHAR</span>(<span class="pl-c1">255</span>),
                <span class="pl-k">time</span> <span class="pl-k">TIMESTAMP</span> DEFAULT <span class="pl-c1">CURRENT_TIMESTAMP</span>,
                <span class="pl-k">PRIMARY KEY</span>(id),
                <span class="pl-k">CONSTRAINT</span> FK_ORDERS_RESTAURANT_id <span class="pl-k">FOREIGN KEY</span> (restaurant) <span class="pl-k">REFERENCES</span> MOURAUA2_RESTAURANTS(ID) <span class="pl-k">ON DELETE</span> <span class="pl-k">SET</span> <span class="pl-k">NULL</span>,
                <span class="pl-k">CONSTRAINT</span> FK_ORDERS_MENU_id <span class="pl-k">FOREIGN KEY</span> (menu) <span class="pl-k">REFERENCES</span> MOURAUA2_MENUS(ID) <span class="pl-k">ON DELETE</span> <span class="pl-k">SET</span> <span class="pl-k">NULL</span>
            )</pre></div>
        <h3><a id="user-content-special-effort-and-functionality" class="anchor" aria-hidden="true" href="#special-effort-and-functionality"><svg class="octicon octicon-link" viewBox="0 0 16 16" version="1.1" width="16" height="16" aria-hidden="true"><path fill-rule="evenodd" d="M4 9h1v1H4c-1.5 0-3-1.69-3-3.5S2.55 3 4 3h4c1.45 0 3 1.69 3 3.5 0 1.41-.91 2.72-2 3.25V8.59c.58-.45 1-1.27 1-2.09C10 5.22 8.98 4 8 4H4c-.98 0-2 1.22-2 2.5S3 9 4 9zm9-3h-1v1h1c1 0 2 1.22 2 2.5S13.98 12 13 12H9c-.98 0-2-1.22-2-2.5 0-.83.42-1.64 1-2.09V6.25c-1.09.53-2 1.84-2 3.25C6 11.31 7.55 13 9 13h4c1.45 0 3-1.69 3-3.5S14.5 6 13 6z"></path></svg></a>Special effort and functionality</h3>
        <hr>
        <ul>
            <li>Design</li>
            <li><a href="http://ssd.eeng.dcu.ie:8091/mouraua2/application/admin" rel="nofollow">Administration page</a> : Automated database reset and populate</li>
            <li>SHA256 Password hashing with SecureRandom generated salt</li>
            <li>Field validation (Regex)</li>
            <li>MVC Architecture</li>
            <li>Session tracking and logout</li>
            <li><a href="https://andreamouraud.github.io/" rel="nofollow">Complete Javadoc documentation</a></li>
            <li>MarkDown report (Turned to HTML scraping Github, <em>allowed by teacher</em>)</li>
            <li>Field modification</li>
        </ul>
    </article>
</div>
<hr style="background-color: #e1e4e8;border: 0;height: 4px;margin: 24px 0;padding: 0;">

<div style="text-align:center;color: #24292e;line-height: 1.5;font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Helvetica,Arial,sans-serif,Apple Color Emoji,Segoe UI Emoji,Segoe UI Symbol;font-size: 16px;word-wrap: break-word;">
    Andrea Mouraud<br>
    Made using MarkDown with Github style<br>
    <a style="color: dodgerblue;text-decoration: none;" href="${contextPath}/report">Get back to top of report</a>
</div>
</body>
</html>