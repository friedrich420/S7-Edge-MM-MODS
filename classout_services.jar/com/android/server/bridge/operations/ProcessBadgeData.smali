.class public Lcom/android/server/bridge/operations/ProcessBadgeData;
.super Ljava/lang/Object;
.source "ProcessBadgeData.java"


# static fields
.field static final PkgCall:[Ljava/lang/String;

.field static final PkgCallShortcut:[Ljava/lang/String;

.field static final PkgCall_dcm:[Ljava/lang/String;

.field static final PkgEmail:[Ljava/lang/String;

.field static final PkgMessage:[Ljava/lang/String;

.field static final PkgMessageShortcut:[Ljava/lang/String;

.field static final TAG:Ljava/lang/String; = "ProcessBadgeData"


# instance fields
.field private ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

.field badgeObserver:Landroid/database/ContentObserver;

.field private mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

.field private mCtx:Landroid/content/Context;

.field private mDelegateUserId:I

.field mOwnerCallBadgeCountSync:I

.field mOwnerMessageBadgeCountSync:I

.field private mPersonaBadgeCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 33
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.mms"

    aput-object v1, v0, v2

    const-string v1, "com.android.mms.ui.ConversationComposer"

    aput-object v1, v0, v3

    sput-object v0, PkgMessage:[Ljava/lang/String;

    .line 35
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.contacts"

    aput-object v1, v0, v2

    const-string v1, "com.android.dialer.DialtactsActivity"

    aput-object v1, v0, v3

    sput-object v0, PkgCall:[Ljava/lang/String;

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.samsung.contacts"

    aput-object v1, v0, v2

    const-string v1, "com.android.dialer.DialtactsActivity"

    aput-object v1, v0, v3

    sput-object v0, PkgCall_dcm:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.android.email"

    aput-object v1, v0, v2

    const-string v1, "com.android.email.activity.Welcome"

    aput-object v1, v0, v3

    sput-object v0, PkgEmail:[Ljava/lang/String;

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v2

    const-string v1, "com.sec.knox.shortcutsms.PhoneShortcut"

    aput-object v1, v0, v3

    sput-object v0, PkgCallShortcut:[Ljava/lang/String;

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v2

    const-string v1, "com.sec.knox.shortcutsms.SMSShortcut"

    aput-object v1, v0, v3

    sput-object v0, PkgMessageShortcut:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/server/bridge/BridgeProxy;ILcom/android/server/bridge/operations/SimplePersonaInfos;)V
    .registers 11
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "rcpContext"    # Landroid/content/Context;
    .param p3, "bridgeProxy"    # Lcom/android/server/bridge/BridgeProxy;
    .param p4, "userId"    # I
    .param p5, "info"    # Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput v0, p0, mOwnerCallBadgeCountSync:I

    .line 48
    iput v0, p0, mOwnerMessageBadgeCountSync:I

    .line 50
    iput-object v1, p0, mCtx:Landroid/content/Context;

    .line 51
    iput-object v1, p0, mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, mDelegateUserId:I

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mPersonaBadgeCache:Ljava/util/HashMap;

    .line 55
    const-string v0, "com.sec.knox.action.badge_update"

    iput-object v0, p0, ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

    .line 56
    iput-object v1, p0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 58
    new-instance v0, Lcom/android/server/bridge/operations/ProcessBadgeData$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/ProcessBadgeData$1;-><init>(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/os/Handler;)V

    iput-object v0, p0, badgeObserver:Landroid/database/ContentObserver;

    .line 79
    iput-object p1, p0, mCtx:Landroid/content/Context;

    .line 80
    iput-object p3, p0, mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

    .line 81
    iput p4, p0, mDelegateUserId:I

    .line 82
    iput-object p5, p0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 83
    if-eqz p2, :cond_41

    .line 84
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, badgeObserver:Landroid/database/ContentObserver;

    iget v4, p0, mDelegateUserId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    :cond_41
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/bridge/operations/ProcessBadgeData;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;

    .prologue
    .line 31
    iget v0, p0, mDelegateUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/bridge/operations/ProcessBadgeData;)[I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;

    .prologue
    .line 31
    invoke-direct {p0}, getPersonaIds()[I

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;[I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;
    .param p1, "x1"    # Landroid/net/Uri;
    .param p2, "x2"    # [I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, handleObserverOwner(Landroid/net/Uri;[I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/bridge/operations/ProcessBadgeData;Landroid/net/Uri;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/operations/ProcessBadgeData;
    .param p1, "x1"    # Landroid/net/Uri;

    .prologue
    .line 31
    invoke-direct {p0, p1}, handleObserverPersona(Landroid/net/Uri;)V

    return-void
.end method

.method private getPersonaIds()[I
    .registers 8

    .prologue
    .line 255
    const/4 v1, 0x0

    .line 257
    .local v1, "ids":[I
    iget-object v5, p0, mCtx:Landroid/content/Context;

    const-string/jumbo v6, "persona"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    .line 260
    .local v4, "pm":Landroid/os/PersonaManager;
    if-eqz v4, :cond_35

    .line 261
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->getPersonasForUser(I)Ljava/util/List;

    move-result-object v3

    .line 263
    .local v3, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_35

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_35

    .line 264
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v1, v5, [I

    .line 267
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_35

    .line 268
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 270
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v5, v2, Landroid/content/pm/PersonaInfo;->id:I

    aput v5, v1, v0

    .line 267
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 276
    .end local v0    # "i":I
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_35
    return-object v1
.end method

.method private handleObserverOwner(Landroid/net/Uri;[I)V
    .registers 18
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "ids"    # [I

    .prologue
    .line 182
    const/4 v9, 0x0

    .line 183
    .local v9, "count":I
    const/4 v10, 0x0

    .line 184
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 185
    .local v13, "pkgname":Ljava/lang/String;
    const/4 v7, 0x0

    .line 186
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " uri "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_3c
    iget-object v1, p0, mCtx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "badgecount"

    aput-object v4, v3, v2

    const/4 v2, 0x1

    const-string/jumbo v4, "package"

    aput-object v4, v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_58
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_58} :catch_1ac
    .catchall {:try_start_3c .. :try_end_58} :catchall_1aa

    move-result-object v10

    move-object v8, v7

    .line 194
    .end local v7    # "bundle":Landroid/os/Bundle;
    .local v8, "bundle":Landroid/os/Bundle;
    :goto_5a
    if-eqz v10, :cond_1a1

    :try_start_5c
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1a1

    .line 195
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 196
    const/4 v1, 0x1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 198
    sget-object v1, PkgCall:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11b

    .line 199
    iget v1, p0, mOwnerCallBadgeCountSync:I

    if-ne v1, v9, :cond_a3

    .line 200
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "same badge count, skip to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mOwnerCallBadgeCountSync:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_5c .. :try_end_96} :catch_97
    .catchall {:try_start_5c .. :try_end_96} :catchall_147

    goto :goto_5a

    .line 244
    :catch_97
    move-exception v11

    move-object v7, v8

    .line 245
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    .local v11, "e":Landroid/os/RemoteException;
    :goto_99
    :try_start_99
    invoke-virtual {v11}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_9c
    .catchall {:try_start_99 .. :try_end_9c} :catchall_1aa

    .line 247
    if-eqz v10, :cond_a1

    .line 248
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_a1
    const/4 v10, 0x0

    .line 252
    .end local v11    # "e":Landroid/os/RemoteException;
    :goto_a2
    return-void

    .line 205
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_a3
    :try_start_a3
    iput v9, p0, mOwnerCallBadgeCountSync:I

    .line 227
    :goto_a5
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V
    :try_end_aa
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_aa} :catch_97
    .catchall {:try_start_a3 .. :try_end_aa} :catchall_147

    .line 228
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :try_start_aa
    const-string v1, "action"

    const-string v2, "UpdateBadgeCount"

    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const-string/jumbo v1, "pkg_name"

    invoke-virtual {v7, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v1, "count"

    invoke-virtual {v7, v1, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 232
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "badge count updated "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, mCtx:Landroid/content/Context;

    const-string/jumbo v2, "rcp"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/RCPManager;

    .line 237
    .local v14, "rcpManager":Landroid/os/RCPManager;
    if-eqz p2, :cond_19e

    move-object/from16 v0, p2

    array-length v1, v0

    if-lez v1, :cond_19e

    .line 238
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_f1
    move-object/from16 v0, p2

    array-length v1, v0

    if-ge v12, v1, :cond_19e

    .line 239
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync badge count for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v1, p0, mCtx:Landroid/content/Context;

    aget v2, p2, v12

    invoke-virtual {v14, v1, v2, v7}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_118
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_118} :catch_1ac
    .catchall {:try_start_aa .. :try_end_118} :catchall_1aa

    .line 238
    add-int/lit8 v12, v12, 0x1

    goto :goto_f1

    .line 206
    .end local v7    # "bundle":Landroid/os/Bundle;
    .end local v12    # "i":I
    .end local v14    # "rcpManager":Landroid/os/RCPManager;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_11b
    :try_start_11b
    sget-object v1, PkgCall_dcm:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_154

    .line 207
    iget v1, p0, mOwnerCallBadgeCountSync:I

    if-ne v1, v9, :cond_150

    .line 208
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "same badge count, skip to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mOwnerCallBadgeCountSync:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_145
    .catch Landroid/os/RemoteException; {:try_start_11b .. :try_end_145} :catch_97
    .catchall {:try_start_11b .. :try_end_145} :catchall_147

    goto/16 :goto_5a

    .line 247
    :catchall_147
    move-exception v1

    move-object v7, v8

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :goto_149
    if-eqz v10, :cond_14e

    .line 248
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_14e
    const/4 v10, 0x0

    throw v1

    .line 213
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :cond_150
    :try_start_150
    iput v9, p0, mOwnerCallBadgeCountSync:I

    goto/16 :goto_a5

    .line 214
    :cond_154
    sget-object v1, PkgMessage:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_184

    .line 215
    iget v1, p0, mOwnerMessageBadgeCountSync:I

    if-ne v1, v9, :cond_180

    .line 216
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "same badge count, skip to update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, mOwnerMessageBadgeCountSync:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5a

    .line 221
    :cond_180
    iput v9, p0, mOwnerMessageBadgeCountSync:I

    goto/16 :goto_a5

    .line 223
    :cond_184
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "badge count updated, but skip for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19c
    .catch Landroid/os/RemoteException; {:try_start_150 .. :try_end_19c} :catch_97
    .catchall {:try_start_150 .. :try_end_19c} :catchall_147

    goto/16 :goto_5a

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    .restart local v14    # "rcpManager":Landroid/os/RCPManager;
    :cond_19e
    move-object v8, v7

    .line 243
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_5a

    .line 247
    .end local v14    # "rcpManager":Landroid/os/RCPManager;
    :cond_1a1
    if-eqz v10, :cond_1a6

    .line 248
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 250
    :cond_1a6
    const/4 v10, 0x0

    move-object v7, v8

    .line 251
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_a2

    .line 247
    :catchall_1aa
    move-exception v1

    goto :goto_149

    .line 244
    :catch_1ac
    move-exception v11

    goto/16 :goto_99
.end method

.method private handleObserverPersona(Landroid/net/Uri;)V
    .registers 24
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 280
    const/16 v16, 0x0

    .line 281
    .local v16, "i":I
    const/4 v14, 0x0

    .line 283
    .local v14, "cursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 284
    .local v9, "bundle":Landroid/os/Bundle;
    const/4 v8, 0x0

    .line 285
    .local v8, "KnoxName":Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v19, "pkgName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 287
    .local v12, "clsName":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 289
    .local v13, "count":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string/jumbo v20, "|"

    .line 291
    .local v20, "separator":Ljava/lang/String;
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, mBridgeProxy:Lcom/android/server/bridge/BridgeProxy;

    invoke-virtual {v2}, Lcom/android/server/bridge/BridgeProxy;->getBadgeMap()Ljava/util/Map;

    move-result-object v21

    .line 296
    .local v21, "updateBadgeCountMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleObserverPersona() and the USER ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, mDelegateUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    :try_start_74
    move-object/from16 v0, p0

    iget-object v2, v0, mCtx:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "badgecount"

    aput-object v5, v4, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "package"

    aput-object v5, v4, v3

    const/4 v3, 0x2

    const-string v5, "class"

    aput-object v5, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 303
    move-object/from16 v0, p0

    iget-object v2, v0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    if-eqz v2, :cond_21d

    move-object/from16 v0, p0

    iget-object v2, v0, mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    move-object/from16 v0, p0

    iget v3, v0, mDelegateUserId:I

    invoke-virtual {v2, v3}, Lcom/android/server/bridge/operations/SimplePersonaInfos;->getExtraInfo(I)Landroid/os/Bundle;

    move-result-object v11

    .line 304
    .local v11, "bundle_knoxinfo":Landroid/os/Bundle;
    :goto_aa
    if-eqz v11, :cond_b3

    .line 305
    const-string/jumbo v2, "user_name"

    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 309
    :cond_b3
    :goto_b3
    if-eqz v14, :cond_281

    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_281

    .line 311
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Hash map count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const-string v2, "ProcessBadgeData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "class"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "class"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 322
    .local v18, "packageClassApended":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_144

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-eq v2, v3, :cond_b3

    .line 327
    :cond_144
    const-string v2, "badgecount"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 329
    const-string/jumbo v2, "package"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    const-string v2, "class"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    const-string v2, "badgecount"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    sget-object v2, PkgMessageShortcut:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b3

    .line 341
    move-object/from16 v0, p0

    iget-object v2, v0, mPersonaBadgeCache:Ljava/util/HashMap;

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_220

    move-object/from16 v0, p0

    iget-object v2, v0, mPersonaBadgeCache:Ljava/util/HashMap;

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_220

    .line 344
    const-string v3, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "badge count not updated so skip "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, mDelegateUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_210
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_210} :catch_212
    .catchall {:try_start_74 .. :try_end_210} :catchall_2f3

    goto/16 :goto_b3

    .line 377
    .end local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    .end local v18    # "packageClassApended":Ljava/lang/String;
    :catch_212
    move-exception v15

    .line 378
    .local v15, "e":Ljava/lang/Exception;
    :goto_213
    :try_start_213
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_216
    .catchall {:try_start_213 .. :try_end_216} :catchall_2f3

    .line 380
    if-eqz v14, :cond_21b

    .line 381
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_21b
    const/4 v14, 0x0

    .line 385
    .end local v15    # "e":Ljava/lang/Exception;
    :goto_21c
    return-void

    .line 303
    :cond_21d
    const/4 v11, 0x0

    goto/16 :goto_aa

    .line 349
    .restart local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    .restart local v18    # "packageClassApended":Ljava/lang/String;
    :cond_220
    :try_start_220
    move-object/from16 v0, p0

    iget-object v2, v0, mPersonaBadgeCache:Ljava/util/HashMap;

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v3, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "badge count updated "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, mDelegateUserId:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_b3

    .line 358
    .end local v18    # "packageClassApended":Ljava/lang/String;
    :cond_281
    if-lez v16, :cond_2eb

    .line 360
    new-instance v17, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v2, v0, ACTION_BADGE_COUNT_UPDATE:Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 361
    .local v17, "intent":Landroid/content/Intent;
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V
    :try_end_293
    .catch Ljava/lang/Exception; {:try_start_220 .. :try_end_293} :catch_212
    .catchall {:try_start_220 .. :try_end_293} :catchall_2f3

    .line 363
    .end local v9    # "bundle":Landroid/os/Bundle;
    .local v10, "bundle":Landroid/os/Bundle;
    :try_start_293
    const-string v2, "action"

    const-string v3, "UpdateBadgeCount"

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string/jumbo v3, "pkg_names"

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 366
    const-string v3, "class_names"

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {v10, v3, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 368
    const-string v2, "counts"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, arrayListToIntArray(Ljava/util/List;)[I

    move-result-object v3

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 369
    const-string v2, "KnoxName"

    invoke-virtual {v10, v2, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v2, "UserId"

    move-object/from16 v0, p0

    iget v3, v0, mDelegateUserId:I

    invoke-virtual {v10, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 372
    const-string v2, "com.sec.knox.bridge.BadgeData"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 374
    move-object/from16 v0, p0

    iget-object v2, v0, mCtx:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_2ea
    .catch Ljava/lang/Exception; {:try_start_293 .. :try_end_2ea} :catch_2fe
    .catchall {:try_start_293 .. :try_end_2ea} :catchall_2fb

    move-object v9, v10

    .line 380
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v17    # "intent":Landroid/content/Intent;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    :cond_2eb
    if-eqz v14, :cond_2f0

    .line 381
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_2f0
    const/4 v14, 0x0

    .line 384
    goto/16 :goto_21c

    .line 380
    .end local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    :catchall_2f3
    move-exception v2

    :goto_2f4
    if-eqz v14, :cond_2f9

    .line 381
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_2f9
    const/4 v14, 0x0

    throw v2

    .line 380
    .end local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "bundle":Landroid/os/Bundle;
    .restart local v11    # "bundle_knoxinfo":Landroid/os/Bundle;
    .restart local v17    # "intent":Landroid/content/Intent;
    :catchall_2fb
    move-exception v2

    move-object v9, v10

    .end local v10    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    goto :goto_2f4

    .line 377
    .end local v9    # "bundle":Landroid/os/Bundle;
    .restart local v10    # "bundle":Landroid/os/Bundle;
    :catch_2fe
    move-exception v15

    move-object v9, v10

    .end local v10    # "bundle":Landroid/os/Bundle;
    .restart local v9    # "bundle":Landroid/os/Bundle;
    goto/16 :goto_213
.end method

.method private updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "badgeCount"    # I

    .prologue
    .line 92
    const-string v5, "ProcessBadgeData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setBadgeCount : badgeCount = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 94
    .local v4, "values":Landroid/content/ContentValues;
    const/4 v5, 0x2

    new-array v1, v5, [Ljava/lang/String;

    .line 95
    .local v1, "mWhereValues":[Ljava/lang/String;
    const/4 v5, 0x0

    aput-object p1, v1, v5

    .line 96
    const/4 v5, 0x1

    aput-object p2, v1, v5

    .line 98
    iget-object v5, p0, mCtx:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 99
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    .line 100
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/content/ContentValues;->clear()V

    .line 101
    const-string v5, "badgecount"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    const-string/jumbo v5, "package=? AND class=?"

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 104
    .local v2, "updateCount":I
    if-nez v2, :cond_52

    .line 105
    const-string/jumbo v5, "package"

    invoke-virtual {v4, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v5, "class"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 110
    :cond_52
    return-void
.end method


# virtual methods
.method public arrayListToIntArray(Ljava/util/List;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 442
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-nez p1, :cond_4

    .line 443
    const/4 v0, 0x0

    .line 453
    :cond_3
    return-object v0

    .line 446
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 447
    .local v0, "arr":[I
    const/4 v2, 0x0

    .line 448
    .local v2, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 449
    .local v1, "elem":I
    aput v1, v0, v2

    .line 450
    add-int/lit8 v2, v2, 0x1

    .line 451
    goto :goto_f
.end method

.method public clear(Landroid/content/Context;)V
    .registers 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 457
    const-string v0, "ProcessBadgeData"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterBadgeObserver, mUserID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mDelegateUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, badgeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 459
    return-void
.end method

.method public getBadgeInfoByPkgName(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .registers 18
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 388
    const/4 v14, 0x0

    .line 390
    .local v14, "ret":Landroid/os/Bundle;
    const/4 v10, 0x0

    .line 391
    .local v10, "count":I
    const/4 v11, 0x0

    .line 392
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 393
    .local v13, "pkgname":Ljava/lang/String;
    const/4 v9, 0x0

    .line 394
    .local v9, "clsName":Ljava/lang/String;
    const/4 v7, 0x0

    .line 396
    .local v7, "bundle":Landroid/os/Bundle;
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getBadgeInfoByPkgName() /"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :try_start_21
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "badgecount"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "package"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "class"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 404
    :cond_41
    if-eqz v11, :cond_65

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 406
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_41

    .line 407
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 408
    const/4 v1, 0x1

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 409
    const/4 v1, 0x2

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 415
    :cond_65
    if-eqz v13, :cond_b2

    .line 416
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6c} :catch_b9
    .catchall {:try_start_21 .. :try_end_6c} :catchall_c4

    .line 418
    .end local v7    # "bundle":Landroid/os/Bundle;
    .local v8, "bundle":Landroid/os/Bundle;
    :try_start_6c
    const-string v1, "action"

    const-string v2, "UpdateBadgeCount"

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string/jumbo v1, "pkg_names"

    invoke-virtual {v8, v1, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    const-string v1, "class_names"

    invoke-virtual {v8, v1, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "counts"

    invoke-virtual {v8, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 422
    const-string v1, "UserId"

    iget v2, p0, mDelegateUserId:I

    invoke-virtual {v8, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_b0} :catch_cf
    .catchall {:try_start_6c .. :try_end_b0} :catchall_cc

    .line 426
    move-object v14, v8

    move-object v7, v8

    .line 432
    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    :cond_b2
    if-eqz v11, :cond_b7

    .line 433
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_b7
    const/4 v11, 0x0

    .line 438
    :goto_b8
    return-object v14

    .line 429
    :catch_b9
    move-exception v12

    .line 430
    .local v12, "e":Ljava/lang/Exception;
    :goto_ba
    :try_start_ba
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_c4

    .line 432
    if-eqz v11, :cond_c2

    .line 433
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_c2
    const/4 v11, 0x0

    .line 436
    goto :goto_b8

    .line 432
    .end local v12    # "e":Ljava/lang/Exception;
    :catchall_c4
    move-exception v1

    :goto_c5
    if-eqz v11, :cond_ca

    .line 433
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 435
    :cond_ca
    const/4 v11, 0x0

    throw v1

    .line 432
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :catchall_cc
    move-exception v1

    move-object v7, v8

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_c5

    .line 429
    .end local v7    # "bundle":Landroid/os/Bundle;
    .restart local v8    # "bundle":Landroid/os/Bundle;
    :catch_cf
    move-exception v12

    move-object v7, v8

    .end local v8    # "bundle":Landroid/os/Bundle;
    .restart local v7    # "bundle":Landroid/os/Bundle;
    goto :goto_ba
.end method

.method public requestTrySync(I)V
    .registers 7
    .param p1, "userid"    # I

    .prologue
    .line 161
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 163
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v3, "ProcessBadgeData"

    const-string/jumbo v4, "requestTrySync() START"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const-string v3, "action"

    const-string v4, "RequestUpdateBadgeCount"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v3, "userid"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 169
    :try_start_1a
    iget-object v3, p0, mCtx:Landroid/content/Context;

    if-eqz v3, :cond_2f

    .line 170
    iget-object v3, p0, mCtx:Landroid/content/Context;

    const-string/jumbo v4, "rcp"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RCPManager;

    .line 172
    .local v2, "rcpManager":Landroid/os/RCPManager;
    iget-object v3, p0, mCtx:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Landroid/os/RCPManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_2f} :catch_38

    .line 178
    .end local v2    # "rcpManager":Landroid/os/RCPManager;
    :cond_2f
    :goto_2f
    const-string v3, "ProcessBadgeData"

    const-string/jumbo v4, "requestTrySync() END"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 174
    :catch_38
    move-exception v1

    .line 175
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f
.end method

.method public trySync(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 148
    const-string/jumbo v1, "userid"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 150
    .local v0, "userid":I
    const-string v1, "ProcessBadgeData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "trySync() START "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iput v4, p0, mOwnerCallBadgeCountSync:I

    .line 153
    iput v4, p0, mOwnerMessageBadgeCountSync:I

    .line 155
    sget-object v1, Lcom/android/server/bridge/BridgeProxy$Apps;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    invoke-direct {p0, v1, v2}, handleObserverOwner(Landroid/net/Uri;[I)V

    .line 157
    const-string v1, "ProcessBadgeData"

    const-string/jumbo v2, "trySync() END"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void
.end method

.method public updateShortcutBadgeCount(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 114
    if-eqz p1, :cond_8

    iget-object v1, p0, mCtx:Landroid/content/Context;

    if-nez v1, :cond_11

    .line 115
    :cond_8
    const-string v1, "ProcessBadgeData"

    const-string/jumbo v2, "updateShortcutBadgeCount fails, null param"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_10
    :goto_10
    return-void

    .line 119
    :cond_11
    const-string v1, "ProcessBadgeData"

    const-string/jumbo v2, "updateShortcutBadgeCount()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, mCtx:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 123
    .local v0, "pm":Landroid/os/PersonaManager;
    sget-object v1, PkgCall:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 124
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 125
    sget-object v1, PkgCall:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, PkgCall:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_10

    .line 128
    :cond_4d
    sget-object v1, PkgCallShortcut:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, PkgCallShortcut:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_10

    .line 131
    :cond_5f
    sget-object v1, PkgCall_dcm:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9b

    .line 132
    invoke-virtual {v0}, Landroid/os/PersonaManager;->isKioskContainerExistOnDevice()Z

    move-result v1

    if-eqz v1, :cond_88

    .line 133
    sget-object v1, PkgCall_dcm:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, PkgCall_dcm:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_10

    .line 136
    :cond_88
    sget-object v1, PkgCallShortcut:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, PkgCallShortcut:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_10

    .line 139
    :cond_9b
    sget-object v1, PkgMessage:[Ljava/lang/String;

    aget-object v1, v1, v3

    const-string/jumbo v2, "pkg_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 140
    sget-object v1, PkgMessageShortcut:[Ljava/lang/String;

    aget-object v1, v1, v3

    sget-object v2, PkgMessageShortcut:[Ljava/lang/String;

    aget-object v2, v2, v4

    const-string v3, "count"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, updateBadgeCount(Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_10
.end method
