.class Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/SearchResultsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SearchResultsAdapter"
.end annotation


# instance fields
.field private hooking:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mContextMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 829
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 819
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    .line 830
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .line 831
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->hooking:Ljava/util/HashMap;

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    .line 835
    return-void
.end method

.method private calculateOptimumPositionForHighlight(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "findStr"    # Ljava/lang/String;
    .param p2, "srcStr"    # Ljava/lang/String;

    .prologue
    .line 975
    const/4 v0, -0x1

    .line 977
    .local v0, "offset":I
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 978
    invoke-direct {p0, p2, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->findOptimumTextKeywordPosition(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 980
    :cond_0
    const-string v1, "SearchResultsSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    return v0
.end method

.method private constructList()V
    .locals 23

    .prologue
    .line 842
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 843
    const-string v20, ""

    .line 844
    .local v20, "prevPath":Ljava/lang/String;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getCountFromDB()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_4

    .line 845
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItemFromDB(I)Ljava/lang/Object;

    move-result-object v19

    .line 846
    .local v19, "obj":Ljava/lang/Object;
    if-nez v19, :cond_1

    .line 844
    :cond_0
    :goto_1
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v21, v19

    .line 847
    check-cast v21, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;

    .line 848
    .local v21, "result":Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;
    move-object/from16 v0, v21

    iget v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 849
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 852
    :cond_2
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 855
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    new-instance v2, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/16 v16, -0x1

    const/16 v17, 0x0

    invoke-direct/range {v2 .. v17}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 859
    :cond_3
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_path:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 863
    .end local v19    # "obj":Ljava/lang/Object;
    .end local v21    # "result":Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;
    :cond_4
    return-void
.end method

.method private findOptimumTextKeywordPosition(Ljava/lang/String;Ljava/lang/String;)I
    .locals 15
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "queryStr"    # Ljava/lang/String;

    .prologue
    .line 1012
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v13, " "

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .local v11, "tokenizerQueryStr":Ljava/util/StringTokenizer;
    const-string v6, ""

    .line 1015
    .local v6, "pastTokenStr":Ljava/lang/String;
    const/4 v3, -0x1

    .line 1016
    .local v3, "optimumOffset":I
    const/4 v2, -0x1

    .line 1017
    .local v2, "currentTempLength":I
    const/4 v5, -0x1

    .line 1018
    .local v5, "pastTempLength":I
    const/4 v4, -0x1

    .line 1019
    .local v4, "pastOffset":I
    const/4 v1, -0x1

    .line 1021
    .local v1, "bestMatchedOffset":I
    :cond_0
    :goto_0
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1022
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v9

    .line 1024
    .local v9, "tokenQueryStr":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 1025
    const/4 v7, 0x0

    .line 1026
    .local v7, "startOffset":I
    move-object/from16 v8, p1

    .line 1028
    .local v8, "tempStr":Ljava/lang/String;
    :goto_1
    const-string v13, " "

    invoke-virtual {v8, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1029
    add-int/lit8 v7, v7, 0x1

    .line 1030
    const/4 v13, 0x1

    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1033
    :cond_1
    new-instance v12, Ljava/util/StringTokenizer;

    const-string v13, " "

    move-object/from16 v0, p1

    invoke-direct {v12, v0, v13}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1035
    .local v12, "tokenizerStr":Ljava/util/StringTokenizer;
    :goto_2
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1036
    invoke-virtual {v12}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    .line 1038
    .local v10, "tokenStr":Ljava/lang/String;
    invoke-virtual {v10, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1039
    if-ge v1, v7, :cond_2

    .line 1040
    move v1, v7

    .line 1061
    .end local v10    # "tokenStr":Ljava/lang/String;
    :cond_2
    const/4 v13, -0x1

    if-eq v1, v13, :cond_7

    .line 1062
    move v3, v1

    .line 1070
    .end local v7    # "startOffset":I
    .end local v8    # "tempStr":Ljava/lang/String;
    .end local v9    # "tokenQueryStr":Ljava/lang/String;
    .end local v12    # "tokenizerStr":Ljava/util/StringTokenizer;
    :cond_3
    return v3

    .line 1044
    .restart local v7    # "startOffset":I
    .restart local v8    # "tempStr":Ljava/lang/String;
    .restart local v9    # "tokenQueryStr":Ljava/lang/String;
    .restart local v10    # "tokenStr":Ljava/lang/String;
    .restart local v12    # "tokenizerStr":Ljava/util/StringTokenizer;
    :cond_4
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_6

    .line 1045
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v2

    .line 1047
    const/4 v13, -0x1

    if-eq v5, v13, :cond_5

    if-lt v5, v2, :cond_6

    .line 1048
    :cond_5
    invoke-direct {p0, v9, v6, v10}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->isCurrentStrHasPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 1049
    move v5, v2

    .line 1050
    move-object v6, v10

    .line 1051
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int v4, v7, v13

    .line 1058
    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v7, v13

    .line 1059
    goto :goto_2

    .line 1064
    .end local v10    # "tokenStr":Ljava/lang/String;
    :cond_7
    const/4 v13, -0x1

    if-eq v3, v13, :cond_8

    if-le v3, v4, :cond_0

    .line 1065
    :cond_8
    move v3, v4

    goto/16 :goto_0
.end method

.method private getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "keyword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1074
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 1076
    .local v0, "paint":Landroid/text/TextPaint;
    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 1085
    :cond_0
    :goto_0
    return-object v2

    .line 1079
    :cond_1
    const/4 v1, 0x0

    .line 1080
    .local v1, "prefixForIndian":[C
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-static {v0, p2, v3}, Landroid/text/TextUtils;->getPrefixCharForIndian(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v1

    .line 1082
    if-eqz v1, :cond_0

    .line 1085
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private isCurrentStrHasPriority(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "before"    # Ljava/lang/String;
    .param p3, "current"    # Ljava/lang/String;

    .prologue
    const/4 v9, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 985
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 986
    .local v3, "positionA":I
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 988
    .local v4, "positionB":I
    if-eq v3, v9, :cond_0

    if-ne v4, v9, :cond_1

    .line 1007
    :cond_0
    :goto_0
    return v5

    .line 992
    :cond_1
    if-gt v3, v4, :cond_0

    .line 994
    if-ne v3, v4, :cond_5

    .line 995
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 997
    .local v0, "count":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    add-int/lit8 v7, v0, -0x1

    if-ge v1, v7, :cond_4

    .line 998
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v8

    sub-int v2, v7, v8

    .line 999
    .local v2, "index":I
    if-gez v2, :cond_3

    move v5, v6

    .line 1000
    goto :goto_0

    .line 995
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_2
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    goto :goto_1

    .line 1001
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v2    # "index":I
    :cond_3
    if-gtz v2, :cond_0

    .line 997
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v2    # "index":I
    :cond_4
    move v5, v6

    .line 1005
    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_5
    move v5, v6

    .line 1007
    goto :goto_0
.end method

.method private setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "sub"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0xc8

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 1138
    const/4 v2, 0x0

    .line 1139
    .local v2, "subTitleLength":I
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1140
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 1141
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1142
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v3

    if-ne v3, v4, :cond_0

    .line 1143
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1146
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v3, v6, :cond_3

    .line 1147
    const/4 v1, 0x0

    .line 1149
    .local v1, "spanStr":Landroid/text/SpannableString;
    invoke-direct {p0, p3, p2}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->calculateOptimumPositionForHighlight(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1151
    .local v0, "offset":I
    if-ltz v0, :cond_2

    .line 1152
    invoke-virtual {p0, p3, p2, p1, v2}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->makeSpanString(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;I)Landroid/text/SpannableString;

    move-result-object v1

    .line 1153
    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, v3, v0, v4}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;II)V

    .line 1157
    :goto_0
    const-string v3, "SearchResultsSummary"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spanStr: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1169
    .end local v0    # "offset":I
    .end local v1    # "spanStr":Landroid/text/SpannableString;
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1171
    :cond_1
    return-void

    .line 1155
    .restart local v0    # "offset":I
    .restart local v1    # "spanStr":Landroid/text/SpannableString;
    :cond_2
    new-instance v1, Landroid/text/SpannableString;

    .end local v1    # "spanStr":Landroid/text/SpannableString;
    invoke-direct {v1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .restart local v1    # "spanStr":Landroid/text/SpannableString;
    goto :goto_0

    .line 1160
    .end local v0    # "offset":I
    .end local v1    # "spanStr":Landroid/text/SpannableString;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1163
    :cond_4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextAlignment()I

    move-result v3

    if-ne v3, v4, :cond_5

    .line 1164
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 1167
    :cond_5
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 902
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 885
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getCountFromDB()I
    .locals 3

    .prologue
    .line 889
    iget-boolean v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 896
    :goto_0
    return v0

    .line 890
    :cond_1
    const/4 v0, 0x0

    .line 892
    .local v0, "cnt":I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 893
    :catch_0
    move-exception v1

    .line 894
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 916
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 917
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getItemFromDB(I)Ljava/lang/Object;
    .locals 23
    .param p1, "position"    # I

    .prologue
    .line 921
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    move/from16 v0, p1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 922
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0x1

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 923
    .local v4, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0x2

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 924
    .local v5, "summaryOn":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0x3

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 925
    .local v6, "summaryOff":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0x4

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 926
    .local v7, "entries":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 927
    .local v19, "iconResStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0x6

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 929
    .local v13, "className":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 931
    .local v20, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0xd

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 933
    .local v9, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 934
    .local v10, "targetPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0xb

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 935
    .local v11, "targetCls":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0x7

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 936
    .local v12, "screenTitle":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0xe

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 937
    .local v14, "menu_type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0xf

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 938
    .local v15, "menu_path":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0x10

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 939
    .local v16, "category_id":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 942
    .local v17, "action":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 944
    .local v3, "packageContext":Landroid/content/Context;
    if-nez v3, :cond_0

    .line 946
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContextMap:Ljava/util/HashMap;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    :cond_0
    :goto_0
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v8, 0x7f0200d0

    .line 960
    .local v8, "iconResId":I
    :goto_1
    new-instance v2, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;

    invoke-direct/range {v2 .. v17}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 964
    .end local v3    # "packageContext":Landroid/content/Context;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summaryOn":Ljava/lang/String;
    .end local v6    # "summaryOff":Ljava/lang/String;
    .end local v7    # "entries":Ljava/lang/String;
    .end local v8    # "iconResId":I
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "targetPkg":Ljava/lang/String;
    .end local v11    # "targetCls":Ljava/lang/String;
    .end local v12    # "screenTitle":Ljava/lang/String;
    .end local v13    # "className":Ljava/lang/String;
    .end local v14    # "menu_type":I
    .end local v15    # "menu_path":Ljava/lang/String;
    .end local v16    # "category_id":I
    .end local v17    # "action":Ljava/lang/String;
    .end local v19    # "iconResStr":Ljava/lang/String;
    .end local v20    # "packageName":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 947
    .restart local v3    # "packageContext":Landroid/content/Context;
    .restart local v4    # "title":Ljava/lang/String;
    .restart local v5    # "summaryOn":Ljava/lang/String;
    .restart local v6    # "summaryOff":Ljava/lang/String;
    .restart local v7    # "entries":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/String;
    .restart local v10    # "targetPkg":Ljava/lang/String;
    .restart local v11    # "targetCls":Ljava/lang/String;
    .restart local v12    # "screenTitle":Ljava/lang/String;
    .restart local v13    # "className":Ljava/lang/String;
    .restart local v14    # "menu_type":I
    .restart local v15    # "menu_path":Ljava/lang/String;
    .restart local v16    # "category_id":I
    .restart local v17    # "action":Ljava/lang/String;
    .restart local v19    # "iconResStr":Ljava/lang/String;
    .restart local v20    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 948
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "SearchResultsSummary"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot create Context for package: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    const/4 v2, 0x0

    goto :goto_2

    .line 954
    .end local v3    # "packageContext":Landroid/content/Context;
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    .restart local v3    # "packageContext":Landroid/content/Context;
    goto :goto_0

    .line 957
    :cond_2
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto :goto_1

    .line 964
    .end local v3    # "packageContext":Landroid/content/Context;
    .end local v4    # "title":Ljava/lang/String;
    .end local v5    # "summaryOn":Ljava/lang/String;
    .end local v6    # "summaryOff":Ljava/lang/String;
    .end local v7    # "entries":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "targetPkg":Ljava/lang/String;
    .end local v11    # "targetCls":Ljava/lang/String;
    .end local v12    # "screenTitle":Ljava/lang/String;
    .end local v13    # "className":Ljava/lang/String;
    .end local v14    # "menu_type":I
    .end local v15    # "menu_path":Ljava/lang/String;
    .end local v16    # "category_id":I
    .end local v17    # "action":Ljava/lang/String;
    .end local v19    # "iconResStr":Ljava/lang/String;
    .end local v20    # "packageName":Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 969
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 970
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_0

    const-wide/16 v2, 0x0

    .line 971
    .end local v0    # "obj":Ljava/lang/Object;
    :goto_0
    return-wide v2

    .restart local v0    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;

    .end local v0    # "obj":Ljava/lang/Object;
    iget v1, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    int-to-long v2, v1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 1175
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    if-nez v13, :cond_0

    if-nez p2, :cond_0

    .line 1176
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string v14, "this should only be called when the cursor is valid"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 1188
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;

    .line 1190
    .local v8, "result":Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;
    if-nez p2, :cond_2

    .line 1191
    iget v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_1

    .line 1192
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f0401c4

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 1196
    .local v12, "view":Landroid/view/View;
    :goto_0
    iget v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1211
    :goto_1
    iget v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_5

    .line 1212
    const v13, 0x7f0d0166

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1213
    .local v1, "categoryLabel":Landroid/widget/TextView;
    iget-object v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v1, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1268
    .end local v1    # "categoryLabel":Landroid/widget/TextView;
    :goto_2
    return-object v12

    .line 1194
    .end local v12    # "view":Landroid/view/View;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f0401c6

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "view":Landroid/view/View;
    goto :goto_0

    .line 1198
    .end local v12    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1199
    .local v11, "type":I
    iget v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    if-ne v11, v13, :cond_3

    .line 1200
    move-object/from16 v12, p2

    .restart local v12    # "view":Landroid/view/View;
    goto :goto_1

    .line 1202
    .end local v12    # "view":Landroid/view/View;
    :cond_3
    iget v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    const/4 v14, -0x1

    if-ne v13, v14, :cond_4

    .line 1203
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f0401c4

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .line 1207
    .restart local v12    # "view":Landroid/view/View;
    :goto_3
    iget v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1205
    .end local v12    # "view":Landroid/view/View;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v14, 0x7f0401c6

    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v13, v14, v0, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    .restart local v12    # "view":Landroid/view/View;
    goto :goto_3

    .line 1225
    .end local v11    # "type":I
    :cond_5
    const v13, 0x7f0d0057

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1226
    .local v10, "textTitle":Landroid/widget/TextView;
    const v13, 0x7f0d013c

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1227
    .local v9, "textSummary":Landroid/widget/TextView;
    const v13, 0x7f0d0056

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1231
    .local v4, "imageView":Landroid/widget/ImageView;
    iget-object v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v14}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 1232
    iget-object v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1233
    const/16 v13, 0x8

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1238
    :goto_4
    iget-object v2, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->className:Ljava/lang/String;

    .line 1239
    .local v2, "className":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->key:Ljava/lang/String;

    .line 1240
    .local v5, "key":Ljava/lang/String;
    const-string v7, "com.android.settings"

    .line 1241
    .local v7, "pkg":Ljava/lang/String;
    if-nez v2, :cond_6

    .line 1242
    iget-object v7, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetPkg:Ljava/lang/String;

    .line 1243
    iget-object v2, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->targetCls:Ljava/lang/String;

    .line 1246
    :cond_6
    iget v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->menu_type:I

    const/4 v14, 0x4

    if-ne v13, v14, :cond_8

    iget v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    const v14, 0x7f0200d0

    if-eq v13, v14, :cond_8

    .line 1252
    const/4 v13, 0x0

    :try_start_0
    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    iget v14, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->iconResId:I

    invoke-virtual {v13, v14}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 1254
    .local v3, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1255
    iget v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->category_id:I

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/settings/Utils;->getTileBackgroundId(II)I

    move-result v13

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a00b1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v4, v13, v14}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 1257
    .end local v3    # "drawable":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v6

    .line 1259
    .local v6, "nfe":Landroid/content/res/Resources$NotFoundException;
    const-string v13, "SearchResultsSummary"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Cannot load Drawable for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->title:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1235
    .end local v2    # "className":Ljava/lang/String;
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "nfe":Landroid/content/res/Resources$NotFoundException;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_7
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1236
    iget-object v13, v8, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResult;->summaryOn:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v13, v14}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->setQueryText(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1263
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v5    # "key":Ljava/lang/String;
    .restart local v7    # "pkg":Ljava/lang/String;
    :cond_8
    const/16 v13, 0x8

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1264
    const/4 v13, 0x0

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1265
    const v13, 0x7f0200d0

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_2
.end method

.method public isEnabled(I)Z
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 908
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getItemId(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 909
    const/4 v0, 0x0

    .line 911
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    goto :goto_0
.end method

.method protected makeSpanString(Ljava/lang/String;Ljava/lang/String;Landroid/widget/TextView;I)Landroid/text/SpannableString;
    .locals 16
    .param p1, "inputSentence"    # Ljava/lang/String;
    .param p2, "targetSentence"    # Ljava/lang/String;
    .param p3, "view"    # Landroid/widget/TextView;
    .param p4, "subTitleLength"    # I

    .prologue
    .line 1090
    new-instance v7, Landroid/text/SpannableString;

    move-object/from16 v0, p2

    invoke-direct {v7, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1091
    .local v7, "spanStr":Landroid/text/SpannableString;
    new-instance v8, Ljava/util/StringTokenizer;

    const-string v12, " "

    move-object/from16 v0, p1

    invoke-direct {v8, v0, v12}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    .local v8, "st":Ljava/util/StringTokenizer;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/settings/Utils;->getAutoCompleteColor(Landroid/content/Context;)I

    move-result v3

    .line 1093
    .local v3, "color":I
    if-lez p4, :cond_0

    .line 1094
    move-object/from16 v0, p2

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 1096
    :cond_0
    :goto_0
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1097
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v11

    .line 1098
    .local v11, "token":Ljava/lang/String;
    move-object/from16 v10, p2

    .line 1099
    .local v10, "targetStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1103
    .local v2, "addOffset":I
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v10, v11}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->getPrefixCharForIndianString(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1104
    .local v5, "keyword":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1105
    move-object v11, v5

    .line 1107
    :cond_2
    const/4 v9, 0x0

    .line 1108
    .local v9, "startOffset":I
    const/4 v4, 0x0

    .line 1110
    .local v4, "endOffset":I
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1112
    .local v6, "lowerCase":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v12, v13, :cond_3

    .line 1113
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1114
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v9, v12

    .line 1120
    :goto_1
    if-ltz v9, :cond_0

    .line 1123
    new-instance v12, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v12, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v13, p4, v9

    add-int/2addr v13, v2

    add-int v14, p4, v4

    add-int/2addr v14, v2

    const/16 v15, 0x21

    invoke-virtual {v7, v12, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1128
    invoke-virtual {v10, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 1129
    add-int/2addr v2, v4

    .line 1130
    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_1

    goto :goto_0

    .line 1116
    :cond_3
    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 1117
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    add-int v4, v9, v12

    goto :goto_1

    .line 1132
    .end local v2    # "addOffset":I
    .end local v4    # "endOffset":I
    .end local v5    # "keyword":Ljava/lang/String;
    .end local v6    # "lowerCase":Ljava/lang/String;
    .end local v9    # "startOffset":I
    .end local v10    # "targetStr":Ljava/lang/String;
    .end local v11    # "token":Ljava/lang/String;
    :cond_4
    return-object v7
.end method

.method public setQuery(Ljava/lang/String;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 838
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mQuery:Ljava/lang/String;

    .line 839
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2
    .param p1, "newCursor"    # Landroid/database/Cursor;

    .prologue
    .line 866
    iget-object v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v1, :cond_0

    .line 867
    const/4 v0, 0x0

    .line 879
    :goto_0
    return-object v0

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 870
    .local v0, "oldCursor":Landroid/database/Cursor;
    iput-object p1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mCursor:Landroid/database/Cursor;

    .line 871
    if-eqz p1, :cond_1

    .line 872
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 873
    invoke-direct {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->constructList()V

    .line 874
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 876
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->mDataValid:Z

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/dashboard/SearchResultsSummary$SearchResultsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
