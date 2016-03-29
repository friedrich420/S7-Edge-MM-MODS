.class public Lcom/android/settings/search/SettingsSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "SettingsSearchIndexablesProvider.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 106
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 107
    .local v0, "cursor":Landroid/database/MatrixCursor;
    return-object v0
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 82
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v4, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 83
    .local v3, "result":Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/android/settings/search/SearchIndexableRaws;->getValues()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/SearchIndexableRaw;

    .line 84
    .local v1, "raw":Lcom/android/settings/search/SearchIndexableRaw;
    const/16 v4, 0xe

    new-array v2, v4, [Ljava/lang/Object;

    .line 85
    .local v2, "ref":[Ljava/lang/Object;
    const/4 v4, 0x0

    iget v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->rank:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 86
    const/4 v4, 0x1

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 87
    const/4 v4, 0x2

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 88
    const/4 v4, 0x3

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 89
    const/4 v4, 0x4

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 90
    const/4 v4, 0x5

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 91
    const/4 v4, 0x6

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 92
    const/4 v4, 0x7

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 93
    const/16 v4, 0x8

    iget v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 94
    const/16 v4, 0x9

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 95
    const/16 v4, 0xa

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 96
    const/16 v4, 0xb

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 97
    const/16 v4, 0xc

    iget-object v5, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    aput-object v5, v2, v4

    .line 98
    const/16 v4, 0xd

    const/4 v5, -0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 99
    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 101
    .end local v1    # "raw":Lcom/android/settings/search/SearchIndexableRaw;
    .end local v2    # "ref":[Ljava/lang/Object;
    :cond_0
    return-object v3
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .param p1, "projection"    # [Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v5, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 65
    .local v0, "cursor":Landroid/database/MatrixCursor;
    invoke-static {}, Lcom/android/settings/search/SearchIndexableResources;->values()Ljava/util/Collection;

    move-result-object v4

    .line 66
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/provider/SearchIndexableResource;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/provider/SearchIndexableResource;

    .line 67
    .local v3, "val":Landroid/provider/SearchIndexableResource;
    const/4 v5, 0x7

    new-array v2, v5, [Ljava/lang/Object;

    .line 68
    .local v2, "ref":[Ljava/lang/Object;
    const/4 v5, 0x0

    iget v6, v3, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 69
    const/4 v5, 0x1

    iget v6, v3, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 70
    const/4 v5, 0x2

    iget-object v6, v3, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    aput-object v6, v2, v5

    .line 71
    const/4 v5, 0x3

    iget v6, v3, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    .line 72
    const/4 v5, 0x4

    iget-object v6, v3, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    aput-object v6, v2, v5

    .line 73
    const/4 v5, 0x5

    iget-object v6, v3, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    aput-object v6, v2, v5

    .line 74
    const/4 v5, 0x6

    iget-object v6, v3, Landroid/provider/SearchIndexableResource;->intentTargetClass:Ljava/lang/String;

    aput-object v6, v2, v5

    .line 75
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 77
    .end local v2    # "ref":[Ljava/lang/Object;
    .end local v3    # "val":Landroid/provider/SearchIndexableResource;
    :cond_0
    return-object v0
.end method
