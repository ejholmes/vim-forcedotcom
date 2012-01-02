" Vim syntax file " Language:	  Apex
" Maintainer:	Eric Holmes <eric@ejholmes.net>
" URL:		https://github.com/ejholmes/vim-forcedotcom

if exists("b:current_syntax")
    finish
endif

syn keyword apexConditional     if else switch
syn keyword apexRepeat          while for do
syn keyword apexBoolean         true false
syn keyword apexConstant        null
syn keyword apexTypedef         this super
syn keyword apexOperator        new insert update delete select where and in includes from
syn keyword apexStatement       return
syn keyword apexType            String Integer Date Datetime Decimal Double Time Map List Blob Boolean Long Set sObject
syn keyword apexType            PageReference ApexPages Database System Crypto Cookie Document EncodingUtil Http HttpRequest HttpResponse UserInfo Test Trigger XmlNode XmlStreamReader XmlStreamWriter Site Schema
syn keyword apexType            void testMethod
syn keyword apexSObject         Account Attachment Case Campaign CampaignMember Contract Lead Product2 Opportunity RecordType User Task Partner Organization Pricebook2 Profile
syn keyword apexStorageClass	static transient final serializable
syn keyword apexException       throw try catch finally
syn keyword apexClassDecl       extends implements interface enum
syn keyword apexBranch          break continue
syn keyword apexScopeDecl       public protected private abstract global trigger on after before
syn keyword apexTodo            contained TODO FIXME
syn match   apexTypedef		    "\.\s*\<class\>"ms=s+1
syn match   apexClassDecl	    "^class\>"
syn match   apexClassDecl	    "[^.]\s*\<class\>"ms=s+1
syn match   apexAnnotation	    "@\([_$a-zA-Z][_$a-zA-Z0-9]*\.\)*[_$a-zA-Z][_$a-zA-Z0-9]*\>"
syn match   apexClassDecl	    "@interface\>"
syn match   apexBraces          "[{}]"
syn match   apexKeyword         "[<>]"
syn match   apexKeyword         "=>"
" syn match   apexSObject         "[a-zA-Z-_1-9]*__c"
syn region  apexString          start=+'+ end=+'+

" Comments
syn region  apexComment         start="/\*" end="\*/" contains=apexTodo
syn match   apexComment         "//.*" contains=apexTodo
syn match   apexComment         "/\*\*/"

" Numbers
syn match   apexNumber		    "\<\(0[0-7]*\|0[xX]\x\+\|\d\+\)[lL]\=\>"
syn match   apexNumber		    "\(\<\d\+\.\d*\|\.\d\+\)\([eE][-+]\=\d\+\)\=[fFdD]\="
syn match   apexNumber		    "\<\d\+[eE][-+]\=\d\+[fFdD]\=\>"
syn match   apexNumber		    "\<\d\+\([eE][-+]\=\d\+\)\=[fFdD]\>"

hi def link apexConditional     Conditional
hi def link apexBranch          Conditional
hi def link apexRepeat          Repeat
hi def link apexBoolean         Boolean
hi def link apexConstant        Constant
hi def link apexStatement       Statement
hi def link apexTypedef         Typedef
hi def link apexOperator        Operator
hi def link apexType            Type
hi def link apexSObject         Special
hi def link apexException       Exception
hi def link apexStorageClass    StorageClass
hi def link apexClassDecl       StorageClass
hi def link apexScopeDecl       Keyword
hi def link apexKeyword         Keyword
hi def link apexAnnotation      PreProc
hi def link apexString          String
hi def link apexFuncDef         Function
hi def link apexComment         Comment
hi def link apexTodo            Todo
hi def link apexNumber          Number
