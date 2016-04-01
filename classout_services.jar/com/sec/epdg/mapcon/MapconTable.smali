.class public Lcom/sec/epdg/mapcon/MapconTable;
.super Ljava/lang/Object;
.source "MapconTable.java"


# static fields
.field private static mInstance:Lcom/sec/epdg/mapcon/MapconTable;


# instance fields
.field private mMapconMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            "[",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, mInstance:Lcom/sec/epdg/mapcon/MapconTable;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, mMapconMap:Ljava/util/EnumMap;

    .line 166
    return-void
.end method

.method private declared-synchronized addToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    .registers 14
    .param p1, "apnTypeStr"    # Ljava/lang/String;
    .param p2, "ratTypeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            "[",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    monitor-enter p0

    :try_start_1
    new-instance v8, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;

    invoke-direct {v8, p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnTypeList;->getMapconApnTypeList()Ljava/util/EnumSet;

    move-result-object v1

    .line 48
    .local v1, "apnTypeList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    new-instance v8, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;

    invoke-direct {v8, p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/sec/epdg/mapcon/MapconConstants$MapconPrefList;->getMapconPrefListArray()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v6

    .line 50
    .local v6, "ratListSorted":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 51
    .local v0, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    iget-object v8, p0, mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v0}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v8, p0, mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v0, v6}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    move-object v2, v6

    .local v2, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_30
    if-ge v4, v5, :cond_17

    aget-object v7, v2, v4

    .line 54
    .local v7, "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    const-string v8, "[MAPCON]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "apnType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rat: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/sec/epdg/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    add-int/lit8 v4, v4, 0x1

    goto :goto_30

    .line 59
    .end local v0    # "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .end local v2    # "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_59
    iget-object v8, p0, mMapconMap:Ljava/util/EnumMap;
    :try_end_5b
    .catchall {:try_start_1 .. :try_end_5b} :catchall_5d

    monitor-exit p0

    return-object v8

    .line 46
    .end local v1    # "apnTypeList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    .end local v6    # "ratListSorted":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_5d
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/mapcon/MapconTable;
    .registers 2

    .prologue
    .line 160
    const-class v1, Lcom/sec/epdg/mapcon/MapconTable;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/sec/epdg/mapcon/MapconTable;

    if-nez v0, :cond_e

    .line 161
    new-instance v0, Lcom/sec/epdg/mapcon/MapconTable;

    invoke-direct {v0}, <init>()V

    sput-object v0, mInstance:Lcom/sec/epdg/mapcon/MapconTable;

    .line 163
    :cond_e
    sget-object v0, mInstance:Lcom/sec/epdg/mapcon/MapconTable;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 160
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .registers 4
    .param p1, "apnTypeKey"    # Ljava/lang/String;

    .prologue
    .line 62
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v0

    .line 63
    .local v0, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    iget-object v1, p0, mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v1

    .line 62
    .end local v0    # "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized IsLteOnlyAllowed(Ljava/lang/String;)Z
    .registers 6
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 133
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/AppPolicy;->doesAppPolicyHasPreferredRat(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1b

    move-result-object v0

    .line 136
    .local v0, "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-eqz v0, :cond_12

    .line 137
    const/4 v2, 0x0

    .line 140
    :goto_10
    monitor-exit p0

    return v2

    .line 139
    :cond_12
    :try_start_12
    invoke-direct {p0, p1}, getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    .line 140
    .local v1, "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-static {v1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isLteOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1b

    move-result v2

    goto :goto_10

    .line 133
    .end local v0    # "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v1    # "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized IsWifiOnlyAllowed(Ljava/lang/String;)Z
    .registers 6
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 123
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/AppPolicy;->doesAppPolicyHasPreferredRat(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_1b

    move-result-object v0

    .line 126
    .local v0, "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-eqz v0, :cond_12

    .line 127
    const/4 v2, 0x0

    .line 130
    :goto_10
    monitor-exit p0

    return v2

    .line 129
    :cond_12
    :try_start_12
    invoke-direct {p0, p1}, getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    .line 130
    .local v1, "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-static {v1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1b

    move-result v2

    goto :goto_10

    .line 123
    .end local v0    # "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v1    # "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_1b
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized createMapconTable(Landroid/content/Context;)Z
    .registers 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 66
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 67
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "apntype"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "ratpreforder"

    aput-object v3, v2, v1

    .line 71
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_5f

    move-result-object v7

    .line 75
    .local v7, "messagesCursor":Landroid/database/Cursor;
    if-eqz v7, :cond_26

    :try_start_20
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_36

    .line 77
    :cond_26
    const-string v1, "[MAPCON]"

    const-string v3, "Empty MAPCON DB"

    invoke-static {v1, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_57

    .line 89
    if-eqz v7, :cond_33

    .line 90
    :try_start_2f
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_5f

    .line 91
    const/4 v7, 0x0

    :cond_33
    move v1, v10

    :goto_34
    monitor-exit p0

    return v1

    .line 80
    :cond_36
    :goto_36
    :try_start_36
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 81
    const-string v1, "apntype"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, "apnTypeStr":Ljava/lang/String;
    const-string/jumbo v1, "ratpreforder"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 85
    .local v8, "ratTypeStr":Ljava/lang/String;
    sget-object v1, mInstance:Lcom/sec/epdg/mapcon/MapconTable;

    invoke-direct {v1, v6, v8}, addToMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    :try_end_56
    .catchall {:try_start_36 .. :try_end_56} :catchall_57

    goto :goto_36

    .line 89
    .end local v6    # "apnTypeStr":Ljava/lang/String;
    .end local v8    # "ratTypeStr":Ljava/lang/String;
    :catchall_57
    move-exception v1

    if-eqz v7, :cond_5e

    .line 90
    :try_start_5a
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 91
    const/4 v7, 0x0

    :cond_5e
    throw v1
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_5f

    .line 66
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v7    # "messagesCursor":Landroid/database/Cursor;
    :catchall_5f
    move-exception v1

    monitor-exit p0

    throw v1

    .line 89
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v7    # "messagesCursor":Landroid/database/Cursor;
    :cond_62
    if-eqz v7, :cond_68

    .line 90
    :try_start_64
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_5f

    .line 91
    const/4 v7, 0x0

    :cond_68
    move v1, v9

    goto :goto_34
.end method

.method public declared-synchronized isVoWifiPref(Ljava/lang/String;)Z
    .registers 4
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    .line 157
    .local v0, "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanPreceedsLte([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_b

    move-result v1

    monitor-exit p0

    return v1

    .line 156
    .end local v0    # "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_b
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V
    .registers 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .param p3, "rat"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .param p4, "result"    # Z
    .param p5, "broadcast"    # Z

    .prologue
    .line 152
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/sec/epdg/mapcon/AppPolicy;->notifyHandoverResult(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;ZZ)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 154
    monitor-exit p0

    return-void

    .line 152
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized resetAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)V
    .registers 3
    .param p1, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .prologue
    .line 148
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/epdg/mapcon/AppPolicy;->resetAppPolicy(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 149
    monitor-exit p0

    return-void

    .line 148
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rat"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .param p3, "apnType"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .param p4, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/sec/epdg/mapcon/AppPolicy;->setAppPolicy(Landroid/content/Context;Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;Landroid/app/PendingIntent;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    .line 146
    monitor-exit p0

    return-void

    .line 145
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized shouldMoveToLte(Ljava/lang/String;)Z
    .registers 6
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/AppPolicy;->doesAppPolicyHasPreferredRat(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    .line 112
    .local v0, "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-eqz v0, :cond_18

    .line 113
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_21

    if-eq v2, v0, :cond_16

    .line 114
    const/4 v2, 0x1

    .line 119
    :goto_14
    monitor-exit p0

    return v2

    .line 116
    :cond_16
    const/4 v2, 0x0

    goto :goto_14

    .line 118
    :cond_18
    :try_start_18
    invoke-direct {p0, p1}, getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    .line 119
    .local v1, "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-static {v1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isLtePreceedsIwlan([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_21

    move-result v2

    goto :goto_14

    .line 109
    .end local v0    # "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v1    # "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized shouldMoveToWifi(Ljava/lang/String;)Z
    .registers 6
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 96
    monitor-enter p0

    :try_start_1
    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v2

    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sec/epdg/mapcon/AppPolicy;->doesAppPolicyHasPreferredRat(Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;)Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v0

    .line 99
    .local v0, "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-eqz v0, :cond_18

    .line 100
    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->IWLAN:Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_21

    if-ne v2, v0, :cond_16

    .line 101
    const/4 v2, 0x1

    .line 106
    :goto_14
    monitor-exit p0

    return v2

    .line 103
    :cond_16
    const/4 v2, 0x0

    goto :goto_14

    .line 105
    :cond_18
    :try_start_18
    invoke-direct {p0, p1}, getMapconRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v1

    .line 106
    .local v1, "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-static {v1}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanPreceedsLte([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_21

    move-result v2

    goto :goto_14

    .line 96
    .end local v0    # "appPolicyRat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v1    # "mapcon":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_21
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 11

    .prologue
    .line 30
    monitor-enter p0

    :try_start_1
    new-instance v7, Ljava/lang/String;

    const-string v8, "MAPCON Policy\n"

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 31
    .local v7, "str":Ljava/lang/String;
    iget-object v8, p0, mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v8}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 32
    .local v3, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_72

    .line 33
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 34
    .local v0, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    iget-object v8, p0, mMapconMap:Ljava/util/EnumMap;

    invoke-virtual {v8, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    .line 35
    .local v6, "ratList":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " -- "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 36
    move-object v1, v6

    .local v1, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_40
    if-ge v2, v4, :cond_5e

    aget-object v5, v1, v2

    .line 37
    .local v5, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 36
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 39
    .end local v5    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_5e
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 40
    goto :goto_12

    .line 41
    .end local v0    # "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    .end local v1    # "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "ratList":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_72
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/sec/epdg/mapcon/AppPolicy;->getInstance()Lcom/sec/epdg/mapcon/AppPolicy;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_86
    .catchall {:try_start_1 .. :try_end_86} :catchall_89

    move-result-object v7

    .line 42
    monitor-exit p0

    return-object v7

    .line 30
    .end local v3    # "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    .end local v7    # "str":Ljava/lang/String;
    :catchall_89
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public updateMapconTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apnType"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 170
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 171
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "ratpreforder"

    invoke-virtual {p3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    if-eqz p1, :cond_34

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apntype = \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 177
    :cond_34
    return-void
.end method

.method public updateMapconTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;)V
    .registers 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "apnTypeList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;

    .prologue
    .line 181
    array-length v1, p2

    .line 182
    .local v1, "size":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, "builder":Ljava/lang/StringBuilder;
    :cond_6
    :goto_6
    if-lez v1, :cond_30

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    aget-object v4, p2, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    if-lez v1, :cond_6

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 188
    :cond_30
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 189
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "ratpreforder"

    invoke-virtual {p3}, Lcom/sec/epdg/mapcon/MapconConstants$MapconMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    if-eqz p1, :cond_68

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_MAPCON_TABLE:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apntype IN ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 195
    :cond_68
    return-void
.end method
