.class Landroid/widget/Editor$SuggestionsPopupWindow$SuggestionSpanComparator;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor$SuggestionsPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SuggestionSpanComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/text/style/SuggestionSpan;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Editor$SuggestionsPopupWindow;


# direct methods
.method private constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V
    .registers 2

    .prologue
    .line 3078
    iput-object p1, p0, this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor$SuggestionsPopupWindow;Landroid/widget/Editor$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Editor$SuggestionsPopupWindow;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 3078
    invoke-direct {p0, p1}, <init>(Landroid/widget/Editor$SuggestionsPopupWindow;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I
    .registers 12
    .param p1, "span1"    # Landroid/text/style/SuggestionSpan;
    .param p2, "span2"    # Landroid/text/style/SuggestionSpan;

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 3080
    invoke-virtual {p1}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v2

    .line 3081
    .local v2, "flag1":I
    invoke-virtual {p2}, Landroid/text/style/SuggestionSpan;->getFlags()I

    move-result v3

    .line 3082
    .local v3, "flag2":I
    if-eq v2, v3, :cond_38

    .line 3084
    and-int/lit8 v8, v2, 0x1

    if-eqz v8, :cond_26

    move v0, v7

    .line 3085
    .local v0, "easy1":Z
    :goto_12
    and-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_28

    move v1, v7

    .line 3086
    .local v1, "easy2":Z
    :goto_17
    and-int/lit8 v8, v2, 0x2

    if-eqz v8, :cond_2a

    move v4, v7

    .line 3087
    .local v4, "misspelled1":Z
    :goto_1c
    and-int/lit8 v8, v3, 0x2

    if-eqz v8, :cond_21

    move v5, v7

    .line 3088
    .local v5, "misspelled2":Z
    :cond_21
    if-eqz v0, :cond_2c

    if-nez v4, :cond_2c

    .line 3094
    .end local v0    # "easy1":Z
    .end local v1    # "easy2":Z
    .end local v4    # "misspelled1":Z
    .end local v5    # "misspelled2":Z
    :cond_25
    :goto_25
    return v6

    :cond_26
    move v0, v5

    .line 3084
    goto :goto_12

    .restart local v0    # "easy1":Z
    :cond_28
    move v1, v5

    .line 3085
    goto :goto_17

    .restart local v1    # "easy2":Z
    :cond_2a
    move v4, v5

    .line 3086
    goto :goto_1c

    .line 3089
    .restart local v4    # "misspelled1":Z
    .restart local v5    # "misspelled2":Z
    :cond_2c
    if-eqz v1, :cond_32

    if-nez v5, :cond_32

    move v6, v7

    goto :goto_25

    .line 3090
    :cond_32
    if-nez v4, :cond_25

    .line 3091
    if-eqz v5, :cond_38

    move v6, v7

    goto :goto_25

    .line 3094
    .end local v0    # "easy1":Z
    .end local v1    # "easy2":Z
    .end local v4    # "misspelled1":Z
    .end local v5    # "misspelled2":Z
    :cond_38
    iget-object v6, p0, this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    # getter for: Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$2600(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v6, p0, this$1:Landroid/widget/Editor$SuggestionsPopupWindow;

    # getter for: Landroid/widget/Editor$SuggestionsPopupWindow;->mSpansLengths:Ljava/util/HashMap;
    invoke-static {v6}, Landroid/widget/Editor$SuggestionsPopupWindow;->access$2600(Landroid/widget/Editor$SuggestionsPopupWindow;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v6, v7, v6

    goto :goto_25
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 3078
    check-cast p1, Landroid/text/style/SuggestionSpan;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/text/style/SuggestionSpan;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, compare(Landroid/text/style/SuggestionSpan;Landroid/text/style/SuggestionSpan;)I

    move-result v0

    return v0
.end method
