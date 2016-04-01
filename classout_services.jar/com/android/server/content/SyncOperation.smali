.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8

.field public static final SYNC_TARGET_ADAPTER:I = 0x1

.field public static final SYNC_TARGET_SERVICE:I = 0x2

.field public static final SYNC_TARGET_UNKNOWN:I = 0x0

.field public static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field public final allowParallelSyncs:Z

.field public appIdle:Z

.field public backoff:J

.field public delayUntil:J

.field public effectiveRunTime:J

.field private final expedited:Z

.field public extras:Landroid/os/Bundle;

.field public flexTime:J

.field public final key:Ljava/lang/String;

.field public latestRunTime:J

.field public pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

.field public final reason:I

.field public final syncSource:I

.field public final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

.field public wakeLockName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DataSettingsChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AccountsUpdated"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ServiceChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Periodic"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IsSyncable"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AutoSync"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MasterSyncAuto"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UserStart"

    aput-object v2, v0, v1

    sput-object v0, REASON_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V
    .registers 35
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "source"    # I
    .param p5, "provider"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "runTimeFromNow"    # J
    .param p9, "flexTime"    # J
    .param p11, "backoff"    # J
    .param p13, "delayUntil"    # J
    .param p15, "allowParallelSyncs"    # Z

    .prologue
    .line 99
    new-instance v6, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move/from16 v2, p2

    invoke-direct {v6, v0, v1, v2}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/accounts/Account;Ljava/lang/String;I)V

    move-object/from16 v5, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p6

    move-wide/from16 v10, p7

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move/from16 v18, p15

    invoke-direct/range {v5 .. v18}, <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;IIILandroid/os/Bundle;JJJJ)V
    .registers 32
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "source"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "runTimeFromNow"    # J
    .param p8, "flexTime"    # J
    .param p10, "backoff"    # J
    .param p12, "delayUntil"    # J

    .prologue
    .line 107
    new-instance v4, Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;-><init>(Landroid/content/ComponentName;I)V

    const/16 v16, 0x1

    move-object/from16 v3, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    invoke-direct/range {v3 .. v16}, <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lcom/android/server/content/SyncOperation;J)V
    .registers 22
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;
    .param p2, "newRunTimeFromNow"    # J

    .prologue
    .line 145
    move-object/from16 v0, p1

    iget-object v4, v0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    move-object/from16 v0, p1

    iget v5, v0, reason:I

    move-object/from16 v0, p1

    iget v6, v0, syncSource:I

    new-instance v7, Landroid/os/Bundle;

    move-object/from16 v0, p1

    iget-object v2, v0, extras:Landroid/os/Bundle;

    invoke-direct {v7, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    const-wide/16 v10, 0x0

    move-object/from16 v0, p1

    iget-wide v12, v0, backoff:J

    move-object/from16 v0, p1

    iget-wide v14, v0, delayUntil:J

    move-object/from16 v0, p1

    iget-boolean v0, v0, allowParallelSyncs:Z

    move/from16 v16, v0

    move-object/from16 v3, p0

    move-wide/from16 v8, p2

    invoke-direct/range {v3 .. v16}, <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V

    .line 151
    return-void
.end method

.method private constructor <init>(Lcom/android/server/content/SyncStorageEngine$EndPoint;IILandroid/os/Bundle;JJJJZ)V
    .registers 21
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "reason"    # I
    .param p3, "source"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "runTimeFromNow"    # J
    .param p7, "flexTime"    # J
    .param p9, "backoff"    # J
    .param p11, "delayUntil"    # J
    .param p13, "allowParallelSyncs"    # Z

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 115
    iput p2, p0, reason:I

    .line 116
    iput p3, p0, syncSource:I

    .line 117
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v4, p0, extras:Landroid/os/Bundle;

    .line 118
    iget-object v4, p0, extras:Landroid/os/Bundle;

    invoke-direct {p0, v4}, cleanBundle(Landroid/os/Bundle;)V

    .line 119
    move-wide/from16 v0, p11

    iput-wide v0, p0, delayUntil:J

    .line 120
    move-wide/from16 v0, p9

    iput-wide v0, p0, backoff:J

    .line 121
    move/from16 v0, p13

    iput-boolean v0, p0, allowParallelSyncs:Z

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 125
    .local v2, "now":J
    const-wide/16 v4, 0x0

    cmp-long v4, p5, v4

    if-gez v4, :cond_55

    .line 126
    const/4 v4, 0x1

    iput-boolean v4, p0, expedited:Z

    .line 128
    iget-object v4, p0, extras:Landroid/os/Bundle;

    const-string/jumbo v5, "expedited"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_43

    .line 129
    iget-object v4, p0, extras:Landroid/os/Bundle;

    const-string/jumbo v5, "expedited"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 131
    :cond_43
    iput-wide v2, p0, latestRunTime:J

    .line 132
    const-wide/16 v4, 0x0

    iput-wide v4, p0, flexTime:J

    .line 139
    :goto_49
    invoke-virtual {p0}, updateEffectiveRunTime()V

    .line 140
    iget-object v4, p0, extras:Landroid/os/Bundle;

    invoke-static {p1, v4}, toKey(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, key:Ljava/lang/String;

    .line 141
    return-void

    .line 134
    :cond_55
    const/4 v4, 0x0

    iput-boolean v4, p0, expedited:Z

    .line 135
    iget-object v4, p0, extras:Landroid/os/Bundle;

    const-string/jumbo v5, "expedited"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 136
    add-long v4, v2, p5

    iput-wide v4, p0, latestRunTime:J

    .line 137
    iput-wide p7, p0, flexTime:J

    goto :goto_49
.end method

.method private cleanBundle(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 163
    const-string/jumbo v0, "upload"

    invoke-direct {p0, p1, v0}, removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 164
    const-string/jumbo v0, "force"

    invoke-direct {p0, p1, v0}, removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 165
    const-string/jumbo v0, "ignore_settings"

    invoke-direct {p0, p1, v0}, removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v0, "ignore_backoff"

    invoke-direct {p0, p1, v0}, removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 167
    const-string/jumbo v0, "do_not_retry"

    invoke-direct {p0, p1, v0}, removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 168
    const-string/jumbo v0, "discard_deletions"

    invoke-direct {p0, p1, v0}, removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v0, "expedited"

    invoke-direct {p0, p1, v0}, removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 170
    const-string/jumbo v0, "deletions_override"

    invoke-direct {p0, p1, v0}, removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 171
    const-string v0, "allow_metered"

    invoke-direct {p0, p1, v0}, removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method private static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .registers 6
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 316
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 318
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 320
    .end local v1    # "key":Ljava/lang/String;
    :cond_31
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    return-void
.end method

.method public static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .registers 7
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "reason"    # I

    .prologue
    .line 239
    if-ltz p1, :cond_22

    .line 240
    if-eqz p0, :cond_1d

    .line 241
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_12

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_12

    .line 243
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 258
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_11
    :goto_11
    return-object v1

    .line 245
    .restart local v2    # "packages":[Ljava/lang/String;
    :cond_12
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 246
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_11

    .line 249
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 251
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_1d
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 254
    :cond_22
    neg-int v3, p1

    add-int/lit8 v0, v3, -0x1

    .line 255
    .local v0, "index":I
    sget-object v3, REASON_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_2f

    .line 256
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_11

    .line 258
    :cond_2f
    sget-object v3, REASON_NAMES:[Ljava/lang/String;

    aget-object v1, v3, v0

    goto :goto_11
.end method

.method private removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "extraName"    # Ljava/lang/String;

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 176
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 178
    :cond_a
    return-void
.end method

.method public static toKey(Lcom/android/server/content/SyncStorageEngine$EndPoint;Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6
    .param p0, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 290
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_5d

    .line 291
    const-string/jumbo v1, "provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " account {name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :goto_50
    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    invoke-static {p1, v0}, extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 312
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_5c
    return-object v1

    .line 298
    :cond_5d
    iget-boolean v1, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v1, :cond_95

    .line 299
    const-string/jumbo v1, "service {package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    .line 307
    :cond_95
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Converting SyncOperaton to key, invalid target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const-string v1, ""

    goto :goto_5c
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 16
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v6, 0x1

    const/4 v1, -0x1

    .line 360
    move-object v0, p1

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 361
    .local v0, "other":Lcom/android/server/content/SyncOperation;
    iget-boolean v7, p0, expedited:Z

    iget-boolean v8, v0, expedited:Z

    if-eq v7, v8, :cond_14

    .line 362
    iget-boolean v7, p0, expedited:Z

    if-eqz v7, :cond_12

    .line 372
    :cond_11
    :goto_11
    return v1

    :cond_12
    move v1, v6

    .line 362
    goto :goto_11

    .line 364
    :cond_14
    iget-wide v8, p0, effectiveRunTime:J

    iget-wide v10, p0, flexTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 365
    .local v4, "thisIntervalStart":J
    iget-wide v8, v0, effectiveRunTime:J

    iget-wide v10, v0, flexTime:J

    sub-long/2addr v8, v10

    invoke-static {v8, v9, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 367
    .local v2, "otherIntervalStart":J
    cmp-long v7, v4, v2

    if-ltz v7, :cond_11

    .line 369
    cmp-long v1, v2, v4

    if-gez v1, :cond_30

    move v1, v6

    .line 370
    goto :goto_11

    .line 372
    :cond_30
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;
    .registers 7
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "useOneLine"    # Z

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_95

    .line 208
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_4c
    :goto_4c
    sget-object v1, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v2, p0, syncSource:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentRunTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, effectiveRunTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 226
    iget-boolean v1, p0, expedited:Z

    if-eqz v1, :cond_6a

    .line 227
    const-string v1, ", EXPEDITED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_6a
    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget v1, p0, reason:I

    invoke-static {p1, v1}, reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    if-nez p2, :cond_90

    iget-object v1, p0, extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90

    .line 232
    const-string v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-object v1, p0, extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 235
    :cond_90
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 216
    :cond_95
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v1, :cond_4c

    .line 217
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v2, v2, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4c
.end method

.method public ignoreBackoff()Z
    .registers 4

    .prologue
    .line 272
    iget-object v0, p0, extras:Landroid/os/Bundle;

    const-string/jumbo v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isConflict(Lcom/android/server/content/SyncOperation;)Z
    .registers 7
    .param p1, "toRun"    # Lcom/android/server/content/SyncOperation;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    iget-object v0, p1, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 187
    .local v0, "other":Lcom/android/server/content/SyncStorageEngine$EndPoint;
    iget-object v3, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v3, :cond_45

    .line 188
    iget-object v3, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    iget-object v3, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    if-ne v3, v4, :cond_43

    iget-boolean v3, p0, allowParallelSyncs:Z

    if-eqz v3, :cond_42

    iget-object v3, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 196
    :cond_42
    :goto_42
    return v1

    :cond_43
    move v1, v2

    .line 188
    goto :goto_42

    .line 196
    :cond_45
    iget-object v3, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v3, v3, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    iget-boolean v3, p0, allowParallelSyncs:Z

    if-eqz v3, :cond_42

    :cond_55
    move v1, v2

    goto :goto_42
.end method

.method public isExpedited()Z
    .registers 2

    .prologue
    .line 268
    iget-boolean v0, p0, expedited:Z

    return v0
.end method

.method public isIgnoreSettings()Z
    .registers 4

    .prologue
    .line 284
    iget-object v0, p0, extras:Landroid/os/Bundle;

    const-string/jumbo v1, "ignore_settings"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isInitialization()Z
    .registers 4

    .prologue
    .line 264
    iget-object v0, p0, extras:Landroid/os/Bundle;

    const-string/jumbo v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isManual()Z
    .registers 4

    .prologue
    .line 280
    iget-object v0, p0, extras:Landroid/os/Bundle;

    const-string/jumbo v1, "force"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isNotAllowedOnMetered()Z
    .registers 4

    .prologue
    .line 276
    iget-object v0, p0, extras:Landroid/os/Bundle;

    const-string v1, "allow_metered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public matchesAuthority(Lcom/android/server/content/SyncOperation;)Z
    .registers 4
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 154
    iget-object v0, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    return v0
.end method

.method public toEventLog(I)[Ljava/lang/Object;
    .registers 7
    .param p1, "event"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 378
    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/Object;

    .line 379
    .local v0, "logArray":[Ljava/lang/Object;
    const/4 v1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 380
    const/4 v1, 0x2

    iget v2, p0, syncSource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    .line 381
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v1, :cond_32

    .line 382
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    aput-object v1, v0, v3

    .line 383
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 390
    :goto_31
    return-object v0

    .line 384
    :cond_32
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v1, :cond_51

    .line 385
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 386
    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    goto :goto_31

    .line 388
    :cond_51
    const-string v1, "SyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sync op with invalid target: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 202
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateEffectiveRunTime()V
    .registers 5

    .prologue
    .line 348
    invoke-virtual {p0}, ignoreBackoff()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-wide v0, p0, latestRunTime:J

    :goto_8
    iput-wide v0, p0, effectiveRunTime:J

    .line 351
    return-void

    .line 348
    :cond_b
    iget-wide v0, p0, latestRunTime:J

    iget-wide v2, p0, delayUntil:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, backoff:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_8
.end method

.method public wakeLockName()Ljava/lang/String;
    .registers 4

    .prologue
    .line 324
    iget-object v0, p0, wakeLockName:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 325
    iget-object v0, p0, wakeLockName:Ljava/lang/String;

    .line 336
    :goto_6
    return-object v0

    .line 327
    :cond_7
    iget-object v0, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v0, :cond_41

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, wakeLockName:Ljava/lang/String;

    goto :goto_6

    .line 331
    :cond_41
    iget-object v0, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-boolean v0, v0, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v0, :cond_71

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, wakeLockName:Ljava/lang/String;

    goto :goto_6

    .line 335
    :cond_71
    const-string v0, "SyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid target getting wakelock name for operation - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v0, 0x0

    goto/16 :goto_6
.end method
