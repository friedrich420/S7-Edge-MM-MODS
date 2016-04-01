.class Landroid/widget/Editor$SuggestionsPopupWindow;
.super Landroid/widget/Editor$PinnedPopupWindow;
.source "Editor.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionsPopupWindow"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;,
        Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;,
        Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;
    }
.end annotation


# static fields
.field private static final ADD_TO_DICTIONARY:I = -0x1

.field private static final DELETE_TEXT:I = -0x2

.field private static final MAX_NUMBER_SUGGESTIONS:I = 0x5


# instance fields
.field private mCursorWasVisibleBeforeSuggestions:Z

.field private mIsShowingUp:Z

.field private mNumberOfSuggestions:I

.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .registers 4

    .prologue
    .line 2969
    iput-object p1, p0, this$0:Landroid/widget/Editor;

    invoke-direct {p0, p1}, Landroid/widget/Editor$PinnedPopupWindow;-><init>(Landroid/widget/Editor;)V

    .line 2943
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsShowingUp:Z

    .line 2970
    iget-boolean v0, p1, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, mCursorWasVisibleBeforeSuggestions:Z

    .line 2971
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    iput-object v0, p0, mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 2972
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mSpansLengths:Ljava/util/HashMap;

    .line 2973
    return-void
.end method

.method static synthetic access$2000(Landroid/widget/Editor$SuggestionsPopupWindow;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2936
    iget-boolean v0, p0, mCursorWasVisibleBeforeSuggestions:Z

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/Editor$SuggestionsPopupWindow;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2936
    iget v0, p0, mNumberOfSuggestions:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/Editor$SuggestionsPopupWindow;)[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2936
    iget-object v0, p0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;

    .prologue
    .line 2936
    iget-object v0, p0, mSpansLengths:Ljava/util/HashMap;

    return-object v0
.end method

.method private getSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .registers 12

    .prologue
    .line 3103
    iget-object v9, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 3104
    .local v4, "pos":I
    iget-object v9, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v9}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Landroid/text/Spannable;

    .line 3105
    .local v5, "spannable":Landroid/text/Spannable;
    const-class v9, Landroid/text/style/SuggestionSpan;

    invoke-interface {v5, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/SuggestionSpan;

    .line 3107
    .local v8, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    iget-object v9, p0, mSpansLengths:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 3108
    move-object v0, v8

    .local v0, "arr$":[Landroid/text/style/SuggestionSpan;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_26
    if-ge v2, v3, :cond_40

    aget-object v7, v0, v2

    .line 3109
    .local v7, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 3110
    .local v6, "start":I
    invoke-interface {v5, v7}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 3111
    .local v1, "end":I
    iget-object v9, p0, mSpansLengths:Ljava/util/HashMap;

    sub-int v10, v1, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3108
    add-int/lit8 v2, v2, 0x1

    goto :goto_26

    .line 3116
    .end local v1    # "end":I
    .end local v6    # "start":I
    .end local v7    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_40
    iget-object v9, p0, mSuggestionSpanComparator:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 3117
    return-object v8
.end method

.method private highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V
    .registers 13
    .param p1, "suggestionInfo"    # Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .param p2, "unionStart"    # I
    .param p3, "unionEnd"    # I

    .prologue
    const/4 v8, 0x0

    .line 3303
    iget-object v4, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spannable;

    .line 3304
    .local v2, "text":Landroid/text/Spannable;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 3305
    .local v1, "spanStart":I
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    invoke-interface {v2, v4}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 3308
    .local v0, "spanEnd":I
    sub-int v4, v1, p2

    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    .line 3309
    iget v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    .line 3312
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    iget-object v5, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    iget-object v6, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v6}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-virtual {v4, v5, v8, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3316
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3317
    .local v3, "textAsString":Ljava/lang/String;
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, p2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3318
    iget-object v4, p1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3319
    return-void
.end method

.method private updateSuggestions()Z
    .registers 37

    .prologue
    .line 3188
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Landroid/text/Spannable;

    .line 3189
    .local v22, "spannable":Landroid/text/Spannable;
    invoke-direct/range {p0 .. p0}, getSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    move-result-object v28

    .line 3191
    .local v28, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v28

    array-length v11, v0

    .line 3193
    .local v11, "nbSpans":I
    if-nez v11, :cond_1c

    const/16 v31, 0x0

    .line 3298
    :goto_1b
    return v31

    .line 3195
    :cond_1c
    const/16 v31, 0x0

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, mNumberOfSuggestions:I

    .line 3196
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v31 .. v31}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/lang/CharSequence;->length()I

    move-result v21

    .line 3197
    .local v21, "spanUnionStart":I
    const/16 v20, 0x0

    .line 3199
    .local v20, "spanUnionEnd":I
    const/4 v9, 0x0

    .line 3200
    .local v9, "misspelledSpan":Landroid/text/style/SuggestionSpan;
    const/16 v30, 0x0

    .line 3202
    .local v30, "underlineColor":I
    const/16 v18, 0x0

    .local v18, "spanIndex":I
    :goto_3d
    move/from16 v0, v18

    if-ge v0, v11, :cond_136

    .line 3203
    aget-object v27, v28, v18

    .line 3204
    .local v27, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    .line 3205
    .local v19, "spanStart":I
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v17

    .line 3206
    .local v17, "spanEnd":I
    move/from16 v0, v19

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 3207
    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 3209
    invoke-virtual/range {v27 .. v27}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v31

    and-int/lit8 v31, v31, 0x2

    if-eqz v31, :cond_6d

    .line 3210
    move-object/from16 v9, v27

    .line 3214
    :cond_6d
    if-nez v18, :cond_73

    invoke-virtual/range {v27 .. v27}, Landroid/text/style/SuggestionSpan;->getUnderlineColor()I

    move-result v30

    .line 3216
    :cond_73
    invoke-virtual/range {v27 .. v27}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v29

    .line 3217
    .local v29, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, v29

    array-length v12, v0

    .line 3218
    .local v12, "nbSuggestions":I
    const/16 v24, 0x0

    .local v24, "suggestionIndex":I
    :goto_7c
    move/from16 v0, v24

    if-ge v0, v12, :cond_12a

    .line 3219
    aget-object v23, v29, v24

    .line 3221
    .local v23, "suggestion":Ljava/lang/String;
    const/16 v26, 0x0

    .line 3222
    .local v26, "suggestionIsDuplicate":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_85
    move-object/from16 v0, p0

    iget v0, v0, mNumberOfSuggestions:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v6, v0, :cond_d3

    .line 3223
    move-object/from16 v0, p0

    iget-object v0, v0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v6

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12e

    .line 3224
    move-object/from16 v0, p0

    iget-object v0, v0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v6

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v16, v0

    .line 3225
    .local v16, "otherSuggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    .line 3226
    .local v15, "otherSpanStart":I
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 3227
    .local v14, "otherSpanEnd":I
    move/from16 v0, v19

    if-ne v0, v15, :cond_12e

    move/from16 v0, v17

    if-ne v0, v14, :cond_12e

    .line 3228
    const/16 v26, 0x1

    .line 3234
    .end local v14    # "otherSpanEnd":I
    .end local v15    # "otherSpanStart":I
    .end local v16    # "otherSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_d3
    if-nez v26, :cond_132

    .line 3235
    move-object/from16 v0, p0

    iget-object v0, v0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mNumberOfSuggestions:I

    move/from16 v32, v0

    aget-object v25, v31, v32

    .line 3236
    .local v25, "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3237
    move/from16 v0, v24

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 3238
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v33

    move-object/from16 v0, v31

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3240
    move-object/from16 v0, p0

    iget v0, v0, mNumberOfSuggestions:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, mNumberOfSuggestions:I

    .line 3242
    move-object/from16 v0, p0

    iget v0, v0, mNumberOfSuggestions:I

    move/from16 v31, v0

    const/16 v32, 0x5

    move/from16 v0, v31

    move/from16 v1, v32

    if-ne v0, v1, :cond_132

    .line 3244
    move/from16 v18, v11

    .line 3202
    .end local v6    # "i":I
    .end local v23    # "suggestion":Ljava/lang/String;
    .end local v25    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    .end local v26    # "suggestionIsDuplicate":Z
    :cond_12a
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3d

    .line 3222
    .restart local v6    # "i":I
    .restart local v23    # "suggestion":Ljava/lang/String;
    .restart local v26    # "suggestionIsDuplicate":Z
    :cond_12e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_85

    .line 3218
    :cond_132
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_7c

    .line 3251
    .end local v6    # "i":I
    .end local v12    # "nbSuggestions":I
    .end local v17    # "spanEnd":I
    .end local v19    # "spanStart":I
    .end local v23    # "suggestion":Ljava/lang/String;
    .end local v24    # "suggestionIndex":I
    .end local v26    # "suggestionIsDuplicate":Z
    .end local v27    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v29    # "suggestions":[Ljava/lang/String;
    :cond_136
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_137
    move-object/from16 v0, p0

    iget v0, v0, mNumberOfSuggestions:I

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v6, v0, :cond_157

    .line 3252
    move-object/from16 v0, p0

    iget-object v0, v0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    aget-object v31, v31, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v21

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, highlightTextDifferences(Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;II)V

    .line 3251
    add-int/lit8 v6, v6, 0x1

    goto :goto_137

    .line 3255
    :cond_157
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v7

    .line 3258
    .local v7, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v7, :cond_1dc

    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodManager;->isCurrentInputMethodAsSamsungKeyboard()Z

    move-result v31

    if-nez v31, :cond_1dc

    if-eqz v9, :cond_1dc

    .line 3259
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 3260
    .local v10, "misspelledStart":I
    move-object/from16 v0, v22

    invoke-interface {v0, v9}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 3261
    .local v8, "misspelledEnd":I
    if-ltz v10, :cond_1dc

    if-le v8, v10, :cond_1dc

    .line 3262
    move-object/from16 v0, p0

    iget-object v0, v0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mNumberOfSuggestions:I

    move/from16 v32, v0

    aget-object v25, v31, v32

    .line 3263
    .restart local v25    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v25

    iput-object v9, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3264
    const/16 v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 3265
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    const v35, 0x1040351

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v31 .. v34}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3267
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x21

    invoke-virtual/range {v31 .. v35}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3270
    move-object/from16 v0, p0

    iget v0, v0, mNumberOfSuggestions:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, mNumberOfSuggestions:I

    .line 3275
    .end local v8    # "misspelledEnd":I
    .end local v10    # "misspelledStart":I
    .end local v25    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget v0, v0, mNumberOfSuggestions:I

    move/from16 v32, v0

    aget-object v25, v31, v32

    .line 3276
    .restart local v25    # "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    const/16 v31, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v25

    iput-object v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 3277
    const/16 v31, -0x2

    move/from16 v0, v31

    move-object/from16 v1, v25

    iput v0, v1, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    .line 3278
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v33

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    const v35, 0x1040352

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v31 .. v34}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3280
    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v31, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->highlightSpan:Landroid/text/style/TextAppearanceSpan;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x21

    invoke-virtual/range {v31 .. v35}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 3282
    move-object/from16 v0, p0

    iget v0, v0, mNumberOfSuggestions:I

    move/from16 v31, v0

    add-int/lit8 v31, v31, 0x1

    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, mNumberOfSuggestions:I

    .line 3284
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v31, v0

    if-nez v31, :cond_266

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    new-instance v32, Landroid/text/style/SuggestionRangeSpan;

    invoke-direct/range {v32 .. v32}, Landroid/text/style/SuggestionRangeSpan;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    .line 3285
    :cond_266
    if-nez v30, :cond_2af

    .line 3287
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v32, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v32 .. v32}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v32

    move-object/from16 v0, v32

    iget v0, v0, Landroid/widget/TextView;->mHighlightColor:I

    move/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    .line 3294
    :goto_287
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v31, v0

    const/16 v32, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move/from16 v2, v21

    move/from16 v3, v20

    move/from16 v4, v32

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 3297
    move-object/from16 v0, p0

    iget-object v0, v0, mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->notifyDataSetChanged()V

    .line 3298
    const/16 v31, 0x1

    goto/16 :goto_1b

    .line 3289
    :cond_2af
    const v5, 0x3ecccccd    # 0.4f

    .line 3290
    .local v5, "BACKGROUND_TRANSPARENCY":F
    invoke-static/range {v30 .. v30}, Landroid/graphics/Color;->alpha(I)I

    move-result v31

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    const v32, 0x3ecccccd    # 0.4f

    mul-float v31, v31, v32

    move/from16 v0, v31

    float-to-int v13, v0

    .line 3291
    .local v13, "newAlpha":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v31, v0

    const v32, 0xffffff

    and-int v32, v32, v30

    shl-int/lit8 v33, v13, 0x18

    add-int v32, v32, v33

    invoke-virtual/range {v31 .. v32}, Landroid/text/style/SuggestionRangeSpan;->setBackgroundColor(I)V

    goto :goto_287
.end method


# virtual methods
.method protected clipVertically(I)I
    .registers 5
    .param p1, "positionY"    # I

    .prologue
    .line 3177
    iget-object v2, p0, mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v1

    .line 3178
    .local v1, "height":I
    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3179
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method protected createPopupWindow()V
    .registers 4

    .prologue
    .line 2977
    new-instance v0, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;

    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010373

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/Editor$SuggestionsPopupWindow$CustomPopupWindow;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/content/Context;I)V

    iput-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    .line 2979
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 2980
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 2981
    iget-object v0, p0, mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 2982
    return-void
.end method

.method protected getTextOffset()I
    .registers 2

    .prologue
    .line 3167
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getVerticalLocalPosition(I)I
    .registers 3
    .param p1, "line"    # I

    .prologue
    .line 3172
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public hide()V
    .registers 1

    .prologue
    .line 3184
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    .line 3185
    return-void
.end method

.method protected initContentView()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2986
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 2987
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v2, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-direct {v2, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    iput-object v2, p0, mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    .line 2988
    iget-object v2, p0, mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2989
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2990
    iput-object v1, p0, mContentView:Landroid/view/ViewGroup;

    .line 2993
    const/4 v2, 0x7

    new-array v2, v2, [Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    iput-object v2, p0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    .line 2994
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_27
    iget-object v2, p0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    array-length v2, v2

    if-ge v0, v2, :cond_38

    .line 2995
    iget-object v2, p0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    new-instance v3, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    invoke-direct {v3, p0, v4}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;-><init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V

    aput-object v3, v2, v0

    .line 2994
    add-int/lit8 v0, v0, 0x1

    goto :goto_27

    .line 2997
    :cond_38
    return-void
.end method

.method public isShowingUp()Z
    .registers 2

    .prologue
    .line 3000
    iget-boolean v0, p0, mIsShowingUp:Z

    return v0
.end method

.method protected measureContent()V
    .registers 10

    .prologue
    const/high16 v8, -0x80000000

    .line 3136
    iget-object v7, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 3137
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3139
    .local v1, "horizontalMeasure":I
    iget v7, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3142
    .local v4, "verticalMeasure":I
    const/4 v6, 0x0

    .line 3143
    .local v6, "width":I
    const/4 v5, 0x0

    .line 3144
    .local v5, "view":Landroid/view/View;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    iget v7, p0, mNumberOfSuggestions:I

    if-ge v2, v7, :cond_40

    .line 3145
    iget-object v7, p0, mSuggestionsAdapter:Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;

    iget-object v8, p0, mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2, v5, v8}, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 3146
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    const/4 v8, -0x2

    iput v8, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3147
    invoke-virtual {v5, v1, v4}, Landroid/view/View;->measure(II)V

    .line 3148
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3144
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 3152
    :cond_40
    iget-object v7, p0, mContentView:Landroid/view/ViewGroup;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v8, v4}, Landroid/view/ViewGroup;->measure(II)V

    .line 3156
    iget-object v7, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 3157
    .local v3, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_80

    .line 3158
    iget-object v7, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    if-nez v7, :cond_65

    iget-object v7, p0, this$0:Landroid/widget/Editor;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    # setter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7, v8}, Landroid/widget/Editor;->access$2702(Landroid/widget/Editor;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 3159
    :cond_65
    iget-object v7, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3160
    iget-object v7, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v7}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget-object v8, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTempRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/widget/Editor;->access$2700(Landroid/widget/Editor;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 3162
    :cond_80
    iget-object v7, p0, mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 3163
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 36
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3323
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    .line 3324
    .local v3, "editable":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v0, v0, mSuggestionInfos:[Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;

    move-object/from16 v25, v0

    aget-object v16, v25, p3

    .line 3326
    .local v16, "suggestionInfo":Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v25, v0

    const/16 v26, -0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_85

    .line 3327
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v13

    .line 3328
    .local v13, "spanUnionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/widget/Editor;->mSuggestionRangeSpan:Landroid/text/style/SuggestionRangeSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    .line 3329
    .local v12, "spanUnionEnd":I
    if-ltz v13, :cond_81

    if-le v12, v13, :cond_81

    .line 3331
    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v25

    move/from16 v0, v25

    if-ge v12, v0, :cond_72

    invoke-interface {v3, v12}, Landroid/text/Editable;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v25

    if-eqz v25, :cond_72

    if-eqz v13, :cond_70

    add-int/lit8 v25, v13, -0x1

    move/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->charAt(I)C

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v25

    if-eqz v25, :cond_72

    .line 3335
    :cond_70
    add-int/lit8 v12, v12, 0x1

    .line 3337
    :cond_72
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13, v12}, Landroid/widget/TextView;->deleteText_internal(II)V

    .line 3339
    :cond_81
    invoke-virtual/range {p0 .. p0}, hide()V

    .line 3423
    .end local v12    # "spanUnionEnd":I
    .end local v13    # "spanUnionStart":I
    :goto_84
    return-void

    .line 3343
    :cond_85
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v11

    .line 3344
    .local v11, "spanStart":I
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 3345
    .local v10, "spanEnd":I
    if-ltz v11, :cond_a1

    if-gt v10, v11, :cond_a5

    .line 3347
    :cond_a1
    invoke-virtual/range {p0 .. p0}, hide()V

    goto :goto_84

    .line 3351
    :cond_a5
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 3353
    .local v9, "originalText":Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v25, v0

    const/16 v26, -0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_12b

    .line 3354
    new-instance v5, Landroid/content/Intent;

    const-string v25, "com.android.settings.USER_DICTIONARY_INSERT"

    move-object/from16 v0, v25

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3355
    .local v5, "intent":Landroid/content/Intent;
    const-string/jumbo v25, "word"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3356
    const-string v25, "locale"

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getTextServicesLocale()Ljava/util/Locale;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3359
    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v25

    const/high16 v26, 0x10000000

    or-int v25, v25, v26

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3360
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3363
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 3364
    invoke-static {v3, v10}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3365
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    # invokes: Landroid/widget/Editor;->updateSpellCheckSpans(IIZ)V
    invoke-static {v0, v11, v10, v1}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;IIZ)V

    .line 3422
    .end local v5    # "intent":Landroid/content/Intent;
    :goto_126
    invoke-virtual/range {p0 .. p0}, hide()V

    goto/16 :goto_84

    .line 3368
    :cond_12b
    const-class v25, Landroid/text/style/SuggestionSpan;

    move-object/from16 v0, v25

    invoke-interface {v3, v11, v10, v0}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Landroid/text/style/SuggestionSpan;

    .line 3370
    .local v19, "suggestionSpans":[Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v19

    array-length v6, v0

    .line 3371
    .local v6, "length":I
    new-array v0, v6, [I

    move-object/from16 v22, v0

    .line 3372
    .local v22, "suggestionSpansStarts":[I
    new-array v0, v6, [I

    move-object/from16 v20, v0

    .line 3373
    .local v20, "suggestionSpansEnds":[I
    new-array v0, v6, [I

    move-object/from16 v21, v0

    .line 3374
    .local v21, "suggestionSpansFlags":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_145
    if-ge v4, v6, :cond_173

    .line 3375
    aget-object v17, v19, v4

    .line 3376
    .local v17, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v25

    aput v25, v22, v4

    .line 3377
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v25

    aput v25, v20, v4

    .line 3378
    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v25

    aput v25, v21, v4

    .line 3381
    invoke-virtual/range {v17 .. v17}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v18

    .line 3382
    .local v18, "suggestionSpanFlags":I
    and-int/lit8 v25, v18, 0x2

    if-lez v25, :cond_170

    .line 3383
    and-int/lit8 v18, v18, -0x3

    .line 3384
    and-int/lit8 v18, v18, -0x2

    .line 3385
    invoke-virtual/range {v17 .. v18}, Landroid/text/style/SuggestionSpan;->setFlags(I)V

    .line 3374
    :cond_170
    add-int/lit8 v4, v4, 0x1

    goto :goto_145

    .line 3389
    .end local v17    # "suggestionSpan":Landroid/text/style/SuggestionSpan;
    .end local v18    # "suggestionSpanFlags":I
    :cond_173
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionStart:I

    move/from16 v23, v0

    .line 3390
    .local v23, "suggestionStart":I
    move-object/from16 v0, v16

    iget v15, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionEnd:I

    .line 3391
    .local v15, "suggestionEnd":I
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->text:Landroid/text/SpannableStringBuilder;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 3393
    .local v14, "suggestion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v10, v14}, Landroid/widget/TextView;->replaceText_internal(IILjava/lang/CharSequence;)V

    .line 3397
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v26, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v26 .. v26}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v26

    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v9, v2}, Landroid/text/style/SuggestionSpan;->notifySelection(Landroid/content/Context;Ljava/lang/String;I)V

    .line 3401
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionSpan:Landroid/text/style/SuggestionSpan;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    move-result-object v24

    .line 3402
    .local v24, "suggestions":[Ljava/lang/String;
    move-object/from16 v0, v16

    iget v0, v0, Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionInfo;->suggestionIndex:I

    move/from16 v25, v0

    aput-object v9, v24, v25

    .line 3405
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v25

    sub-int v26, v10, v11

    sub-int v7, v25, v26

    .line 3406
    .local v7, "lengthDifference":I
    const/4 v4, 0x0

    :goto_1dc
    if-ge v4, v6, :cond_204

    .line 3410
    aget v25, v22, v4

    move/from16 v0, v25

    if-gt v0, v11, :cond_201

    aget v25, v20, v4

    move/from16 v0, v25

    if-lt v0, v10, :cond_201

    .line 3412
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    aget-object v26, v19, v4

    aget v27, v22, v4

    aget v28, v20, v4

    add-int v28, v28, v7

    aget v29, v21, v4

    invoke-virtual/range {v25 .. v29}, Landroid/widget/TextView;->setSpan_internal(Ljava/lang/Object;III)V

    .line 3406
    :cond_201
    add-int/lit8 v4, v4, 0x1

    goto :goto_1dc

    .line 3418
    :cond_204
    add-int v8, v10, v7

    .line 3419
    .local v8, "newCursorPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Landroid/widget/Editor;

    move-object/from16 v25, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v25 .. v25}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8, v8}, Landroid/widget/TextView;->setCursorPosition_internal(II)V

    goto/16 :goto_126
.end method

.method public onParentLostFocus()V
    .registers 2

    .prologue
    .line 3004
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsShowingUp:Z

    .line 3005
    return-void
.end method

.method public show()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 3122
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Editable;

    if-nez v0, :cond_10

    .line 3132
    :cond_f
    :goto_f
    return-void

    .line 3124
    :cond_10
    invoke-direct {p0}, updateSuggestions()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3125
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mCursorVisible:Z

    iput-boolean v0, p0, mCursorWasVisibleBeforeSuggestions:Z

    .line 3126
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCursorVisible(Z)V

    .line 3127
    iput-boolean v2, p0, mIsShowingUp:Z

    .line 3129
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # setter for: Landroid/widget/Editor;->mIsSuggestionsPopup:Z
    invoke-static {v0, v2}, Landroid/widget/Editor;->access$1802(Landroid/widget/Editor;Z)Z

    .line 3130
    invoke-super {p0}, Landroid/widget/Editor$PinnedPopupWindow;->show()V

    goto :goto_f
.end method
