.class public Lcom/android/settings/sfinderconnect/SFinderConnectProvider;
.super Landroid/content/ContentProvider;
.source "SFinderConnectProvider.java"


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final QUERY_PARSER_VERSION:I

.field private static final SEARCH_PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0xfa0

    const/4 v3, 0x1

    .line 22
    const-class v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SFINDER_CONFIG_QUERY_PARSER_VERSION"

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/feature/FloatingFeature;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->QUERY_PARSER_VERSION:I

    .line 28
    const-string v0, "content://com.android.settings.sfinderconncet"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->CONTENT_URI:Landroid/net/Uri;

    .line 35
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const-string v1, "suggest_text_2"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "suggest_icon_1"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_icon_2"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "suggest_icon_3"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "suggest_target_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "suggest_intent_data_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "suggest_extra_flags"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "suggest_group"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data_key_reference"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "limit"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->SEARCH_PROJECTION:[Ljava/lang/String;

    .line 51
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 52
    sget-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.sfinderconncet"

    const-string v2, "search_suggest_regex_query"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "com.android.settings.sfinderconncet"

    const-string v2, "search_suggest_regex_query/*"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getResult(Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 20
    .param p1, "searchWord"    # Ljava/lang/String;
    .param p2, "limit"    # I

    .prologue
    .line 138
    new-instance v14, Landroid/database/MatrixCursor;

    sget-object v17, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->SEARCH_PROJECTION:[Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 139
    .local v14, "result":Landroid/database/MatrixCursor;
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v6, v0, [Landroid/database/Cursor;

    .line 141
    .local v6, "cursors":[Landroid/database/Cursor;
    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->searchTile(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    aput-object v18, v6, v17

    .line 142
    const/16 v17, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/search/Index;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/Index;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/search/Index;->searchSubMenu(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    aput-object v18, v6, v17

    .line 143
    const/4 v4, 0x0

    .line 145
    .local v4, "cursor":Landroid/database/Cursor;
    :try_start_0
    new-instance v5, Landroid/database/MergeCursor;

    invoke-direct {v5, v6}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    .end local v4    # "cursor":Landroid/database/Cursor;
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_1

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 147
    const/4 v3, 0x0

    .line 149
    .local v3, "cnt":I
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 150
    .local v16, "title":Ljava/lang/String;
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 151
    .local v15, "summaryOn":Ljava/lang/String;
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "iconResStr":Ljava/lang/String;
    const/16 v17, 0x10

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 153
    .local v2, "category_id":I
    const/16 v17, 0xd

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 154
    .local v11, "key":Ljava/lang/String;
    const/16 v17, 0xc

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 155
    .local v8, "enabled":I
    const/16 v17, 0xe

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 156
    .local v13, "menu_type":I
    const/16 v17, 0xf

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 157
    .local v12, "menu_path":Ljava/lang/String;
    const/16 v17, 0x11

    move/from16 v0, v17

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 159
    .local v10, "id":Ljava/lang/String;
    if-nez v12, :cond_3

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f0e01c3

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 165
    :goto_0
    invoke-virtual {v14}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v18

    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v13, v0, :cond_4

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    :goto_1
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v17

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->getTileBackgroundId(II)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0a00b1

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v17

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    add-int/lit8 v3, v3, 0x1

    .line 178
    const/16 v17, -0x1

    move/from16 v0, p2

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    move/from16 v0, p2

    if-lt v3, v0, :cond_5

    .line 186
    .end local v2    # "category_id":I
    .end local v3    # "cnt":I
    .end local v8    # "enabled":I
    .end local v9    # "iconResStr":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "menu_path":Ljava/lang/String;
    .end local v13    # "menu_type":I
    .end local v15    # "summaryOn":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    :cond_1
    :goto_2
    if-eqz v5, :cond_7

    .line 187
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 188
    const/4 v4, 0x0

    .line 192
    .end local v5    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :cond_2
    :goto_3
    return-object v14

    .line 162
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v2    # "category_id":I
    .restart local v3    # "cnt":I
    .restart local v5    # "cursor":Landroid/database/Cursor;
    .restart local v8    # "enabled":I
    .restart local v9    # "iconResStr":Ljava/lang/String;
    .restart local v10    # "id":Ljava/lang/String;
    .restart local v11    # "key":Ljava/lang/String;
    .restart local v12    # "menu_path":Ljava/lang/String;
    .restart local v13    # "menu_type":I
    .restart local v15    # "summaryOn":Ljava/lang/String;
    .restart local v16    # "title":Ljava/lang/String;
    :cond_3
    :try_start_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0e01c3

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " > "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 165
    :cond_4
    const/16 v17, -0x1

    goto/16 :goto_1

    .line 181
    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v17

    if-nez v17, :cond_0

    goto :goto_2

    .line 183
    .end local v2    # "category_id":I
    .end local v3    # "cnt":I
    .end local v5    # "cursor":Landroid/database/Cursor;
    .end local v8    # "enabled":I
    .end local v9    # "iconResStr":Ljava/lang/String;
    .end local v10    # "id":Ljava/lang/String;
    .end local v11    # "key":Ljava/lang/String;
    .end local v12    # "menu_path":Ljava/lang/String;
    .end local v13    # "menu_type":I
    .end local v15    # "summaryOn":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v7

    .line 184
    .local v7, "e":Ljava/lang/Exception;
    :goto_4
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    if-eqz v4, :cond_2

    .line 187
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 188
    const/4 v4, 0x0

    goto :goto_3

    .line 186
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    :goto_5
    if-eqz v4, :cond_6

    .line 187
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 188
    const/4 v4, 0x0

    :cond_6
    throw v17

    .line 186
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v17

    move-object v4, v5

    .end local v5    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    goto :goto_5

    .line 183
    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    :catch_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    goto :goto_4

    .end local v4    # "cursor":Landroid/database/Cursor;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    :cond_7
    move-object v4, v5

    .end local v5    # "cursor":Landroid/database/Cursor;
    .restart local v4    # "cursor":Landroid/database/Cursor;
    goto :goto_3
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->mContext:Landroid/content/Context;

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v3, Landroid/net/UrlQuerySanitizer;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/net/UrlQuerySanitizer;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "sanitizer":Landroid/net/UrlQuerySanitizer;
    const-string v6, "limit"

    invoke-virtual {v3, v6}, Landroid/net/UrlQuerySanitizer;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "limit":Ljava/lang/String;
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "limit : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    if-nez p4, :cond_2

    .line 91
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    const-string v7, "findo all search"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 93
    :cond_0
    const-string v6, ""

    const/4 v7, -0x1

    invoke-direct {p0, v6, v7}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getResult(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 134
    :goto_0
    return-object v2

    .line 95
    :cond_1
    const-string v6, ""

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getResult(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    goto :goto_0

    .line 98
    :cond_2
    const/4 v6, 0x0

    aget-object v4, p4, v6

    .line 99
    .local v4, "searchWord":Ljava/lang/String;
    sget v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->QUERY_PARSER_VERSION:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 100
    const-string v6, "["

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 101
    const-string v6, "]"

    const-string v7, ""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 113
    :cond_3
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchWord : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v2, 0x0

    .line 115
    .local v2, "result":Landroid/database/Cursor;
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 126
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown query URL: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 103
    .end local v2    # "result":Landroid/database/Cursor;
    :cond_4
    const-string v6, "\n"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 104
    .local v5, "words":[Ljava/lang/String;
    const-string v4, ""

    .line 105
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_3

    .line 106
    add-int/lit8 v6, v0, 0x1

    rem-int/lit8 v6, v6, 0x2

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v0

    const-string v8, "&"

    const-string v9, "aaaaa"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 105
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 109
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    .line 117
    .end local v0    # "i":I
    .end local v5    # "words":[Ljava/lang/String;
    .restart local v2    # "result":Landroid/database/Cursor;
    :pswitch_0
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    const-string v7, "findo serach suggest"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    if-eqz v1, :cond_6

    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 119
    :cond_6
    const/4 v6, -0x1

    invoke-direct {p0, v4, v6}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getResult(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 129
    :goto_3
    if-eqz v2, :cond_8

    .line 130
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 121
    :cond_7
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {p0, v4, v6}, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->getResult(Ljava/lang/String;I)Landroid/database/Cursor;

    move-result-object v2

    .line 124
    goto :goto_3

    .line 132
    :cond_8
    sget-object v6, Lcom/android/settings/sfinderconnect/SFinderConnectProvider;->TAG:Ljava/lang/String;

    const-string v7, "result is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    return v0
.end method
