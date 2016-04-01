.class public Lcom/sec/epdg/mapcon/IfomTable;
.super Ljava/lang/Object;
.source "IfomTable.java"


# static fields
.field private static mInstance:Lcom/sec/epdg/mapcon/IfomTable;


# instance fields
.field private mIfomMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;",
            "Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const/4 v0, 0x0

    sput-object v0, mInstance:Lcom/sec/epdg/mapcon/IfomTable;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, mIfomMap:Ljava/util/EnumMap;

    .line 216
    return-void
.end method

.method private declared-synchronized addToApplicationMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    .registers 21
    .param p1, "appStr"    # Ljava/lang/String;
    .param p2, "ratTypeStr"    # Ljava/lang/String;
    .param p3, "apnTypeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;",
            "Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    monitor-enter p0

    :try_start_1
    const-string v14, "[MAPCON]"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "addToApplicationMap: appStr is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ratTypeStr is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " apnTypeStr is: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v14, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppList;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppList;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppList;->getIfomAppList()Ljava/util/EnumSet;

    move-result-object v5

    .line 58
    .local v5, "appList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;>;"
    new-instance v10, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-direct {v10, v0, v1}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v10, "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    invoke-virtual {v10}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyRatList()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v11

    .line 61
    .local v11, "ratListSorted":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v10}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyApnList()Ljava/util/EnumSet;

    move-result-object v3

    .line 63
    .local v3, "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    new-instance v12, Ljava/lang/String;

    const-string v14, "Added policy : "

    invoke-direct {v12, v14}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 65
    .local v12, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_102

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    .line 66
    .local v4, "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    move-object/from16 v0, p0

    iget-object v14, v0, mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v14, v4}, Ljava/util/EnumMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-object/from16 v0, p0

    iget-object v14, v0, mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v14, v4, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "application: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " rat: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 69
    move-object v6, v11

    .local v6, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v9, v6

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_94
    if-ge v8, v9, :cond_b2

    aget-object v13, v6, v8

    .line 70
    .local v13, "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 69
    add-int/lit8 v8, v8, 0x1

    goto :goto_94

    .line 72
    .end local v13    # "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_b2
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " apn: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 73
    invoke-virtual {v3}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_c9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_ed

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 74
    .local v2, "apn":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ":"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 75
    goto :goto_c9

    .line 76
    .end local v2    # "apn":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    :cond_ed
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 77
    goto/16 :goto_5a

    .line 78
    .end local v4    # "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .end local v6    # "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "len$":I
    :cond_102
    move-object/from16 v0, p0

    iget-object v14, v0, mIfomMap:Ljava/util/EnumMap;
    :try_end_106
    .catchall {:try_start_1 .. :try_end_106} :catchall_108

    monitor-exit p0

    return-object v14

    .line 54
    .end local v3    # "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    .end local v5    # "appList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;>;"
    .end local v10    # "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    .end local v11    # "ratListSorted":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v12    # "str":Ljava/lang/String;
    :catchall_108
    move-exception v14

    monitor-exit p0

    throw v14
.end method

.method private declared-synchronized getApplicationApn(Ljava/lang/String;)Ljava/util/EnumSet;
    .registers 4
    .param p1, "appKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 91
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getApplicationPolicy(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v0

    .line 92
    .local v0, "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    if-nez v0, :cond_a

    .line 93
    const/4 v1, 0x0

    .line 95
    :goto_8
    monitor-exit p0

    return-object v1

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyApnList()Ljava/util/EnumSet;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result-object v1

    goto :goto_8

    .line 91
    .end local v0    # "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getApplicationPolicy(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    .registers 4
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;->getIfomAppType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_13

    move-result-object v0

    .line 100
    .local v0, "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    if-nez v0, :cond_a

    .line 101
    const/4 v1, 0x0

    .line 103
    :goto_8
    monitor-exit p0

    return-object v1

    :cond_a
    :try_start_a
    iget-object v1, p0, mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_13

    goto :goto_8

    .line 99
    .end local v0    # "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    :catchall_13
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private declared-synchronized getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .registers 4
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getApplicationPolicy(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v0

    .line 83
    .local v0, "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    if-nez v0, :cond_a

    .line 84
    const/4 v1, 0x0

    .line 86
    :goto_8
    monitor-exit p0

    return-object v1

    :cond_a
    :try_start_a
    invoke-virtual {v0}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyRatList()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result-object v1

    goto :goto_8

    .line 82
    .end local v0    # "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized getInstance()Lcom/sec/epdg/mapcon/IfomTable;
    .registers 2

    .prologue
    .line 210
    const-class v1, Lcom/sec/epdg/mapcon/IfomTable;

    monitor-enter v1

    :try_start_3
    sget-object v0, mInstance:Lcom/sec/epdg/mapcon/IfomTable;

    if-nez v0, :cond_e

    .line 211
    new-instance v0, Lcom/sec/epdg/mapcon/IfomTable;

    invoke-direct {v0}, <init>()V

    sput-object v0, mInstance:Lcom/sec/epdg/mapcon/IfomTable;

    .line 213
    :cond_e
    sget-object v0, mInstance:Lcom/sec/epdg/mapcon/IfomTable;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 210
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized IsLteOnlyAllowed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 186
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v0

    .line 187
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_a

    .line 188
    const/4 v1, 0x0

    .line 190
    :goto_8
    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isLteOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result v1

    goto :goto_8

    .line 186
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized IsWifiOnlyAllowed(Ljava/lang/String;)Z
    .registers 4
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v0

    .line 180
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_a

    .line 181
    const/4 v1, 0x0

    .line 183
    :goto_8
    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanOnlyAllowed([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result v1

    goto :goto_8

    .line 179
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public checkIsRuleforApn(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11
    .param p1, "app"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 144
    invoke-direct {p0, p1}, getApplicationApn(Ljava/lang/String;)Ljava/util/EnumSet;

    move-result-object v0

    .line 145
    .local v0, "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    const-string v5, "[MAPCON]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkIsRuleforApn: appStr is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " apnType is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    if-nez v0, :cond_2a

    .line 160
    :cond_29
    :goto_29
    return v4

    .line 151
    :cond_2a
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 152
    .local v3, "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    const-string v5, "[MAPCON]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "apn :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    .line 155
    .end local v3    # "test":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    :cond_53
    invoke-static {p2}, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;->getMapconApnType(Ljava/lang/String;)Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    move-result-object v1

    .line 157
    .local v1, "apnType":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    if-eqz v1, :cond_29

    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 158
    const/4 v4, 0x1

    goto :goto_29
.end method

.method public declared-synchronized createIfomTable(Landroid/content/Context;)Z
    .registers 14
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 107
    monitor-enter p0

    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 108
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "ipflowrule"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "routingrule"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "affectapn"

    aput-object v3, v2, v1

    .line 114
    .local v2, "projection":[Ljava/lang/String;
    sget-object v1, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    const-string/jumbo v3, "ipflowtype=\'apps\'"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_72

    move-result-object v8

    .line 119
    .local v8, "messagesCursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2e

    :try_start_28
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-gtz v1, :cond_3e

    .line 121
    :cond_2e
    const-string v1, "[MAPCON]"

    const-string v3, "Empty IFOM DB"

    invoke-static {v1, v3}, Lcom/sec/epdg/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_28 .. :try_end_35} :catchall_6a

    .line 135
    if-eqz v8, :cond_3b

    .line 136
    :try_start_37
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_72

    .line 137
    const/4 v8, 0x0

    :cond_3b
    move v1, v11

    :goto_3c
    monitor-exit p0

    return v1

    .line 124
    :cond_3e
    :goto_3e
    :try_start_3e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 125
    const-string/jumbo v1, "ipflowrule"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 127
    .local v7, "appStr":Ljava/lang/String;
    const-string/jumbo v1, "routingrule"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 129
    .local v9, "ratTypeStr":Ljava/lang/String;
    const-string v1, "affectapn"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 131
    .local v6, "apnTypeStr":Ljava/lang/String;
    sget-object v1, mInstance:Lcom/sec/epdg/mapcon/IfomTable;

    invoke-direct {v1, v7, v9, v6}, addToApplicationMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/EnumMap;
    :try_end_69
    .catchall {:try_start_3e .. :try_end_69} :catchall_6a

    goto :goto_3e

    .line 135
    .end local v6    # "apnTypeStr":Ljava/lang/String;
    .end local v7    # "appStr":Ljava/lang/String;
    .end local v9    # "ratTypeStr":Ljava/lang/String;
    :catchall_6a
    move-exception v1

    if-eqz v8, :cond_71

    .line 136
    :try_start_6d
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 137
    const/4 v8, 0x0

    :cond_71
    throw v1
    :try_end_72
    .catchall {:try_start_6d .. :try_end_72} :catchall_72

    .line 107
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v8    # "messagesCursor":Landroid/database/Cursor;
    :catchall_72
    move-exception v1

    monitor-exit p0

    throw v1

    .line 135
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v8    # "messagesCursor":Landroid/database/Cursor;
    :cond_75
    if-eqz v8, :cond_7b

    .line 136
    :try_start_77
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_72

    .line 137
    const/4 v8, 0x0

    :cond_7b
    move v1, v10

    goto :goto_3c
.end method

.method public declared-synchronized shouldLeaveFromWIFIInNoLte(Ljava/lang/String;)Z
    .registers 4
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 202
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v0

    .line 203
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_a

    .line 204
    const/4 v1, 0x0

    .line 206
    :goto_8
    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isCsPreceedsIwlan([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result v1

    goto :goto_8

    .line 202
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized shouldMoveToLte(Ljava/lang/String;)Z
    .registers 4
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 171
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v0

    .line 172
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_a

    .line 173
    const/4 v1, 0x0

    .line 175
    :goto_8
    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isLtePreceedsIwlan([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result v1

    goto :goto_8

    .line 171
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized shouldMoveToWifi(Ljava/lang/String;)Z
    .registers 4
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v0

    .line 165
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_a

    .line 166
    const/4 v1, 0x0

    .line 168
    :goto_8
    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanPreceedsLte([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result v1

    goto :goto_8

    .line 164
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized shouldMoveToWifiInNoLte(Ljava/lang/String;)Z
    .registers 4
    .param p1, "app"    # Ljava/lang/String;

    .prologue
    .line 194
    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, getApplicationRat(Ljava/lang/String;)[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_f

    move-result-object v0

    .line 195
    .local v0, "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    if-nez v0, :cond_a

    .line 196
    const/4 v1, 0x0

    .line 198
    :goto_8
    monitor-exit p0

    return v1

    :cond_a
    :try_start_a
    invoke-static {v0}, Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;->isIwlanPreceedsCs([Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;)Z
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    move-result v1

    goto :goto_8

    .line 194
    .end local v0    # "appRat":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :catchall_f
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 14

    .prologue
    .line 31
    monitor-enter p0

    :try_start_1
    new-instance v10, Ljava/lang/String;

    const-string v11, "Application Policy\n"

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 32
    .local v10, "str":Ljava/lang/String;
    iget-object v11, p0, mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v11}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 33
    .local v5, "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;>;"
    :goto_12
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b6

    .line 34
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;

    .line 35
    .local v2, "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    iget-object v11, p0, mIfomMap:Ljava/util/EnumMap;

    invoke-virtual {v11, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;

    .line 36
    .local v7, "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    invoke-virtual {v7}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyRatList()[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;

    move-result-object v9

    .line 37
    .local v9, "ratList":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    invoke-virtual {v7}, Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;->getIfomPolicyApnList()Ljava/util/EnumSet;

    move-result-object v1

    .line 38
    .local v1, "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 39
    move-object v3, v9

    .local v3, "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    array-length v6, v3

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_48
    if-ge v4, v6, :cond_66

    aget-object v8, v3, v4

    .line 40
    .local v8, "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 39
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    .line 42
    .end local v8    # "rat":Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_66
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " -- "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 44
    invoke-virtual {v1}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_7d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;

    .line 45
    .local v0, "apn":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 46
    goto :goto_7d

    .line 47
    .end local v0    # "apn":Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;
    :cond_a1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_b3
    .catchall {:try_start_1 .. :try_end_b3} :catchall_b8

    move-result-object v10

    .line 48
    goto/16 :goto_12

    .line 49
    .end local v1    # "apnList":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/sec/epdg/mapcon/MapconConstants$MapconApnType;>;"
    .end local v2    # "app":Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;
    .end local v3    # "arr$":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "len$":I
    .end local v7    # "policy":Lcom/sec/epdg/mapcon/MapconConstants$IfomPolicy;
    .end local v9    # "ratList":[Lcom/sec/epdg/mapcon/MapconConstants$MapconRat;
    :cond_b6
    monitor-exit p0

    return-object v10

    .line 31
    .end local v5    # "keySet":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/epdg/mapcon/MapconConstants$IfomAppType;>;"
    .end local v10    # "str":Ljava/lang/String;
    :catchall_b8
    move-exception v11

    monitor-exit p0

    throw v11
.end method

.method public updateIfomTable(Landroid/content/Context;Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V
    .registers 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rule"    # Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .prologue
    .line 220
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 221
    .local v0, "values":Landroid/content/ContentValues;
    const-string/jumbo v1, "routingrule"

    invoke-virtual {p3}, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    if-eqz p1, :cond_35

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ipflowrule = \""

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

    .line 227
    :cond_35
    return-void
.end method

.method public updateIfomTable(Landroid/content/Context;[Ljava/lang/String;Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;)V
    .registers 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "ruleList"    # [Ljava/lang/String;
    .param p3, "preferOrder"    # Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;

    .prologue
    .line 231
    array-length v1, p2

    .line 232
    .local v1, "size":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    .local v0, "builder":Ljava/lang/StringBuilder;
    :cond_6
    :goto_6
    if-lez v1, :cond_30

    .line 234
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

    .line 235
    if-lez v1, :cond_6

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 237
    :cond_30
    const-string v3, "[MAPCON]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateIfomTable: size is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "builder is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/epdg/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v3, "routingrule"

    invoke-virtual {p3}, Lcom/sec/epdg/mapcon/MapconConstants$IfomMode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-eqz p1, :cond_8c

    .line 241
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/sec/epdg/mapcon/MapconConstants;->CONTENT_URI_IFOM_TABLE:Landroid/net/Uri;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ipflowrule IN ("

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

    .line 245
    :cond_8c
    return-void
.end method
