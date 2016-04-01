.class public Lcom/android/sdp/SdpManager;
.super Ljava/lang/Object;
.source "SdpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sdp/SdpManager$SensitiveDBPolicy;
    }
.end annotation


# static fields
.field public static final INTENT_SDP_STATE_CHANGED:Ljava/lang/String; = "com.sec.sdp.SDP_STATE_CHANGED"

.field public static final SDP_DECRYPT_FAIL_FLAG_EMPTY:I = 0x2

.field public static final SDP_DECRYPT_FAIL_FLAG_ERROR:I = 0x1

.field public static final SDP_DECRYPT_FAIL_FLAG_RAW:I = 0x3

.field public static final SDP_DECRYPT_FAIL_FLAG_TEXT:Ljava/lang/String; = "decrypt_fail_flag"

.field public static final SDP_ERR_NATIVE:I = -0x1

.field public static final SDP_ERR_REMOTE:I = -0x2

.field public static final SDP_ERR_VERSION_MISMATCH:I = -0x3

.field public static final SDP_FLAG_FULL:I = 0x2

.field public static final SDP_FLAG_MIGRATION_DEFAULT:I = 0x3

.field public static final SDP_FLAG_MINOR:I = 0x3

.field public static final SDP_FLAG_MODE_MINOR:I = 0x1

.field public static final SDP_FLAG_VAULT_ON:I = 0x2

.field public static final SDP_ID:Ljava/lang/String; = "id"

.field public static final SDP_RET_SUCCESS:I = 0x0

.field public static final SDP_STATE:Ljava/lang/String; = "state"

.field public static final SDP_STATE_ACTIVE:I = 0x1

.field public static final SDP_STATE_BOOTED:I = 0x1

.field public static final SDP_STATE_ERROR:I = -0x1

.field public static final SDP_STATE_INACTIVE:I = 0x2

.field public static final SDP_STATUS_INVALID:I = -0x1

.field public static final SDP_STATUS_READY:I = 0x1

.field public static final SDP_STATUS_UPGRADING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SDP.SDK"

.field private static _instance:Lcom/android/sdp/SdpManager;

.field private static final runAllConvert:Z


# instance fields
.field mService:Lcom/sec/sdp/ISdpManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x0

    sput-object v0, _instance:Lcom/android/sdp/SdpManager;

    .line 90
    const-string/jumbo v0, "sdp_sdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, mService:Lcom/sec/sdp/ISdpManagerService;

    .line 85
    return-void
.end method

.method public static native Native_Sdp_ConvertToSensitiveDB(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_ConvertToSensitiveFile(Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_IsSensitiveColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_SetSensitiveApp(I)I
.end method

.method public static native Native_Sdp_SetSensitiveColumn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I
.end method

.method public static native Native_Sdp_UpdateAsymmetricSensitiveData(ILjava/lang/String;)I
.end method

.method public static native Native_Sdp_UpdateDBEdek(Ljava/lang/String;)I
.end method

.method public static native Native_Sdp_UpdateFileEdek(Ljava/lang/String;)I
.end method

.method public static getSdpManager()Lcom/android/sdp/SdpManager;
    .registers 1

    .prologue
    .line 523
    sget-object v0, _instance:Lcom/android/sdp/SdpManager;

    if-nez v0, :cond_b

    .line 524
    new-instance v0, Lcom/android/sdp/SdpManager;

    invoke-direct {v0}, <init>()V

    sput-object v0, _instance:Lcom/android/sdp/SdpManager;

    .line 526
    :cond_b
    sget-object v0, _instance:Lcom/android/sdp/SdpManager;

    return-object v0
.end method

.method private getSdpService()Lcom/sec/sdp/ISdpManagerService;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, mService:Lcom/sec/sdp/ISdpManagerService;

    if-nez v0, :cond_11

    .line 509
    const-string/jumbo v0, "sdp"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/sdp/ISdpManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/sdp/ISdpManagerService;

    move-result-object v0

    iput-object v0, p0, mService:Lcom/sec/sdp/ISdpManagerService;

    .line 513
    :cond_11
    iget-object v0, p0, mService:Lcom/sec/sdp/ISdpManagerService;

    return-object v0
.end method


# virtual methods
.method public convertToSensitiveFile(Ljava/lang/String;)Z
    .registers 5
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 186
    const-string v0, "SDP.SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "To handle SDP_ConvertToSensitiveFile : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-virtual {p0, p1}, setSensitiveFile(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getFlag(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbalias"    # Ljava/lang/String;
    .param p3, "flagName"    # Ljava/lang/String;

    .prologue
    .line 458
    const/4 v2, -0x1

    .line 459
    .local v2, "retVal":I
    const/4 v0, 0x0

    .line 462
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez p2, :cond_41

    :try_start_4
    const-string v1, ""

    .line 463
    .local v1, "dbaliasprefix":Ljava/lang/String;
    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pragma "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sdp_get_flag(\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 464
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 465
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3a
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_3a} :catch_55
    .catchall {:try_start_4 .. :try_end_3a} :catchall_5f

    move-result v2

    .line 470
    :cond_3b
    if-eqz v0, :cond_40

    .line 471
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 474
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :cond_40
    :goto_40
    return v2

    .line 462
    :cond_41
    :try_start_41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_53
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_41 .. :try_end_53} :catch_55
    .catchall {:try_start_41 .. :try_end_53} :catchall_5f

    move-result-object v1

    goto :goto_6

    .line 467
    :catch_55
    move-exception v3

    .line 468
    .local v3, "x":Landroid/database/sqlite/SQLiteException;
    :try_start_56
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_59
    .catchall {:try_start_56 .. :try_end_59} :catchall_5f

    .line 470
    if-eqz v0, :cond_40

    .line 471
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_40

    .line 470
    .end local v3    # "x":Landroid/database/sqlite/SQLiteException;
    :catchall_5f
    move-exception v4

    if-eqz v0, :cond_65

    .line 471
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_65
    throw v4
.end method

.method public getSDPDBVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbalias"    # Ljava/lang/String;

    .prologue
    .line 278
    const/4 v2, -0x1

    .line 280
    .local v2, "version":I
    :try_start_1
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getSDPDBVersion called with dbalias = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-nez p2, :cond_4d

    const-string v1, ""

    .line 282
    .local v1, "dbaliasprefix":Ljava/lang/String;
    :goto_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pragma "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "sdp_get_db_version"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 283
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_49

    .line 284
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 286
    :cond_49
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 291
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :goto_4c
    return v2

    .line 281
    :cond_4d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5f
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_5f} :catch_61

    move-result-object v1

    goto :goto_1e

    .line 287
    :catch_61
    move-exception v3

    .line 288
    .local v3, "x":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_4c
.end method

.method public getSDPDBVersion(Ljava/lang/String;)I
    .registers 8
    .param p1, "dbPath"    # Ljava/lang/String;

    .prologue
    .line 305
    :try_start_0
    const-string v3, "SDP.SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSDPDBVersion called with dbPath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 307
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, getSDPDBVersion(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)I

    move-result v1

    .line 308
    .local v1, "version":I
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_27
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_27} :catch_28

    .line 314
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v1    # "version":I
    :goto_27
    return v1

    .line 310
    :catch_28
    move-exception v2

    .line 311
    .local v2, "x":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 314
    const/4 v1, -0x1

    goto :goto_27
.end method

.method public getSensitiveDBInfo(II)Ljava/util/List;
    .registers 4
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 593
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSensitiveFileInfo(II)Ljava/util/List;
    .registers 4
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 577
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()I
    .registers 7

    .prologue
    .line 103
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 104
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 107
    .local v3, "userId":I
    :try_start_8
    invoke-direct {p0}, getSdpService()Lcom/sec/sdp/ISdpManagerService;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/sec/sdp/ISdpManagerService;->getEngineInfo(Ljava/lang/String;)Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;

    move-result-object v1

    .line 108
    .local v1, "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    if-eqz v1, :cond_20

    .line 109
    invoke-virtual {v1}, Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;->getState()I
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_18

    move-result v4

    .line 115
    .end local v1    # "info":Lcom/sec/enterprise/knox/sdp/engine/SdpEngineInfo;
    :goto_17
    return v4

    .line 111
    :catch_18
    move-exception v0

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDP.SDK"

    const-string v5, "Error- Exception in get SDP state"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_20
    const-string v4, "SDP.SDK"

    const-string v5, "Failed to get SDP state!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v4, -0x1

    goto :goto_17
.end method

.method public isSDPEnabled(I)Z
    .registers 5
    .param p1, "personaId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 605
    invoke-direct {p0}, getSdpService()Lcom/sec/sdp/ISdpManagerService;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 607
    :try_start_6
    invoke-direct {p0}, getSdpService()Lcom/sec/sdp/ISdpManagerService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/sec/sdp/ISdpManagerService;->isSDPEnabled(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_d} :catch_f

    move-result v1

    .line 612
    :goto_e
    return v1

    .line 608
    :catch_f
    move-exception v0

    .line 609
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "SDP.SDK"

    const-string v2, "Failed to call isSDPEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 612
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_17
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public isSensitiveFile(Ljava/lang/String;)Z
    .registers 9
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "res":Z
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To handle SDP_IsSensitiveFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 206
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 207
    .local v3, "userId":I
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "given app info: uid -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-userid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :try_start_4a
    invoke-static {p1}, Native_Sdp_IsSensitiveFile(Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_6b

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_52

    .line 210
    const/4 v1, 0x1

    .line 215
    :cond_52
    :goto_52
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To handle SDP_IsSensitiveFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    return v1

    .line 212
    :catch_6b
    move-exception v0

    .line 213
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDP.SDK"

    const-string v5, "Error- Exception in setting Policy"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method public setFlag(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 9
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbalias"    # Ljava/lang/String;
    .param p3, "flagName"    # Ljava/lang/String;
    .param p4, "flagVal"    # I

    .prologue
    .line 437
    if-nez p2, :cond_37

    :try_start_2
    const-string v0, ""

    .line 438
    .local v0, "dbaliasprefix":Ljava/lang/String;
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pragma "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "sdp_set_flag(\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\");"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 443
    .end local v0    # "dbaliasprefix":Ljava/lang/String;
    :goto_36
    return-void

    .line 437
    :cond_37
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_49
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_49} :catch_4b

    move-result-object v0

    goto :goto_4

    .line 439
    :catch_4b
    move-exception v1

    .line 440
    .local v1, "x":Landroid/database/sqlite/SQLiteException;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_36
.end method

.method public setSensitiveApp(I)Z
    .registers 9
    .param p1, "pid"    # I

    .prologue
    .line 489
    const/4 v1, 0x0

    .line 490
    .local v1, "res":Z
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To handle SDP_SetSensitiveApp : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 492
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 493
    .local v3, "userId":I
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "given app info: uid -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-userid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :try_start_4a
    invoke-static {p1}, Native_Sdp_SetSensitiveApp(I)I

    move-result v4

    if-nez v4, :cond_58

    .line 496
    const-string v4, "SDP.SDK"

    const-string v5, "Error to handle SDP_SetSensitiveApp"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_57} :catch_5a

    .line 504
    :goto_57
    return v1

    .line 498
    :cond_58
    const/4 v1, 0x1

    goto :goto_57

    .line 500
    :catch_5a
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDP.SDK"

    const-string v5, "Error- Exception in setting Policy"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57
.end method

.method public setSensitiveDBInfo(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .param p3, "dBPath"    # Ljava/lang/String;
    .param p4, "tableName"    # Ljava/lang/String;
    .param p5, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 562
    const/4 v0, -0x1

    return v0
.end method

.method public setSensitiveDBPolicy(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/sdp/SdpManager$SensitiveDBPolicy;)Z
    .registers 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbalias"    # Ljava/lang/String;
    .param p3, "policy"    # Lcom/android/sdp/SdpManager$SensitiveDBPolicy;

    .prologue
    const/4 v3, 0x0

    .line 248
    if-eqz p3, :cond_1c

    iget-object v4, p3, Lcom/android/sdp/SdpManager$SensitiveDBPolicy;->columns:Ljava/util/List;

    if-eqz v4, :cond_1c

    iget-object v4, p3, Lcom/android/sdp/SdpManager$SensitiveDBPolicy;->columns:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1c

    .line 250
    :try_start_f
    new-instance v2, Lcom/sec/enterprise/knox/sdp/SdpDatabase;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;-><init>(Ljava/lang/String;)V

    .line 251
    .local v2, "secDb":Lcom/sec/enterprise/knox/sdp/SdpDatabase;
    iget-object v4, p3, Lcom/android/sdp/SdpManager$SensitiveDBPolicy;->table:Ljava/lang/String;

    iget-object v5, p3, Lcom/android/sdp/SdpManager$SensitiveDBPolicy;->columns:Ljava/util/List;

    invoke-virtual {v2, p1, p2, v4, v5}, Lcom/sec/enterprise/knox/sdp/SdpDatabase;->setSensitive(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    :try_end_1c
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException; {:try_start_f .. :try_end_1c} :catch_1e
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException; {:try_start_f .. :try_end_1c} :catch_23
    .catch Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException; {:try_start_f .. :try_end_1c} :catch_25
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_f .. :try_end_1c} :catch_27

    .line 264
    .end local v2    # "secDb":Lcom/sec/enterprise/knox/sdp/SdpDatabase;
    :cond_1c
    const/4 v3, 0x1

    :goto_1d
    return v3

    .line 252
    :catch_1e
    move-exception v0

    .line 253
    .local v0, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
    invoke-virtual {v0}, Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;->printStackTrace()V

    goto :goto_1d

    .line 255
    .end local v0    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpLicenseRequiredException;
    :catch_23
    move-exception v0

    .line 256
    .local v0, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;
    goto :goto_1d

    .line 257
    .end local v0    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpEngineNotExistsException;
    :catch_25
    move-exception v0

    .line 258
    .local v0, "e":Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;
    goto :goto_1d

    .line 259
    .end local v0    # "e":Lcom/sec/enterprise/knox/sdp/exception/SdpEngineLockedException;
    :catch_27
    move-exception v1

    .line 260
    .local v1, "se":Landroid/database/sqlite/SQLiteException;
    goto :goto_1d
.end method

.method public setSensitiveFile(Ljava/lang/String;)Z
    .registers 9
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "res":Z
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "$$To handle SDP_SetSensitiveFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 133
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 134
    .local v3, "userId":I
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "given app info: uid -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-userid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :try_start_4a
    invoke-static {v3, p1}, Native_Sdp_SetSensitiveFile(ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_69

    .line 137
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error to handle SDP_SetSensitiveFile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_68} :catch_6b

    .line 147
    :goto_68
    return v1

    .line 139
    :cond_69
    const/4 v1, 0x1

    goto :goto_68

    .line 143
    :catch_6b
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDP.SDK"

    const-string v5, "Error- Exception in setting Policy"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method public setSensitiveFileInfo(IILjava/lang/String;)I
    .registers 5
    .param p1, "personaId"    # I
    .param p2, "uid"    # I
    .param p3, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 543
    const/4 v0, -0x1

    return v0
.end method

.method public updateFileEdek(Ljava/lang/String;)Z
    .registers 9
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 156
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To handle SDP_UpdateFileEdek : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "res":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 159
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 160
    .local v3, "userId":I
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "given app info: uid -"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-userid-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_4a
    invoke-static {v3, p1}, Native_Sdp_UpdateAsymmetricSensitiveData(ILjava/lang/String;)I

    move-result v4

    if-nez v4, :cond_81

    .line 163
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error to handle SDP_UpdateAsymmetricSensitiveData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_68} :catch_83

    .line 170
    :goto_68
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "To handle SDP_UpdateAsymmetricSensitiveData : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v1

    .line 165
    :cond_81
    const/4 v1, 0x1

    goto :goto_68

    .line 167
    :catch_83
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "SDP.SDK"

    const-string v5, "Error- Exception in setting Policy"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68
.end method

.method public updateSDPStateToDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "dbalias"    # Ljava/lang/String;
    .param p3, "sdpState"    # I

    .prologue
    const/4 v4, 0x0

    .line 344
    const/4 v0, 0x0

    .line 346
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_2
    const-string v5, "SDP.SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateSDPStateToDB called with dbalias = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sdpState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-nez p2, :cond_2e

    const-string v1, ""

    .line 348
    .local v1, "dbaliasprefix":Ljava/lang/String;
    :goto_29
    packed-switch p3, :pswitch_data_f2

    .line 371
    :goto_2c
    const/4 v4, 0x1

    .line 378
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :cond_2d
    :goto_2d
    return v4

    .line 347
    :cond_2e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_29

    .line 350
    .restart local v1    # "dbaliasprefix":Ljava/lang/String;
    :pswitch_42
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pragma "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sdp_locked;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_60} :catch_61

    goto :goto_2c

    .line 372
    .end local v1    # "dbaliasprefix":Ljava/lang/String;
    :catch_61
    move-exception v2

    .line 373
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 374
    if-eqz v0, :cond_2d

    .line 375
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2d

    .line 353
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "dbaliasprefix":Ljava/lang/String;
    :pswitch_6b
    :try_start_6b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pragma "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sdp_unlocked;"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 357
    const/4 v3, 0x1

    .line 358
    .local v3, "rows":I
    :goto_8a
    if-lez v3, :cond_d8

    .line 359
    const-string v5, "SDP.SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "calling next : pragma runoneconvert  in sdpState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pragma "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "sdp_run_one_convert"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 361
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 362
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 364
    :cond_cf
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    .line 365
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_8a

    .line 367
    :cond_d8
    const-string v5, "SDP.SDK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DONE calling all pragma runoneconvert  in sdpState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_f0} :catch_61

    goto/16 :goto_2c

    .line 348
    :pswitch_data_f2
    .packed-switch 0x1
        :pswitch_42
        :pswitch_6b
    .end packed-switch
.end method

.method public updateSDPStateToDB(Ljava/lang/String;I)Z
    .registers 10
    .param p1, "dbPath"    # Ljava/lang/String;
    .param p2, "sdpState"    # I

    .prologue
    const/4 v3, 0x0

    .line 407
    :try_start_1
    const-string v4, "SDP.SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateSDPStateToDB called with dbPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " sdpState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 409
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4, p2}, updateSDPStateToDB(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)Z

    move-result v2

    .line 410
    .local v2, "ret":Z
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    .line 416
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v2    # "ret":Z
    :goto_32
    return v2

    .line 412
    :catch_33
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 416
    goto :goto_32
.end method
