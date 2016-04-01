.class public Lcom/android/server/enterprise/certificate/CertificateCache;
.super Ljava/lang/Object;
.source "CertificateCache.java"


# instance fields
.field private mCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mStorage:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/enterprise/storage/EdmStorageProvider;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storage"    # Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, mStorage:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 29
    new-instance v0, Lcom/android/server/enterprise/utils/CertificateUtil;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/utils/CertificateUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mCache:Ljava/util/Map;

    .line 31
    return-void
.end method

.method private addToUserCache(Ljava/util/Map;Ljava/lang/String;I)V
    .registers 6
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, "userCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 86
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    .local v0, "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :goto_13
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-void

    .line 89
    .end local v0    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .restart local v0    # "adminList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13
.end method

.method private getUserIdList(II)Ljava/util/List;
    .registers 10
    .param p1, "userId"    # I
    .param p2, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v3, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_3b

    .line 166
    iget-object v5, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v5}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "allUsersId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 168
    .local v4, "userId1":Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Landroid/os/PersonaManager;->isKnoxId(I)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 171
    iget-object v5, p0, mStorage:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v1

    .line 172
    .local v1, "containerOwner":I
    if-ne v1, p2, :cond_11

    .line 173
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 176
    .end local v1    # "containerOwner":I
    :cond_37
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 180
    .end local v0    # "allUsersId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "userId1":Ljava/lang/Integer;
    :cond_3b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_42
    return-object v3
.end method

.method private removeFromUserCache(Ljava/util/Map;Ljava/lang/String;I)V
    .registers 6
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 130
    .local p1, "userCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 131
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_22

    .line 133
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_22
    return-void
.end method


# virtual methods
.method public declared-synchronized addToCache(IILjava/util/List;)V
    .registers 12
    .param p1, "key"    # I
    .param p2, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p3, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, getUserIdList(II)Ljava/util/List;

    move-result-object v3

    .line 69
    .local v3, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 70
    .local v5, "userId":I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "alias":Ljava/lang/String;
    iget-object v6, p0, mCache:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_48

    .line 72
    iget-object v6, p0, mCache:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-direct {p0, v6, v0, p2}, addToUserCache(Ljava/util/Map;Ljava/lang/String;I)V
    :try_end_44
    .catchall {:try_start_1 .. :try_end_44} :catchall_45

    goto :goto_1d

    .line 67
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v5    # "userId":I
    :catchall_45
    move-exception v6

    monitor-exit p0

    throw v6

    .line 74
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v5    # "userId":I
    :cond_48
    :try_start_48
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 75
    .local v4, "userCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-direct {p0, v4, v0, p2}, addToUserCache(Ljava/util/Map;Ljava/lang/String;I)V

    .line 76
    iget-object v6, p0, mCache:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_59
    .catchall {:try_start_48 .. :try_end_59} :catchall_45

    goto :goto_1d

    .line 80
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "userCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v5    # "userId":I
    :cond_5a
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getCacheEntrySize(I)I
    .registers 6
    .param p1, "key"    # I

    .prologue
    .line 140
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 141
    .local v0, "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    if-eqz v0, :cond_1b

    .line 142
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 143
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v1, :cond_1b

    .line 144
    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    move-result v2

    .line 147
    .end local v1    # "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_19
    monitor-exit p0

    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_19

    .line 140
    .end local v0    # "entry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :catchall_1d
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized getNumAliasesForUser(I)I
    .registers 7
    .param p1, "userId"    # I

    .prologue
    .line 34
    monitor-enter p0

    const/4 v2, 0x0

    .line 35
    .local v2, "numAliases":I
    :try_start_2
    iget-object v3, p0, mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 36
    iget-object v3, p0, mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_22
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 37
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I
    :try_end_37
    .catchall {:try_start_2 .. :try_end_37} :catchall_3c

    move-result v3

    add-int/2addr v2, v3

    .line 38
    goto :goto_22

    .line 40
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3a
    monitor-exit p0

    return v2

    .line 34
    :catchall_3c
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized initCache(Ljava/lang/String;)V
    .registers 14
    .param p1, "dbColumn"    # Ljava/lang/String;

    .prologue
    .line 46
    monitor-enter p0

    const/4 v10, 0x1

    :try_start_2
    new-array v2, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v2, v10

    .line 47
    .local v2, "columns":[Ljava/lang/String;
    iget-object v10, p0, mUtils:Lcom/android/server/enterprise/utils/CertificateUtil;

    invoke-virtual {v10}, Lcom/android/server/enterprise/utils/CertificateUtil;->getAllUsersId()Ljava/util/List;

    move-result-object v9

    .line 48
    .local v9, "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_56

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 49
    .local v8, "userId":I
    iget-object v10, p0, mStorage:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "CERTIFICATE"

    invoke-virtual {v10, v11, v2, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesListAsUser(Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 51
    .local v4, "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_2d
    :goto_2d
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    .line 53
    .local v3, "cv":Landroid/content/ContentValues;
    invoke-virtual {v3, p1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 54
    .local v7, "stringList":Ljava/lang/String;
    if-eqz v7, :cond_2d

    .line 56
    const-string v10, "adminUid"

    invoke-virtual {v3, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 58
    .local v0, "adminUid":Ljava/lang/Integer;
    const-string v10, ","

    invoke-static {v7, v10}, Lcom/android/server/enterprise/utils/Utils;->convertStringToList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0, v8, v10, v1}, addToCache(IILjava/util/List;)V
    :try_end_52
    .catchall {:try_start_2 .. :try_end_52} :catchall_53

    goto :goto_2d

    .line 46
    .end local v0    # "adminUid":Ljava/lang/Integer;
    .end local v1    # "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "stringList":Ljava/lang/String;
    .end local v8    # "userId":I
    .end local v9    # "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :catchall_53
    move-exception v10

    monitor-exit p0

    throw v10

    .line 63
    .restart local v2    # "columns":[Ljava/lang/String;
    .restart local v9    # "userIdsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_56
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized isAliasPresent(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "alias"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 97
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 98
    iget-object v1, p0, mCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 99
    .local v0, "userCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    if-eqz v0, :cond_24

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_26

    move-result v1

    if-eqz v1, :cond_24

    .line 100
    const/4 v1, 0x1

    .line 103
    .end local v0    # "userCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :goto_22
    monitor-exit p0

    return v1

    :cond_24
    const/4 v1, 0x0

    goto :goto_22

    .line 97
    :catchall_26
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isInAdminList(ILjava/lang/String;I)Z
    .registers 7
    .param p1, "userId"    # I
    .param p2, "alias"    # Ljava/lang/String;
    .param p3, "adminUid"    # I

    .prologue
    .line 151
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 152
    iget-object v1, p0, mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 153
    .local v0, "userCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 154
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_31

    move-result v1

    .line 157
    .end local v0    # "userCache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    :goto_2d
    monitor-exit p0

    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2d

    .line 151
    :catchall_31
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized removeFromCache(IILjava/util/List;)V
    .registers 11
    .param p1, "key"    # I
    .param p2, "adminUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p3, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1, p2}, getUserIdList(II)Ljava/util/List;

    move-result-object v3

    .line 109
    .local v3, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 110
    .local v4, "userId":I
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 111
    .local v0, "alias":Ljava/lang/String;
    iget-object v5, p0, mCache:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 112
    iget-object v5, p0, mCache:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct {p0, v5, v0, p2}, removeFromUserCache(Ljava/util/Map;Ljava/lang/String;I)V

    .line 113
    iget-object v5, p0, mCache:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    if-nez v5, :cond_1d

    .line 114
    iget-object v5, p0, mCache:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_63
    .catchall {:try_start_1 .. :try_end_63} :catchall_64

    goto :goto_1d

    .line 107
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v4    # "userId":I
    :catchall_64
    move-exception v5

    monitor-exit p0

    throw v5

    .line 119
    .restart local v3    # "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_67
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized removeUserFromCache(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 122
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 123
    iget-object v0, p0, mCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 125
    :cond_16
    monitor-exit p0

    return-void

    .line 122
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0
.end method
