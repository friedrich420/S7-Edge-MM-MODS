.class public Lcom/android/server/enterprise/ccm/ClientCertificateManager;
.super Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;
.source "ClientCertificateManager.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;,
        Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;
    }
.end annotation


# static fields
.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CCM_PRIVATE_KEY:I = 0x3

.field private static final CCM_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.ccm.date"

.field private static final DBG:Z

.field public static final KEYSTORE_KEYCHAIN_CCM_MARKER:Ljava/lang/String; = "keystorekeychain"

.field private static final KNOX_CCM_PERMISSION:Ljava/lang/String; = "com.sec.enterprise.knox.permission.KNOX_CCM"

.field private static TAG:Ljava/lang/String;

.field private static final defaultPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final INVALID_SLOT_ID:J

.field private final TIMA_SERVICE:Ljava/lang/String;

.field private final TZ_CCM_APP_NAME:Ljava/lang/String;

.field private final TZ_CCM_SUCCESS:J

.field private mContext:Landroid/content/Context;

.field private mDefaultCertAlias:Ljava/lang/String;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mIsTimaVersion30:Z

.field private mPersonaMgr:Landroid/os/PersonaManager;

.field private mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

.field private mPersonaObservers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotCount:I

.field private final mTimaService:Landroid/service/tima/ITimaService;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 146
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_21

    move v0, v1

    :goto_9
    sput-boolean v0, DBG:Z

    .line 149
    const-string v0, "ClientCertificateManager Service"

    sput-object v0, TAG:Ljava/lang/String;

    .line 185
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v3, "com.samsung.android.spayfw"

    aput-object v3, v0, v1

    const-string v1, "com.samsung.android.spay"

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, defaultPackageList:Ljava/util/List;

    return-void

    :cond_21
    move v0, v2

    .line 146
    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 187
    invoke-direct {p0}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;-><init>()V

    .line 153
    iput-object v5, p0, mContext:Landroid/content/Context;

    .line 154
    iput-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 155
    iput-object v5, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 156
    iput-object v5, p0, mPersonaMgr:Landroid/os/PersonaManager;

    .line 157
    new-instance v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    invoke-direct {v4, p0, v5}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;)V

    iput-object v4, p0, mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    .line 158
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, mPersonaObservers:Ljava/util/HashMap;

    .line 159
    iput v6, p0, mSlotCount:I

    .line 160
    iput-object v5, p0, mDefaultCertAlias:Ljava/lang/String;

    .line 162
    const-string/jumbo v4, "tima"

    iput-object v4, p0, TIMA_SERVICE:Ljava/lang/String;

    .line 166
    iput-boolean v6, p0, mIsTimaVersion30:Z

    .line 171
    const-wide/16 v4, 0x0

    iput-wide v4, p0, TZ_CCM_SUCCESS:J

    .line 179
    const-wide v4, 0xffffffffL

    iput-wide v4, p0, INVALID_SLOT_ID:J

    .line 182
    const-string/jumbo v4, "tz_ccm"

    iput-object v4, p0, TZ_CCM_APP_NAME:Ljava/lang/String;

    .line 3500
    new-instance v4, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$1;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)V

    iput-object v4, p0, mReceiver:Landroid/content/BroadcastReceiver;

    .line 188
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_49

    .line 189
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "ClientCertificateManager Constructor"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_49
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 191
    new-instance v4, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 192
    const-string/jumbo v4, "tima"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/service/tima/ITimaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/tima/ITimaService;

    move-result-object v4

    iput-object v4, p0, mTimaService:Landroid/service/tima/ITimaService;

    .line 194
    invoke-direct {p0}, setupIntentFilters()V

    .line 196
    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PersonaManager;

    iput-object v4, p0, mPersonaMgr:Landroid/os/PersonaManager;

    .line 198
    iget-object v4, p0, mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v4, :cond_9a

    .line 199
    iget-object v4, p0, mPersonaMgr:Landroid/os/PersonaManager;

    iget-object v5, p0, mPersonaObr:Lcom/android/server/enterprise/ccm/ClientCertificateManager$SystemPersonaObserver;

    invoke-virtual {v4, v5}, Landroid/os/PersonaManager;->registerSystemPersonaObserver(Landroid/content/pm/ISystemPersonaObserver;)Z

    .line 201
    iget-object v4, p0, mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v4, v7}, Landroid/os/PersonaManager;->getPersonas(Z)Ljava/util/List;

    move-result-object v3

    .line 202
    .local v3, "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v3, :cond_9a

    .line 203
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_88
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PersonaInfo;

    .line 204
    .local v2, "info":Landroid/content/pm/PersonaInfo;
    iget v4, v2, Landroid/content/pm/PersonaInfo;->id:I

    invoke-direct {p0, v4}, registerPersonaObserver(I)V

    goto :goto_88

    .line 208
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/content/pm/PersonaInfo;
    .end local v3    # "personaList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :cond_9a
    invoke-direct {p0}, getSlotCount()I

    move-result v4

    iput v4, p0, mSlotCount:I

    .line 211
    iget-object v4, p0, mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v4, :cond_c0

    .line 213
    :try_start_a4
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_af

    .line 214
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "Called TIMA service getTimaVersion"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_af
    iget-object v4, p0, mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v4}, Landroid/service/tima/ITimaService;->getTimaVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3.0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 216
    const/4 v4, 0x1

    iput-boolean v4, p0, mIsTimaVersion30:Z
    :try_end_c0
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_c0} :catch_c1

    .line 222
    :cond_c0
    :goto_c0
    return-void

    .line 218
    :catch_c1
    move-exception v0

    .line 219
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v4, TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0
.end method

.method static native CCM_SetTokenTUIPasswd(II)I
.end method

.method static native CCM_SetTokenTUIProperty(ILjava/lang/String;[BII)I
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 143
    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZZZ)Z
    .registers 6
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, updateLockStatus(IZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/enterprise/ccm/ClientCertificateManager;)Landroid/os/PersonaManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;

    .prologue
    .line 143
    iget-object v0, p0, mPersonaMgr:Landroid/os/PersonaManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, isCCMDefaultCertStore(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, setCCMProfileDefaultForContainer(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;IZ)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, setCCMAsDefaultCertStore(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .prologue
    .line 143
    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, registerPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, provisionUser(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, unregisterPersonaObserver(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/enterprise/ccm/ClientCertificateManager;II)Z
    .registers 4
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, deleteCSRProfileUsingAdminId(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, deleteCertificateProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, deleteCCMProfile(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/enterprise/ccm/ClientCertificateManager;I)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/enterprise/ccm/ClientCertificateManager;
    .param p1, "x1"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1}, deleteCCMDefaultPolicyRecord(I)Z

    move-result v0

    return v0
.end method

.method private addDefaultPackageToExemptList()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 1059
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_c

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "addDefaultPackageToExemptList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    sget-object v3, defaultPackageList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_54

    .line 1061
    sget-object v3, defaultPackageList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1062
    .local v0, "defaultPackageName":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, getPackageUid(ILjava/lang/String;)I

    move-result v2

    .line 1063
    .local v2, "uid":I
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_48

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "defaultPackageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    :cond_48
    const/4 v3, -0x1

    if-eq v3, v2, :cond_51

    .line 1065
    const/4 v3, 0x1

    const/16 v4, 0x3e8

    invoke-static {v3, v4, v6, v2, v6}, ccm_manage_exempt_list(ZIIIZ)J

    .line 1060
    :cond_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1068
    .end local v0    # "defaultPackageName":Ljava/lang/String;
    .end local v2    # "uid":I
    :cond_54
    return-void
.end method

.method private addExemptList()V
    .registers 14

    .prologue
    const/4 v12, -0x1

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, "DB":Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 250
    .local v2, "c":Landroid/database/Cursor;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v3, "containerId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v1, "adminUid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_f
    iget-object v6, p0, mContext:Landroid/content/Context;

    const-string v7, "/data/system/enterprise.db"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 254
    const-string v6, "SELECT * FROM MUMCONTAINER;"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 255
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_61

    .line 256
    :goto_26
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v6

    if-nez v6, :cond_61

    .line 257
    const/4 v6, 0x0

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    const/4 v6, 0x1

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_47} :catch_48
    .catchall {:try_start_f .. :try_end_47} :catchall_6c

    goto :goto_26

    .line 262
    :catch_48
    move-exception v6

    .line 264
    if-eqz v2, :cond_4e

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_4e
    if-eqz v0, :cond_53

    .line 267
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 269
    :cond_53
    :goto_53
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_78

    .line 270
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "No container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_60
    :goto_60
    return-void

    .line 264
    :cond_61
    if-eqz v2, :cond_66

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_66
    if-eqz v0, :cond_53

    .line 267
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_53

    .line 264
    :catchall_6c
    move-exception v6

    if-eqz v2, :cond_72

    .line 265
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 266
    :cond_72
    if-eqz v0, :cond_77

    .line 267
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_77
    throw v6

    .line 275
    :cond_78
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12a

    .line 276
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_60

    .line 277
    const/4 v4, -0x1

    .line 278
    .local v4, "emailUid":I
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "com.samsung.android.email.provider"

    invoke-direct {p0, v6, v7}, getPackageUid(ILjava/lang/String;)I

    move-result v4

    .line 279
    if-eq v4, v12, :cond_be

    .line 280
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v7, v6, v4, v10}, ccm_manage_exempt_list(ZIIIZ)J

    .line 276
    :cond_bb
    :goto_bb
    add-int/lit8 v5, v5, 0x1

    goto :goto_7f

    .line 282
    :cond_be
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "com.samsung.android.email.sync"

    invoke-direct {p0, v6, v7}, getPackageUid(ILjava/lang/String;)I

    move-result v4

    .line 283
    if-eq v4, v12, :cond_f4

    .line 284
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v7, v6, v4, v10}, ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_bb

    .line 286
    :cond_f4
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "com.android.exchange"

    invoke-direct {p0, v6, v7}, getPackageUid(ILjava/lang/String;)I

    move-result v4

    .line 287
    if-eq v4, v12, :cond_bb

    .line 288
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v11, v7, v6, v4, v10}, ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_bb

    .line 294
    .end local v4    # "emailUid":I
    .end local v5    # "i":I
    :cond_12a
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "No Admin for this container"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_60
.end method

.method static native ccm_create_slot(IIILjava/lang/String;)J
.end method

.method static native ccm_delete_alias_list(I[Ljava/lang/String;)J
.end method

.method static native ccm_delete_certificate(IILjava/lang/String;)J
.end method

.method static native ccm_delete_csr_profile(IILjava/lang/String;)J
.end method

.method static native ccm_delete_slot(II)J
.end method

.method static native ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B
.end method

.method static native ccm_generate_csr(IILjava/lang/String;)[B
.end method

.method static native ccm_get_aliases_having_private_key(I)[Ljava/lang/String;
.end method

.method static native ccm_get_error_message(J)Ljava/lang/String;
.end method

.method static native ccm_install_certificate(IIZZZLjava/lang/String;[BLjava/lang/String;)J
.end method

.method static native ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J
.end method

.method static native ccm_manage_exempt_list(ZIIIZ)J
.end method

.method static native ccm_set_csr_profile(IILjava/lang/String;I[BI)J
.end method

.method static native ccm_update_lock_status(IIZ)J
.end method

.method private checkAliasExists(IILjava/lang/String;Z)Z
    .registers 14
    .param p1, "adminId"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "isCsrRecord"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4111
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_e

    .line 4112
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "in checkAliasExists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4114
    :cond_e
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_48

    .line 4115
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdminId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", UserId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", Alias - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isCsrRecord - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4118
    :cond_48
    if-eqz p4, :cond_88

    move v0, v4

    .line 4121
    .local v0, "csrRecordIntValue":I
    :goto_4b
    :try_start_4b
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4122
    .local v1, "cvW":Landroid/content/ContentValues;
    const-string v6, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4123
    const-string/jumbo v6, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4124
    const-string v6, "alias"

    invoke-virtual {v1, v6, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4125
    const-string/jumbo v6, "csr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4127
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    invoke-virtual {v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    .line 4130
    .local v3, "rowCount":I
    if-lez v3, :cond_ab

    .line 4131
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_87

    .line 4132
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "Alias Exists"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_87} :catch_8a

    .line 4140
    .end local v1    # "cvW":Landroid/content/ContentValues;
    .end local v3    # "rowCount":I
    :cond_87
    :goto_87
    return v4

    .end local v0    # "csrRecordIntValue":I
    :cond_88
    move v0, v5

    .line 4118
    goto :goto_4b

    .line 4135
    .restart local v0    # "csrRecordIntValue":I
    :catch_8a
    move-exception v2

    .line 4136
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_ab

    .line 4137
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAliasExists - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_ab
    move v4, v5

    .line 4140
    goto :goto_87
.end method

.method private checkDefaultCCMProfile()Z
    .registers 8

    .prologue
    .line 949
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_b

    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "checkDefaultCCMProfile"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :cond_b
    const/4 v4, 0x0

    .line 951
    .local v4, "prepared":Z
    invoke-direct {p0}, getDefaultPackageList()Ljava/util/List;

    move-result-object v3

    .line 952
    .local v3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v3, :cond_35

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_35

    .line 953
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    sget-object v5, defaultPackageList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_35

    .line 954
    sget-object v5, defaultPackageList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 955
    .local v1, "defaultPackageName":Ljava/lang/String;
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 956
    .local v0, "contains":Z
    const/4 v5, 0x1

    if-ne v0, v5, :cond_34

    .line 957
    const/4 v4, 0x1

    .line 953
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 959
    :cond_34
    const/4 v4, 0x0

    .line 964
    .end local v0    # "contains":Z
    .end local v1    # "defaultPackageName":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_35
    return v4
.end method

.method private checkMPforCCM()V
    .registers 13

    .prologue
    .line 3594
    const/4 v8, 0x0

    .line 3595
    .local v8, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string/jumbo v10, "user"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/UserManager;

    .line 3596
    .local v7, "userManager":Landroid/os/UserManager;
    if-eqz v7, :cond_13

    .line 3597
    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v8

    .line 3600
    :cond_13
    if-eqz v8, :cond_f4

    .line 3601
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_f4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 3602
    .local v6, "user":Landroid/content/pm/UserInfo;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_4f

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", CCM? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, v6, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    :cond_4f
    iget-boolean v9, v6, Landroid/content/pm/UserInfo;->hasCCMBeenProvisioned:Z

    if-nez v9, :cond_ae

    .line 3604
    const/4 v4, 0x0

    .line 3606
    .local v4, "provision":Z
    const-string/jumbo v9, "device_policy"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v1

    .line 3610
    .local v1, "dpms":Landroid/app/admin/IDevicePolicyManager;
    :try_start_5f
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    if-nez v9, :cond_a4

    .line 3611
    invoke-interface {v1}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6a

    .line 3612
    const/4 v4, 0x1

    .line 3619
    :cond_6a
    :goto_6a
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_92

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() user "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", provision? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    :cond_92
    if-eqz v4, :cond_19

    .line 3621
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, provisionUser(I)V
    :try_end_99
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_99} :catch_9a

    goto :goto_19

    .line 3623
    :catch_9a
    move-exception v5

    .line 3624
    .local v5, "re":Landroid/os/RemoteException;
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "DPMS"

    invoke-static {v9, v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_19

    .line 3615
    .end local v5    # "re":Landroid/os/RemoteException;
    :cond_a4
    :try_start_a4
    iget v9, v6, Landroid/content/pm/UserInfo;->flags:I
    :try_end_a6
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_a6} :catch_9a

    and-int/lit8 v9, v9, 0x20

    const/16 v10, 0x20

    if-ne v9, v10, :cond_6a

    .line 3616
    const/4 v4, 0x1

    goto :goto_6a

    .line 3628
    .end local v1    # "dpms":Landroid/app/admin/IDevicePolicyManager;
    .end local v4    # "provision":Z
    :cond_ae
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v9}, getMUMContainerOwnerUid(I)I

    move-result v3

    .line 3630
    .local v3, "mumContainerOwnerUid":I
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v9, v3}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 3632
    .local v0, "adminId":I
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_d6

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() mumContainerOwnerUid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    :cond_d6
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_19

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkMPforCCM() adminId "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 3641
    .end local v0    # "adminId":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mumContainerOwnerUid":I
    .end local v6    # "user":Landroid/content/pm/UserInfo;
    :cond_f4
    return-void
.end method

.method private checkRegex(Ljava/lang/String;)Z
    .registers 4
    .param p1, "regex"    # Ljava/lang/String;

    .prologue
    .line 3420
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    .line 3425
    const/4 v1, 0x1

    :goto_4
    return v1

    .line 3421
    :catch_5
    move-exception v0

    .line 3422
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3423
    const/4 v1, 0x0

    goto :goto_4
.end method

.method private deleteCCMDefaultPolicyRecord(I)Z
    .registers 9
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 4403
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_d

    .line 4404
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "in deleteCCMDefaultPolicyRecord"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4406
    :cond_d
    const/4 v5, 0x1

    :try_start_e
    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "uid"

    aput-object v6, v2, v5

    .line 4407
    .local v2, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 4408
    .local v0, "contId":Ljava/lang/String;
    const/4 v5, 0x1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    .line 4409
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMDefaultPolicy"

    invoke-virtual {v5, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_27} :catch_29

    move-result v4

    .line 4414
    .end local v0    # "contId":Ljava/lang/String;
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :goto_28
    return v4

    .line 4411
    :catch_29
    move-exception v1

    .line 4412
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteCCMDefaultPolicyRecord() failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28
.end method

.method private deleteCCMProfile(I)Z
    .registers 12
    .param p1, "containerId"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2080
    iget-boolean v6, p0, mIsTimaVersion30:Z

    if-nez v6, :cond_13

    .line 2081
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_12

    .line 2082
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteCCMProfile - TIMA version does not include CCM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    :cond_12
    :goto_12
    return v4

    .line 2088
    :cond_13
    const-wide/16 v6, 0x0

    invoke-static {v4, p1}, ccm_delete_slot(II)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2a

    .line 2089
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_12

    .line 2090
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "deleteCCMProfile - native ccm_delete_slot failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2093
    :cond_2a
    invoke-direct {p0, v4, p1}, resetDefaultCCMProfile(II)V

    .line 2095
    const/4 v4, 0x1

    :try_start_2e
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v6, "uid"

    aput-object v6, v2, v4

    .line 2096
    .local v2, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2097
    .local v0, "contId":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 2098
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "ClientCertificateManagerTable"

    invoke-virtual {v4, v6, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2101
    invoke-direct {p0}, getSlotCount()I

    move-result v4

    iput v4, p0, mSlotCount:I
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_4d} :catch_4f

    .end local v0    # "contId":Ljava/lang/String;
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :cond_4d
    :goto_4d
    move v4, v5

    .line 2107
    goto :goto_12

    .line 2102
    :catch_4f
    move-exception v1

    .line 2103
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_4d

    .line 2104
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deleteCCMProfile - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method private deleteCCMProfileUsingAdminId(IIZ)Z
    .registers 14
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I
    .param p3, "useAdminIdOnly"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2030
    iget-boolean v5, p0, mIsTimaVersion30:Z

    if-nez v5, :cond_13

    .line 2031
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_12

    .line 2032
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCCMProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2070
    :cond_12
    :goto_12
    return v3

    .line 2038
    :cond_13
    const-wide/16 v6, 0x0

    invoke-static {p1, p2}, ccm_delete_slot(II)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2a

    .line 2039
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_12

    .line 2040
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCCMProfileUsingAdminId - native ccm_delete_slot failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 2044
    :cond_2a
    invoke-direct {p0, p1, p2}, resetDefaultCCMProfile(II)V

    .line 2048
    if-eqz p3, :cond_50

    .line 2049
    const/4 v3, 0x1

    :try_start_30
    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "adminUid"

    aput-object v5, v1, v3

    .line 2050
    .local v1, "sColumns":[Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2051
    .local v2, "sValues":[Ljava/lang/String;
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 2062
    :goto_48
    invoke-direct {p0}, getSlotCount()I

    move-result v3

    iput v3, p0, mSlotCount:I

    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :cond_4e
    :goto_4e
    move v3, v4

    .line 2070
    goto :goto_12

    .line 2054
    :cond_50
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "adminUid"

    aput-object v5, v1, v3

    const/4 v3, 0x1

    const-string/jumbo v5, "uid"

    aput-object v5, v1, v3

    .line 2056
    .restart local v1    # "sColumns":[Ljava/lang/String;
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 2058
    .restart local v2    # "sValues":[Ljava/lang/String;
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v3, v5, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_76} :catch_77

    goto :goto_48

    .line 2063
    .end local v1    # "sColumns":[Ljava/lang/String;
    .end local v2    # "sValues":[Ljava/lang/String;
    :catch_77
    move-exception v0

    .line 2064
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_4e

    .line 2065
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCCMProfileUsingAdminId - Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e
.end method

.method private deleteCSRProfileUsingAdminId(II)Z
    .registers 15
    .param p1, "adminId"    # I
    .param p2, "userId"    # I

    .prologue
    .line 4657
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_c

    .line 4658
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "in deleteCSRProfileUsingAdminId"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    :cond_c
    iget-boolean v7, p0, mIsTimaVersion30:Z

    if-nez v7, :cond_1e

    .line 4661
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_1c

    .line 4662
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "deleteCSRProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4664
    :cond_1c
    const/4 v7, 0x0

    .line 4733
    :goto_1d
    return v7

    .line 4667
    :cond_1e
    const/4 v5, 0x0

    .line 4670
    .local v5, "templateList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1f
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4671
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v7, "csr"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4674
    const/4 v7, -0x1

    if-ne v7, p1, :cond_bb

    .line 4675
    const-string/jumbo v7, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4681
    :goto_3c
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_63

    .line 4682
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in deleteCSRProfileUsingAdminId: AdminId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    :cond_63
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    const-string v9, "alias"

    invoke-virtual {v7, v8, v9, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v5

    .line 4689
    if-eqz v5, :cond_f2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_f2

    .line 4691
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_79
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 4692
    .local v6, "templateName":Ljava/lang/String;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_a2

    .line 4693
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "in deleteCSRProfileUsingAdminId - templateName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4696
    :cond_a2
    const-wide/16 v8, 0x0

    invoke-static {p1, p2, v6}, ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-eqz v7, :cond_79

    .line 4698
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_b8

    .line 4699
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "deleteCSRProfileUsingAdminId - native ccm_delete_csr_profile failed"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    :cond_b8
    const/4 v7, 0x0

    goto/16 :goto_1d

    .line 4677
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v6    # "templateName":Ljava/lang/String;
    :cond_bb
    const-string v7, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4678
    const-string/jumbo v7, "uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_ce} :catch_d0

    goto/16 :goto_3c

    .line 4726
    .end local v0    # "cvWhere":Landroid/content/ContentValues;
    :catch_d0
    move-exception v1

    .line 4727
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_f2

    .line 4728
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteCSRProfileUsingAdminId - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4733
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_f2
    const/4 v7, 0x0

    goto/16 :goto_1d

    .line 4706
    .restart local v0    # "cvWhere":Landroid/content/ContentValues;
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_f5
    const/4 v7, -0x1

    if-ne v7, p1, :cond_123

    .line 4707
    const/4 v7, 0x2

    :try_start_f9
    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "uid"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "csr"

    aput-object v8, v3, v7

    .line 4709
    .local v3, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x2

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 4712
    .local v4, "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 4724
    :goto_120
    const/4 v7, 0x1

    goto/16 :goto_1d

    .line 4715
    .end local v3    # "sColumns":[Ljava/lang/String;
    .end local v4    # "sValues":[Ljava/lang/String;
    :cond_123
    const/4 v7, 0x3

    new-array v3, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v3, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "uid"

    aput-object v8, v3, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "csr"

    aput-object v8, v3, v7

    .line 4717
    .restart local v3    # "sColumns":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v7

    .line 4720
    .restart local v4    # "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_157
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_157} :catch_d0

    goto :goto_120
.end method

.method private deleteCertificateProfile(I)Z
    .registers 13
    .param p1, "containerId"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2418
    iget-boolean v5, p0, mIsTimaVersion30:Z

    if-nez v5, :cond_14

    .line 2419
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_13

    .line 2420
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfile - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2444
    :cond_13
    :goto_13
    return v3

    .line 2426
    :cond_14
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    invoke-static {v3, p1, v5}, ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_2c

    .line 2427
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_13

    .line 2428
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfile - native ccm_delete_certificate failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 2433
    :cond_2c
    new-array v1, v10, [Ljava/lang/String;

    const-string/jumbo v5, "uid"

    aput-object v5, v1, v3

    const-string/jumbo v5, "csr"

    aput-object v5, v1, v4

    .line 2434
    .local v1, "sColumns":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 2436
    .local v2, "sValues":[Ljava/lang/String;
    :try_start_46
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    invoke-virtual {v5, v6, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_4d} :catch_4f

    move v3, v4

    .line 2438
    goto :goto_13

    .line 2439
    :catch_4f
    move-exception v0

    .line 2440
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_13

    .line 2441
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificateProfile - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private deleteCertificateProfileUsingAdminId(IIZ)Z
    .registers 12
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I
    .param p3, "useAdminIdOnly"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2368
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_d

    .line 2369
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "in deleteCertificateProfileUsingAdminId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2371
    :cond_d
    iget-boolean v4, p0, mIsTimaVersion30:Z

    if-nez v4, :cond_1e

    .line 2372
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1d

    .line 2373
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfileUsingAdminId - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    :cond_1d
    :goto_1d
    return v1

    .line 2379
    :cond_1e
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-static {p1, p2, v6}, ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_36

    .line 2381
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1d

    .line 2382
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "deleteCertificateProfileUsingAdminId - native ccm_delete_certificate failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2387
    :cond_36
    const/4 v1, 0x1

    .line 2389
    .local v1, "ret":Z
    if-eqz p3, :cond_6d

    .line 2390
    const/4 v4, 0x2

    :try_start_3a
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "csr"

    aput-object v5, v2, v4

    .line 2392
    .local v2, "sColumns":[Ljava/lang/String;
    const/4 v4, 0x2

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2394
    .local v3, "sValues":[Ljava/lang/String;
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_60} :catch_a2

    .line 2410
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :cond_60
    :goto_60
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1d

    .line 2411
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "out deleteCertificateProfileUsingAdminId"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 2397
    :cond_6d
    const/4 v4, 0x3

    :try_start_6e
    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "adminUid"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "uid"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "csr"

    aput-object v5, v2, v4

    .line 2399
    .restart local v2    # "sColumns":[Ljava/lang/String;
    const/4 v4, 0x3

    new-array v3, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2401
    .restart local v3    # "sValues":[Ljava/lang/String;
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_a1} :catch_a2

    goto :goto_60

    .line 2404
    .end local v2    # "sColumns":[Ljava/lang/String;
    .end local v3    # "sValues":[Ljava/lang/String;
    :catch_a2
    move-exception v0

    .line 2405
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 2406
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_60

    .line 2407
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "deleteCertificateProfileUsingAdminId - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_60
.end method

.method private deleteCertificateUsingAdminId(IILjava/lang/String;)Z
    .registers 22
    .param p1, "adminUid"    # I
    .param p2, "userId"    # I
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 2307
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_c

    .line 2308
    sget-object v13, TAG:Ljava/lang/String;

    const-string/jumbo v14, "in deleteCertificateUsingAdminId"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v13, v0, mIsTimaVersion30:Z

    if-nez v13, :cond_20

    .line 2311
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_1e

    .line 2312
    sget-object v13, TAG:Ljava/lang/String;

    const-string/jumbo v14, "deleteCertificateUsingAdminId - TIMA version does not include CCM"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_1e
    const/4 v13, 0x0

    .line 2362
    :goto_1f
    return v13

    .line 2318
    :cond_20
    const-wide/16 v14, 0x0

    :try_start_22
    invoke-static/range {p1 .. p3}, ccm_delete_certificate(IILjava/lang/String;)J

    move-result-wide v16

    cmp-long v13, v14, v16

    if-eqz v13, :cond_38

    .line 2320
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_36

    .line 2321
    sget-object v13, TAG:Ljava/lang/String;

    const-string/jumbo v14, "deleteCertificateUsingAdminId - native ccm_delete_certificate failed"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    :cond_36
    const/4 v13, 0x0

    goto :goto_1f

    .line 2327
    :cond_38
    const/4 v3, 0x0

    .line 2328
    .local v3, "callerUid":I
    const/4 v13, 0x4

    new-array v9, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "adminUid"

    aput-object v14, v9, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "uid"

    aput-object v14, v9, v13

    const/4 v13, 0x2

    const-string v14, "alias"

    aput-object v14, v9, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "csr"

    aput-object v14, v9, v13

    .line 2331
    .local v9, "sIdColumns":[Ljava/lang/String;
    const/4 v13, 0x4

    new-array v11, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x1

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    const/4 v13, 0x2

    aput-object p3, v11, v13

    const/4 v13, 0x3

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v11, v13

    .line 2333
    .local v11, "sIdValues":[Ljava/lang/String;
    const/4 v13, 0x1

    new-array v10, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "installerId"

    aput-object v14, v10, v13

    .line 2335
    .local v10, "sIdReturnColumns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "CCMCertTable"

    invoke-virtual {v13, v14, v9, v11, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2338
    .local v5, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v5, :cond_9b

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_9b

    .line 2339
    const/4 v13, 0x0

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/ContentValues;

    const-string/jumbo v14, "installerId"

    invoke-virtual {v13, v14}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2344
    :cond_9b
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 2345
    .local v2, "adminId":Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    .line 2346
    .local v4, "contId":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 2347
    .local v7, "installerId":Ljava/lang/String;
    const/4 v13, 0x5

    new-array v8, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "adminUid"

    aput-object v14, v8, v13

    const/4 v13, 0x1

    const-string/jumbo v14, "uid"

    aput-object v14, v8, v13

    const/4 v13, 0x2

    const-string v14, "alias"

    aput-object v14, v8, v13

    const/4 v13, 0x3

    const-string/jumbo v14, "installerId"

    aput-object v14, v8, v13

    const/4 v13, 0x4

    const-string/jumbo v14, "csr"

    aput-object v14, v8, v13

    .line 2350
    .local v8, "sColumns":[Ljava/lang/String;
    const/4 v13, 0x5

    new-array v12, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v2, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    const/4 v13, 0x2

    aput-object p3, v12, v13

    const/4 v13, 0x3

    aput-object v7, v12, v13

    const/4 v13, 0x4

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    .line 2353
    .local v12, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "CCMCertTable"

    invoke-virtual {v13, v14, v8, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_e6
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_e6} :catch_e9

    .line 2355
    const/4 v13, 0x1

    goto/16 :goto_1f

    .line 2356
    .end local v2    # "adminId":Ljava/lang/String;
    .end local v3    # "callerUid":I
    .end local v4    # "contId":Ljava/lang/String;
    .end local v5    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v7    # "installerId":Ljava/lang/String;
    .end local v8    # "sColumns":[Ljava/lang/String;
    .end local v9    # "sIdColumns":[Ljava/lang/String;
    .end local v10    # "sIdReturnColumns":[Ljava/lang/String;
    .end local v11    # "sIdValues":[Ljava/lang/String;
    .end local v12    # "sValues":[Ljava/lang/String;
    :catch_e9
    move-exception v6

    .line 2357
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v13, DBG:Z

    if-eqz v13, :cond_10b

    .line 2358
    sget-object v13, TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "deleteCertificateUsingAdminId - Exception"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2362
    :cond_10b
    const/4 v13, 0x0

    goto/16 :goto_1f
.end method

.method private deleteDefaultCCMProfile(J)V
    .registers 14
    .param p1, "slotId"    # J

    .prologue
    .line 1143
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_1d

    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteDefaultCCMProfile : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    :cond_1d
    const-wide v8, 0xffffffffL

    cmp-long v7, p1, v8

    if-nez v7, :cond_32

    .line 1145
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_31

    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "INVALID_SLOT_ID"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
    :cond_31
    return-void

    .line 1148
    :cond_32
    const-string v0, "1000"

    .line 1149
    .local v0, "adminUid":Ljava/lang/String;
    const-string v1, "0"

    .line 1151
    .local v1, "containerId":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    sget-object v7, defaultPackageList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_31

    .line 1153
    :try_start_3f
    sget-object v7, defaultPackageList:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1154
    .local v4, "packageName":Ljava/lang/String;
    const/4 v7, 0x4

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "adminUid"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "uid"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "slotId"

    aput-object v8, v5, v7

    const/4 v7, 0x3

    const-string/jumbo v8, "pkgName"

    aput-object v8, v5, v7

    .line 1156
    .local v5, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x4

    new-array v6, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    const/4 v7, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object v4, v6, v7

    .line 1159
    .local v6, "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "ClientCertificateManagerTable"

    invoke-virtual {v7, v8, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_7b} :catch_7e

    .line 1151
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "sColumns":[Ljava/lang/String;
    .end local v6    # "sValues":[Ljava/lang/String;
    :cond_7b
    :goto_7b
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 1161
    :catch_7e
    move-exception v2

    .line 1162
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_7b

    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "deleteDefaultCCMProfile - Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7b
.end method

.method private doesCCMSupportKeyAlgorithm([B[B)Z
    .registers 10
    .param p1, "certBytes"    # [B
    .param p2, "pKeyBytes"    # [B

    .prologue
    const/4 v5, 0x1

    .line 1467
    if-eqz p1, :cond_1a

    .line 1468
    invoke-direct {p0, p1}, getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 1469
    .local v1, "cert":Ljava/security/cert/Certificate;
    if-eqz v1, :cond_1a

    .line 1470
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 1471
    .local v4, "pk":Ljava/security/PublicKey;
    if-eqz v4, :cond_1a

    .line 1472
    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 1473
    .local v0, "alg":Ljava/lang/String;
    const-string v5, "RSA"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 1493
    .end local v0    # "alg":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    .end local v4    # "pk":Ljava/security/PublicKey;
    :cond_19
    :goto_19
    return v5

    .line 1481
    :cond_1a
    if-eqz p2, :cond_19

    .line 1484
    :try_start_1c
    const-string v6, "RSA"

    invoke-static {v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v3

    .line 1485
    .local v3, "keyFactory":Ljava/security/KeyFactory;
    new-instance v6, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v6, p2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v3, v6}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_2c

    move-result-object v4

    .line 1486
    .local v4, "pk":Ljava/security/PrivateKey;
    goto :goto_19

    .line 1487
    .end local v3    # "keyFactory":Ljava/security/KeyFactory;
    .end local v4    # "pk":Ljava/security/PrivateKey;
    :catch_2c
    move-exception v2

    .line 1488
    .local v2, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    goto :goto_19
.end method

.method private enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 5
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 328
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v2, 0x64

    if-ge v1, v2, :cond_25

    .line 330
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v1}, getProfileOwnerUid(I)I

    move-result v0

    .line 332
    .local v0, "profileOwnerUid":I
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-ne v1, v0, :cond_25

    .line 333
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_1b

    .line 334
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "ClientCertificateManager.enforceAdminPermission() call comes from the profile owner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_1b
    new-instance v1, Landroid/app/enterprise/ContextInfo;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v0, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 344
    .end local v0    # "profileOwnerUid":I
    :goto_24
    return-object v1

    .line 340
    :cond_25
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    if-eqz v1, :cond_33

    .line 341
    iget-object v1, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v2, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v1, p1, v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    :cond_33
    move-object v1, p1

    .line 344
    goto :goto_24
.end method

.method private enforcePermission(Landroid/app/enterprise/ContextInfo;)V
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_d

    .line 323
    :cond_c
    :goto_c
    return-void

    .line 315
    :cond_d
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v0}, getProfileOwnerUid(I)I

    move-result v0

    if-gtz v0, :cond_c

    .line 319
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 320
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_CCM"

    invoke-virtual {v0, p1, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    goto :goto_c
.end method

.method private existDefaultProfile(J)Z
    .registers 16
    .param p1, "slotId"    # J

    .prologue
    .line 1115
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_1d

    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "existDefaultProfile : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :cond_1d
    const/4 v3, 0x0

    .line 1117
    .local v3, "exist":Z
    const-string v1, "1000"

    .line 1118
    .local v1, "defaultAdminUid":Ljava/lang/String;
    const-string v2, "0"

    .line 1119
    .local v2, "defaultContainerId":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "pkgName"

    aput-object v11, v7, v10

    .line 1121
    .local v7, "sIdColumns_default":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "slotId"

    aput-object v11, v8, v10

    .line 1122
    .local v8, "sReturnColumns":[Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_40
    sget-object v10, defaultPackageList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_83

    .line 1123
    sget-object v10, defaultPackageList:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1124
    .local v6, "packageName":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v1, v9, v10

    const/4 v10, 0x1

    aput-object v2, v9, v10

    const/4 v10, 0x2

    aput-object v6, v9, v10

    .line 1127
    .local v9, "sValues":[Ljava/lang/String;
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v7, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1131
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_84

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_84

    .line 1132
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "slotId"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 1133
    .local v4, "existSlotId":I
    int-to-long v10, v4

    cmp-long v10, v10, p1

    if-nez v10, :cond_84

    .line 1134
    const/4 v3, 0x1

    .line 1139
    .end local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "existSlotId":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v9    # "sValues":[Ljava/lang/String;
    :cond_83
    return v3

    .line 1122
    .restart local v0    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v6    # "packageName":Ljava/lang/String;
    .restart local v9    # "sValues":[Ljava/lang/String;
    :cond_84
    add-int/lit8 v5, v5, 0x1

    goto :goto_40
.end method

.method private fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 3974
    if-eqz p1, :cond_39

    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_39

    .line 3975
    new-instance v0, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/app/enterprise/ContextInfo;-><init>(II)V

    .line 3976
    .local v0, "newCInfo":Landroid/app/enterprise/ContextInfo;
    move-object p1, v0

    .line 3977
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_39

    .line 3978
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "fixContextInfoForMP() returning "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3981
    .end local v0    # "newCInfo":Landroid/app/enterprise/ContextInfo;
    :cond_39
    return-object p1
.end method

.method private getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I
    .registers 28
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 3866
    .local p3, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, -0x1

    .line 3867
    .local v5, "adminId":I
    const/4 v7, 0x0

    .line 3869
    .local v7, "caller":Ljava/lang/String;
    const/16 v21, 0x2

    :try_start_4
    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "uid"

    aput-object v22, v17, v21

    const/16 v21, 0x1

    const-string/jumbo v22, "pkgName"

    aput-object v22, v17, v21

    .line 3871
    .local v17, "sColumns":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    const-string v22, "adminUid"

    aput-object v22, v18, v21

    .line 3872
    .local v18, "sReturnColumns":[Ljava/lang/String;
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    .line 3873
    .local v20, "userIdString":Ljava/lang/String;
    const/4 v13, 0x0

    .line 3875
    .local v13, "pkgNames":[Ljava/lang/String;
    if-eqz p3, :cond_33

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-eqz v21, :cond_11e

    .line 3876
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 3882
    :goto_45
    if-eqz v13, :cond_90

    .line 3883
    move-object v6, v13

    .local v6, "arr$":[Ljava/lang/String;
    array-length v11, v6

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_4a
    if-ge v10, v11, :cond_90

    aget-object v12, v6, v10

    .line 3884
    .local v12, "pkgName":Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    aput-object v20, v19, v21

    const/16 v21, 0x1

    aput-object v12, v19, v21

    .line 3886
    .local v19, "sValues":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "ClientCertificateManagerTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3889
    .local v8, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_134

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_134

    .line 3890
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string v22, "adminUid"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3899
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    :cond_90
    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v0, v5, :cond_11d

    .line 3900
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v14, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "uid"

    aput-object v22, v14, v21

    const/16 v21, 0x1

    const-string v22, "allowAllPkgs"

    aput-object v22, v14, v21

    .line 3902
    .local v14, "sAllColumns":[Ljava/lang/String;
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v16, v21

    const/16 v21, 0x1

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v16, v21

    .line 3905
    .local v16, "sAllValues":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string v22, "adminUid"

    aput-object v22, v15, v21

    .line 3906
    .local v15, "sAllReturnColumns":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 3908
    .restart local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "ClientCertificateManagerTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v14, v2, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    .line 3912
    if-eqz v8, :cond_fe

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_fe

    .line 3913
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string v22, "adminUid"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3917
    :cond_fe
    sget-boolean v21, DBG:Z

    if-eqz v21, :cond_11d

    .line 3918
    sget-object v21, TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getAdminIdForCaller - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3927
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v13    # "pkgNames":[Ljava/lang/String;
    .end local v14    # "sAllColumns":[Ljava/lang/String;
    .end local v15    # "sAllReturnColumns":[Ljava/lang/String;
    .end local v16    # "sAllValues":[Ljava/lang/String;
    .end local v17    # "sColumns":[Ljava/lang/String;
    .end local v18    # "sReturnColumns":[Ljava/lang/String;
    .end local v20    # "userIdString":Ljava/lang/String;
    :cond_11d
    :goto_11d
    return v5

    .line 3879
    .restart local v13    # "pkgNames":[Ljava/lang/String;
    .restart local v17    # "sColumns":[Ljava/lang/String;
    .restart local v18    # "sReturnColumns":[Ljava/lang/String;
    .restart local v20    # "userIdString":Ljava/lang/String;
    :cond_11e
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "pkgNames":[Ljava/lang/String;
    check-cast v13, [Ljava/lang/String;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_132} :catch_138

    .restart local v13    # "pkgNames":[Ljava/lang/String;
    goto/16 :goto_45

    .line 3883
    .restart local v6    # "arr$":[Ljava/lang/String;
    .restart local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v10    # "i$":I
    .restart local v11    # "len$":I
    .restart local v12    # "pkgName":Ljava/lang/String;
    .restart local v19    # "sValues":[Ljava/lang/String;
    :cond_134
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4a

    .line 3922
    .end local v6    # "arr$":[Ljava/lang/String;
    .end local v8    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v10    # "i$":I
    .end local v11    # "len$":I
    .end local v12    # "pkgName":Ljava/lang/String;
    .end local v13    # "pkgNames":[Ljava/lang/String;
    .end local v17    # "sColumns":[Ljava/lang/String;
    .end local v18    # "sReturnColumns":[Ljava/lang/String;
    .end local v19    # "sValues":[Ljava/lang/String;
    .end local v20    # "userIdString":Ljava/lang/String;
    :catch_138
    move-exception v9

    .line 3923
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v21, DBG:Z

    if-eqz v21, :cond_11d

    .line 3924
    sget-object v21, TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getAdminIdForCaller - Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11d
.end method

.method private getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I
    .registers 5
    .param p1, "cInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 531
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1e

    .line 532
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClientCertificateManager.getCallingOrCurrentUserId() cInfo.mContainerId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :cond_1e
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_27

    .line 535
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    .line 537
    :goto_26
    return v0

    :cond_27
    invoke-static {p1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    goto :goto_26
.end method

.method private getCertificateFromBytes([B)Ljava/security/cert/Certificate;
    .registers 8
    .param p1, "certBytes"    # [B

    .prologue
    .line 1392
    const/4 v0, 0x0

    .line 1394
    .local v0, "cert":Ljava/security/cert/Certificate;
    :try_start_1
    const-string v3, "X.509"

    invoke-static {v3}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 1395
    .local v1, "certFactory":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_f
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    .line 1399
    .end local v1    # "certFactory":Ljava/security/cert/CertificateFactory;
    :goto_10
    return-object v0

    .line 1396
    :catch_11
    move-exception v2

    .line 1397
    .local v2, "e":Ljava/security/cert/CertificateException;
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getCertificateFromBytes(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10
.end method

.method private getDefaultPackageList()Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 915
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "getDefaultPackageList"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 920
    .local v5, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x3e8

    .line 921
    .local v0, "adminUid":I
    const/4 v1, 0x0

    .line 923
    .local v1, "containerId":I
    const/4 v10, 0x2

    :try_start_11
    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v7, v10

    .line 925
    .local v7, "sColumns":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v9, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 928
    .local v9, "sValues":[Ljava/lang/String;
    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string/jumbo v11, "pkgName"

    aput-object v11, v8, v10

    .line 930
    .local v8, "sReturnColumns":[Ljava/lang/String;
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v7, v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 933
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_ab

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_ab

    .line 934
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_69

    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "cvList size : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :cond_69
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6a
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_ab

    .line 936
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 937
    .local v6, "packageName":Ljava/lang/String;
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_9b

    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "packageName in DB : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    :cond_9b
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_9e} :catch_a1

    .line 935
    add-int/lit8 v4, v4, 0x1

    goto :goto_6a

    .line 941
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v4    # "i":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "sColumns":[Ljava/lang/String;
    .end local v8    # "sReturnColumns":[Ljava/lang/String;
    .end local v9    # "sValues":[Ljava/lang/String;
    :catch_a1
    move-exception v3

    .line 942
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, TAG:Ljava/lang/String;

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_ab
    return-object v5
.end method

.method private getDeleteSlotList(II)J
    .registers 15
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1071
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_2a

    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDeleteSlotList, adminUid : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", containerId"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_2a
    const-wide v4, 0xffffffffL

    .line 1074
    .local v4, "slotId":J
    new-array v1, v11, [Ljava/lang/String;

    const-string v6, "adminUid"

    aput-object v6, v1, v9

    const-string/jumbo v6, "uid"

    aput-object v6, v1, v10

    .line 1076
    .local v1, "sIdColumns":[Ljava/lang/String;
    new-array v3, v11, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v9

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v10

    .line 1079
    .local v3, "sIdValues":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v6, "slotId"

    aput-object v6, v2, v9

    .line 1080
    .local v2, "sIdReturnColumns":[Ljava/lang/String;
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "ClientCertificateManagerTable"

    invoke-virtual {v6, v7, v1, v3, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1084
    .local v0, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_ab

    .line 1085
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "cvList size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1086
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ContentValues;

    const-string/jumbo v7, "slotId"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    int-to-long v4, v6

    .line 1087
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_ab

    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getDeleteSlotList slotId : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_ab
    return-wide v4
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 302
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 305
    :cond_11
    iget-object v0, p0, mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getErrorMessage(J)Ljava/lang/String;
    .registers 4
    .param p1, "errorCode"    # J

    .prologue
    .line 3860
    invoke-static {p1, p2}, ccm_get_error_message(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFormattedPrivateKey(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)[B
    .registers 25
    .param p1, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateKey;
    .param p2, "rsaPublicKey"    # Ljava/security/interfaces/RSAPublicKey;

    .prologue
    .line 1405
    const-wide/16 v6, 0x122

    .line 1406
    .local v6, "CKA_PUBLIC_EXPONENT":J
    const-wide/16 v4, 0x123

    .line 1407
    .local v4, "CKA_PRIVATE_EXPONENT":J
    const-wide/16 v2, 0x120

    .line 1409
    .local v2, "CKA_MODULUS":J
    const/4 v8, 0x3

    .line 1410
    .local v8, "NO_OF_TYPES":I
    const/4 v9, 0x4

    .line 1411
    .local v9, "TYPE_SIZE_IN_BYTES":I
    const/4 v10, 0x4

    .line 1412
    .local v10, "VALUE_LEN_SIZE_IN_BYTES":I
    const/4 v13, 0x0

    .line 1414
    .local v13, "output":[B
    if-eqz p1, :cond_e

    if-nez p2, :cond_10

    :cond_e
    move-object v14, v13

    .line 1446
    .end local v13    # "output":[B
    .local v14, "output":[B
    :goto_f
    return-object v14

    .line 1419
    .end local v14    # "output":[B
    .restart local v13    # "output":[B
    :cond_10
    :try_start_10
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, trimByteArray([B)[B

    move-result-object v12

    .line 1420
    .local v12, "mod":[B
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, trimByteArray([B)[B

    move-result-object v17

    .line 1421
    .local v17, "pExp":[B
    invoke-interface/range {p2 .. p2}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, trimByteArray([B)[B

    move-result-object v18

    .line 1423
    .local v18, "pubExp":[B
    array-length v0, v12

    move/from16 v19, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int/lit8 v16, v19, 0x18

    .line 1424
    .local v16, "outputLength":I
    sget-boolean v19, DBG:Z

    if-eqz v19, :cond_73

    sget-object v19, TAG:Ljava/lang/String;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Output Length = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    :cond_73
    invoke-static/range {v16 .. v16}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v15

    .line 1427
    .local v15, "outputBuffer":Ljava/nio/ByteBuffer;
    sget-object v19, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1429
    const/16 v19, 0x120

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1430
    array-length v0, v12

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1431
    invoke-virtual {v15, v12}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1433
    const/16 v19, 0x122

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1434
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1435
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1437
    const/16 v19, 0x123

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1438
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1439
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 1441
    invoke-virtual {v15}, Ljava/nio/ByteBuffer;->array()[B
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_bf} :catch_c3

    move-result-object v13

    .end local v12    # "mod":[B
    .end local v15    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v16    # "outputLength":I
    .end local v17    # "pExp":[B
    .end local v18    # "pubExp":[B
    :goto_c0
    move-object v14, v13

    .line 1446
    .end local v13    # "output":[B
    .restart local v14    # "output":[B
    goto/16 :goto_f

    .line 1442
    .end local v14    # "output":[B
    .restart local v13    # "output":[B
    :catch_c3
    move-exception v11

    .line 1443
    .local v11, "e":Ljava/lang/Exception;
    sget-object v19, TAG:Ljava/lang/String;

    const-string v20, "Unable to format private key for ccm"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1444
    const/4 v13, 0x0

    goto :goto_c0
.end method

.method private getMUMContainerOwnerUid(I)I
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 522
    const/16 v0, 0x64

    if-ge p1, v0, :cond_9

    .line 523
    invoke-direct {p0, p1}, getProfileOwnerUid(I)I

    move-result v0

    .line 525
    :goto_8
    return v0

    :cond_9
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v0

    goto :goto_8
.end method

.method private getPackageUid(ILjava/lang/String;)I
    .registers 11
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 3350
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_d

    .line 3351
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getPackageUid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3353
    :cond_d
    const/4 v4, -0x1

    .line 3354
    .local v4, "uid":I
    invoke-direct {p0, p2}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3356
    if-nez p2, :cond_21

    .line 3357
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_20

    .line 3358
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getPackageUid - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3392
    :cond_20
    :goto_20
    return v5

    .line 3362
    :cond_21
    iget-object v6, p0, mContext:Landroid/content/Context;

    if-nez v6, :cond_2e

    .line 3363
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getPackageUid -  Invalid Context "

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 3367
    :cond_2e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3370
    .local v2, "token":J
    :try_start_32
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v0

    .line 3375
    .local v0, "appId":I
    invoke-static {p1, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 3377
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_75

    .line 3378
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPackageUid - User Id: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_75
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_32 .. :try_end_75} :catch_7a
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_75} :catch_a3
    .catchall {:try_start_32 .. :try_end_75} :catchall_ab

    .line 3389
    :cond_75
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v0    # "appId":I
    :goto_78
    move v5, v4

    .line 3392
    goto :goto_20

    .line 3382
    :catch_7a
    move-exception v1

    .line 3383
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_7b
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_9c

    .line 3384
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getPackageUid - Exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3385
    :cond_9c
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_9f
    .catchall {:try_start_7b .. :try_end_9f} :catchall_ab

    .line 3389
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_78

    .line 3386
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_a3
    move-exception v1

    .line 3387
    .local v1, "e":Ljava/lang/Exception;
    :try_start_a4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_a7
    .catchall {:try_start_a4 .. :try_end_a7} :catchall_ab

    .line 3389
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_78

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_ab
    move-exception v5

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;
    .registers 6
    .param p1, "pKeyBytes"    # [B

    .prologue
    .line 1378
    const/4 v2, 0x0

    .line 1380
    .local v2, "pKey":Ljava/security/PrivateKey;
    :try_start_1
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 1381
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, p1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_f} :catch_18

    move-result-object v2

    .line 1387
    return-object v2

    .line 1382
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :catch_11
    move-exception v0

    .line 1383
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 1384
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_18
    move-exception v0

    .line 1385
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method

.method private getProfileOwnerUid(I)I
    .registers 11
    .param p1, "userId"    # I

    .prologue
    .line 1172
    const/4 v0, -0x1

    .line 1174
    .local v0, "adminId":I
    :try_start_1
    const-string/jumbo v6, "device_policy"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v4

    .line 1177
    .local v4, "dpmService":Landroid/app/admin/IDevicePolicyManager;
    if-eqz v4, :cond_4b

    .line 1178
    if-eqz p1, :cond_5f

    .line 1180
    const/4 v2, 0x0

    .line 1181
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-interface {v4, p1}, Landroid/app/admin/IDevicePolicyManager;->getProfileOwner(I)Landroid/content/ComponentName;

    move-result-object v2

    .line 1182
    if-eqz v2, :cond_4c

    .line 1184
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, getPackageUid(ILjava/lang/String;)I

    move-result v1

    .line 1185
    .local v1, "compId":I
    move v0, v1

    .line 1186
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getProfileOwnerUid() componentName "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    .end local v1    # "compId":I
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_4b
    :goto_4b
    return v0

    .line 1190
    .restart local v2    # "componentName":Landroid/content/ComponentName;
    .restart local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_4c
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getProfileOwnerUid() componentName is null"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_54} :catch_55

    goto :goto_4b

    .line 1202
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :catch_55
    move-exception v5

    .line 1203
    .local v5, "er":Landroid/os/RemoteException;
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getProfileOwnerUid"

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b

    .line 1194
    .end local v5    # "er":Landroid/os/RemoteException;
    .restart local v4    # "dpmService":Landroid/app/admin/IDevicePolicyManager;
    :cond_5f
    :try_start_5f
    invoke-interface {v4}, Landroid/app/admin/IDevicePolicyManager;->getDeviceOwner()Ljava/lang/String;

    move-result-object v3

    .line 1195
    .local v3, "deviceOwnerPackage":Ljava/lang/String;
    if-eqz v3, :cond_4b

    .line 1196
    invoke-direct {p0, p1, v3}, getPackageUid(ILjava/lang/String;)I
    :try_end_68
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_68} :catch_55

    move-result v1

    .line 1197
    .restart local v1    # "compId":I
    move v0, v1

    goto :goto_4b
.end method

.method private getSlotCount()I
    .registers 6

    .prologue
    .line 3776
    const/4 v1, 0x0

    .line 3780
    .local v1, "slotCount":I
    :try_start_1
    iget-object v2, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ClientCertificateManagerTable"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_9} :catch_b

    move-result v1

    .line 3786
    :goto_a
    return v1

    .line 3782
    :catch_b
    move-exception v0

    .line 3783
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method private getValidString(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 3409
    if-nez p1, :cond_4

    .line 3414
    :cond_3
    :goto_3
    return-object v1

    .line 3409
    :cond_4
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p1

    goto :goto_3

    .line 3411
    :catch_10
    move-exception v0

    .line 3412
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private getWrappedPin([B)[B
    .registers 7
    .param p1, "hashedPin"    # [B

    .prologue
    .line 3458
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_c

    .line 3459
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "getWrappedPin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    :cond_c
    const/4 v1, 0x0

    .line 3463
    .local v1, "wrappedPin":[B
    :try_start_d
    iget-object v3, p0, mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3}, Landroid/service/tima/ITimaService;->loadTui()I

    move-result v3

    if-gez v3, :cond_17

    move-object v2, v1

    .line 3472
    .end local v1    # "wrappedPin":[B
    .local v2, "wrappedPin":[B
    :goto_16
    return-object v2

    .line 3466
    .end local v2    # "wrappedPin":[B
    .restart local v1    # "wrappedPin":[B
    :cond_17
    iget-object v3, p0, mTimaService:Landroid/service/tima/ITimaService;

    const-string/jumbo v4, "tz_ccm"

    invoke-interface {v3, v4, p1}, Landroid/service/tima/ITimaService;->tuiDecryptPinHash(Ljava/lang/String;[B)[B
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1f} :catch_22

    move-result-object v1

    :goto_20
    move-object v2, v1

    .line 3472
    .end local v1    # "wrappedPin":[B
    .restart local v2    # "wrappedPin":[B
    goto :goto_16

    .line 3468
    .end local v2    # "wrappedPin":[B
    .restart local v1    # "wrappedPin":[B
    :catch_22
    move-exception v0

    .line 3469
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "getWrappedPin - tuiDecryptPinHash failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    sget-object v3, TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method

.method static native get_ccm_version()Ljava/lang/String;
.end method

.method static native get_default_cert_alias()Ljava/lang/String;
.end method

.method private handleCCMBuildUpdate()V
    .registers 6

    .prologue
    .line 229
    :try_start_0
    const-string/jumbo v3, "ro.build.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "currentBuild":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.ccm.date"

    const-string v4, "NONE"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "oldBuild":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2e

    .line 236
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_25

    .line 237
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "handleCCMBuildUpdate - updated"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_25
    const-string/jumbo v3, "persist.sys.ccm.date"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    invoke-direct {p0}, addExemptList()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2f

    .line 244
    .end local v0    # "currentBuild":Ljava/lang/String;
    .end local v2    # "oldBuild":Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-void

    .line 241
    :catch_2f
    move-exception v1

    .line 242
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2e
.end method

.method private initParams()V
    .registers 4

    .prologue
    .line 4195
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_b

    .line 4196
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "TIMA3: in initParams"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4198
    :cond_b
    iget-boolean v0, p0, mIsTimaVersion30:Z

    if-nez v0, :cond_1c

    .line 4199
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1b

    .line 4200
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "initParams - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4206
    :cond_1b
    :goto_1b
    return-void

    .line 4204
    :cond_1c
    const/16 v0, 0x3f2

    const/16 v1, 0x3e8

    const v2, 0x186a0

    invoke-static {v0, v1, v2}, init_params(III)J

    goto :goto_1b
.end method

.method static native init_params(III)J
.end method

.method private insertOrUpdateCCMProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;
    .param p3, "slotId"    # J

    .prologue
    .line 1918
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_c

    .line 1919
    sget-object v12, TAG:Ljava/lang/String;

    const-string/jumbo v13, "in insertOrUpdateCCMProfileInternal"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    :cond_c
    if-nez p1, :cond_1c

    .line 1921
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_1a

    sget-object v12, TAG:Ljava/lang/String;

    const-string/jumbo v13, "cxtInfo is null"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    :cond_1a
    const/4 v8, 0x0

    .line 2020
    :cond_1b
    :goto_1b
    return v8

    .line 1925
    :cond_1c
    const/4 v8, 0x1

    .line 1926
    .local v8, "ret":Z
    invoke-direct/range {p0 .. p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 1928
    .local v11, "userId":I
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_67

    .line 1929
    sget-object v12, TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "AdminId - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ContainerId -  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget v14, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " UserId - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " whiteListAllPackages - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-boolean v14, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1934
    :cond_67
    const/4 v12, 0x2

    new-array v9, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    const-string v13, "adminUid"

    aput-object v13, v9, v12

    const/4 v12, 0x1

    const-string/jumbo v13, "uid"

    aput-object v13, v9, v12

    .line 1935
    .local v9, "sColumns":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v12, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1936
    .local v1, "adminId":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1937
    .local v2, "contId":Ljava/lang/String;
    const/4 v12, 0x2

    new-array v10, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v1, v10, v12

    const/4 v12, 0x1

    aput-object v2, v10, v12

    .line 1939
    .local v10, "sValues":[Ljava/lang/String;
    iget-object v12, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1944
    :try_start_91
    move-object/from16 v0, p2

    iget-boolean v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    if-eqz v12, :cond_173

    .line 1946
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1947
    .local v3, "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1948
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1949
    const-string v12, "accessType"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    sget-object v12, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v12, v13, :cond_15b

    .line 1952
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    if-eqz v12, :cond_ee

    .line 1953
    const-string/jumbo v12, "loginRetry"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1955
    const-string/jumbo v12, "loginExpiration"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1963
    :cond_ee
    :goto_ee
    const-string/jumbo v12, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1964
    const-string v12, "allowAllPkgs"

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1966
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 1967
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1968
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1970
    iget-object v12, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v8

    .line 1972
    const/4 v12, 0x1

    if-eq v12, v8, :cond_1b

    .line 1973
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_1b

    .line 1974
    sget-object v12, TAG:Ljava/lang/String;

    const-string/jumbo v13, "insertOrUpdateCCMProfileInternal whiteListAllPackages - DB operation failed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_135} :catch_137

    goto/16 :goto_1b

    .line 2014
    .end local v3    # "cv":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :catch_137
    move-exception v5

    .line 2015
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_1b

    .line 2016
    sget-object v12, TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "insertOrUpdateCCMProfileInternal - Exception "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1b

    .line 1959
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cv":Landroid/content/ContentValues;
    :cond_15b
    :try_start_15b
    const-string/jumbo v12, "loginRetry"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1960
    const-string/jumbo v12, "loginExpiration"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_ee

    .line 1979
    .end local v3    # "cv":Landroid/content/ContentValues;
    :cond_173
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_17b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1980
    .local v7, "pkg":Ljava/lang/String;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1981
    .restart local v3    # "cv":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1982
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1983
    const-string v12, "accessType"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v13}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1985
    sget-object v12, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v12, v13, :cond_22a

    .line 1986
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    if-eqz v12, :cond_1de

    .line 1987
    const-string/jumbo v12, "loginRetry"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1989
    const-string/jumbo v12, "loginExpiration"

    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v13, v13, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1996
    :cond_1de
    :goto_1de
    const-string/jumbo v12, "slotId"

    invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1997
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v3, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2000
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    const-string v12, "adminUid"

    move-object/from16 v0, p1

    iget v13, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2001
    const-string/jumbo v12, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v4, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2002
    const-string/jumbo v12, "pkgName"

    invoke-virtual {v4, v12, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    const/4 v12, 0x1

    iget-object v13, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "ClientCertificateManagerTable"

    invoke-virtual {v13, v14, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v13

    if-eq v12, v13, :cond_17b

    .line 2006
    sget-boolean v12, DBG:Z

    if-eqz v12, :cond_227

    .line 2007
    sget-object v12, TAG:Ljava/lang/String;

    const-string/jumbo v13, "insertOrUpdateCCMProfileInternal packages - DB operation failed"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2009
    :cond_227
    const/4 v8, 0x0

    .line 2010
    goto/16 :goto_1b

    .line 1993
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_22a
    const-string/jumbo v12, "loginRetry"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1994
    const-string/jumbo v12, "loginExpiration"

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_240
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_240} :catch_137

    goto :goto_1de
.end method

.method private insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z
    .registers 25
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "adminId"    # I
    .param p4, "userId"    # I
    .param p5, "isCSRRecord"    # Z

    .prologue
    .line 2168
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_c

    .line 2169
    sget-object v16, TAG:Ljava/lang/String;

    const-string/jumbo v17, "in insertOrUpdateCertificateProfileInternal"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2171
    :cond_c
    const/4 v13, 0x1

    .line 2172
    .local v13, "ret":Z
    const/4 v8, 0x0

    .line 2174
    .local v8, "keyStoreKeyChainInstall":Z
    if-eqz p1, :cond_12

    if-nez p2, :cond_21

    .line 2175
    :cond_12
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_1e

    .line 2176
    sget-object v16, TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertOrUpdateCertificateProfileInternal - Invalid Arguments"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2178
    :cond_1e
    const/16 v16, 0x0

    .line 2301
    :goto_20
    return v16

    .line 2181
    :cond_21
    sget-object v16, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "InstallerId - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ContainerId - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " allowAllPackages - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " AdminId - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " isCSRRecord - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    if-eqz p5, :cond_21a

    const/4 v3, 0x1

    .line 2188
    .local v3, "csrIntValue":I
    :goto_7c
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v14, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "adminUid"

    aput-object v17, v14, v16

    const/16 v16, 0x1

    const-string/jumbo v17, "uid"

    aput-object v17, v14, v16

    const/16 v16, 0x2

    const-string/jumbo v17, "installerId"

    aput-object v17, v14, v16

    const/16 v16, 0x3

    const-string v17, "alias"

    aput-object v17, v14, v16

    const/16 v16, 0x4

    const-string/jumbo v17, "csr"

    aput-object v17, v14, v16

    .line 2191
    .local v14, "sColumns":[Ljava/lang/String;
    const/16 v16, 0x5

    move/from16 v0, v16

    new-array v15, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    .line 2196
    .local v15, "sValues":[Ljava/lang/String;
    :try_start_d9
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v16, v0

    const-string v17, "CCMCertTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v14, v15}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_e8
    .catch Ljava/lang/Exception; {:try_start_d9 .. :try_end_e8} :catch_21d

    .line 2206
    :cond_e8
    :goto_e8
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    if-eqz v16, :cond_106

    const/16 v16, 0x1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v17, v0

    const-string/jumbo v18, "keystorekeychain"

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_106

    .line 2209
    const/4 v8, 0x1

    .line 2213
    :cond_106
    const/16 v16, 0x1

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_11c

    const/16 v16, 0x1

    move/from16 v0, v16

    move/from16 v1, p5

    if-ne v0, v1, :cond_265

    .line 2214
    :cond_11c
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2215
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2216
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2217
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2218
    const-string v16, "allowAllPkgs"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2219
    const-string v16, "allowWiFi"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2220
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2221
    const-string/jumbo v16, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2222
    const-string v16, "allowRawSigning"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2223
    if-eqz v8, :cond_1b5

    .line 2224
    const-string/jumbo v16, "pkgName"

    const-string/jumbo v17, "keystorekeychain"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    :cond_1b5
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2229
    .local v5, "cvWhere":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2230
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2231
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2233
    const-string/jumbo v16, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2235
    :try_start_206
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v16, v0

    const-string v17, "CCMCertTable"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_206 .. :try_end_215} :catch_241

    move-result v13

    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    :cond_216
    :goto_216
    move/from16 v16, v13

    .line 2301
    goto/16 :goto_20

    .line 2187
    .end local v3    # "csrIntValue":I
    .end local v14    # "sColumns":[Ljava/lang/String;
    .end local v15    # "sValues":[Ljava/lang/String;
    :cond_21a
    const/4 v3, 0x0

    goto/16 :goto_7c

    .line 2198
    .restart local v3    # "csrIntValue":I
    .restart local v14    # "sColumns":[Ljava/lang/String;
    .restart local v15    # "sValues":[Ljava/lang/String;
    :catch_21d
    move-exception v6

    .line 2199
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_e8

    .line 2200
    sget-object v16, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "insertOrUpdateCertificateProfileInternal - Exception delete"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e8

    .line 2237
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v4    # "cv":Landroid/content/ContentValues;
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    :catch_241
    move-exception v6

    .line 2238
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 2239
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_216

    .line 2240
    sget-object v16, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "insertOrUpdateCertificateProfileInternal - Exception allowAllPackages"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_216

    .line 2246
    .end local v4    # "cv":Landroid/content/ContentValues;
    .end local v5    # "cvWhere":Landroid/content/ContentValues;
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_265
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    if-nez v16, :cond_284

    .line 2247
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_279

    .line 2248
    sget-object v16, TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertOrUpdateCertificateProfileInternal - Invalid Package list"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :cond_279
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    iput-object v0, v1, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 2254
    :cond_284
    :try_start_284
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v16

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 2257
    .local v12, "pkgNames":[Ljava/lang/String;
    move-object v2, v12

    .local v2, "arr$":[Ljava/lang/String;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_299
    if-ge v7, v9, :cond_2af

    aget-object v11, v2, v7

    .line 2258
    .local v11, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2a8
    .catch Ljava/lang/Exception; {:try_start_284 .. :try_end_2a8} :catch_2ab

    .line 2257
    add-int/lit8 v7, v7, 0x1

    goto :goto_299

    .line 2260
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v9    # "len$":I
    .end local v11    # "pkgName":Ljava/lang/String;
    .end local v12    # "pkgNames":[Ljava/lang/String;
    :catch_2ab
    move-exception v6

    .line 2261
    .restart local v6    # "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2264
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_2af
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_2b9
    :goto_2b9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_216

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 2265
    .local v10, "pkg":Ljava/lang/String;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2266
    .restart local v4    # "cv":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2267
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2268
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2269
    const-string/jumbo v16, "pkgName"

    move-object/from16 v0, v16

    invoke-virtual {v4, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2270
    const-string v16, "allowWiFi"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2271
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2272
    const-string v16, "allowRawSigning"

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2274
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 2275
    .restart local v5    # "cvWhere":Landroid/content/ContentValues;
    const-string v16, "adminUid"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2276
    const-string/jumbo v16, "uid"

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2277
    const-string v16, "alias"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    const-string/jumbo v16, "pkgName"

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    const-string/jumbo v16, "installerId"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2281
    const-string/jumbo v16, "csr"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2283
    const/16 v16, 0x1

    :try_start_391
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v17, v0

    const-string v18, "CCMCertTable"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_2b9

    .line 2285
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_3b3

    .line 2286
    sget-object v16, TAG:Ljava/lang/String;

    const-string/jumbo v17, "insertOrUpdateCertificateProfileInternal - DB operation failed"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b3
    .catch Ljava/lang/Exception; {:try_start_391 .. :try_end_3b3} :catch_3b6

    .line 2288
    :cond_3b3
    const/4 v13, 0x0

    goto/16 :goto_216

    .line 2291
    :catch_3b6
    move-exception v6

    .line 2292
    .restart local v6    # "e":Ljava/lang/Exception;
    const/4 v13, 0x0

    .line 2293
    sget-boolean v16, DBG:Z

    if-eqz v16, :cond_2b9

    .line 2294
    sget-object v16, TAG:Ljava/lang/String;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "insertOrUpdateCertificateProfileInternal - Exception"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2b9
.end method

.method private isCCMDefaultCertStore(I)Z
    .registers 13
    .param p1, "userId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 4343
    const/4 v5, 0x0

    .line 4344
    .local v5, "ret":Z
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_20

    .line 4345
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "in isCCMDefaultCertStore useId "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4351
    :cond_20
    const/4 v8, 0x1

    :try_start_21
    new-array v0, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "enabled"

    aput-object v9, v0, v8

    .line 4353
    .local v0, "columns":[Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4354
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v8, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4356
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "CCMDefaultPolicy"

    invoke-virtual {v8, v9, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 4359
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_5f

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_5f

    .line 4360
    const/4 v8, 0x0

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 4361
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz v1, :cond_5f

    .line 4362
    const-string/jumbo v8, "enabled"

    invoke-virtual {v1, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5b} :catch_7f

    move-result v8

    if-ne v8, v6, :cond_7d

    move v5, v6

    .line 4372
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_5f
    :goto_5f
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_7c

    .line 4373
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMDefaultCertStore returning - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4375
    :cond_7c
    return v5

    .restart local v0    # "columns":[Ljava/lang/String;
    .restart local v1    # "cv":Landroid/content/ContentValues;
    .restart local v2    # "cvWhere":Landroid/content/ContentValues;
    .restart local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :cond_7d
    move v5, v7

    .line 4362
    goto :goto_5f

    .line 4366
    .end local v0    # "columns":[Ljava/lang/String;
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    .end local v4    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    :catch_7f
    move-exception v3

    .line 4367
    .local v3, "ex":Ljava/lang/Exception;
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMDefaultCertStore() failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5f
.end method

.method private markUserAsCCMProvisioned(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 3576
    const-string/jumbo v2, "user"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3577
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    .line 3578
    .local v1, "mUms":Lcom/android/server/pm/UserManagerService;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/UserManagerService;->setUserCCMProvisioned(I)V

    .line 3579
    return-void
.end method

.method private provisionUser(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 3562
    invoke-direct {p0, p1}, setCCMProfileDefaultForContainer(I)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3563
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_11

    .line 3564
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Error making CCM default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3573
    :cond_11
    :goto_11
    return-void

    .line 3567
    :cond_12
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, setCCMAsDefaultCertStore(IZ)Z

    .line 3568
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_37

    .line 3569
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isCCMDefaultCertStore says: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, isCCMDefaultCertStore(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3572
    :cond_37
    invoke-direct {p0, p1}, markUserAsCCMProvisioned(I)V

    goto :goto_11
.end method

.method private registerPersonaObserver(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 3708
    iget-object v1, p0, mPersonaMgr:Landroid/os/PersonaManager;

    invoke-virtual {v1, p1}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 3709
    iget-object v1, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_25

    .line 3710
    new-instance v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;-><init>(Lcom/android/server/enterprise/ccm/ClientCertificateManager;Landroid/content/Context;II)V

    .line 3711
    .local v0, "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    iget-object v1, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3714
    .end local v0    # "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    :cond_25
    return-void
.end method

.method private resetDefaultCCMProfile(II)V
    .registers 10
    .param p1, "adminUid"    # I
    .param p2, "containerId"    # I

    .prologue
    .line 1094
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_c

    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "resetDefaultCCMProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_c
    invoke-direct {p0, p1, p2}, getDeleteSlotList(II)J

    move-result-wide v2

    .line 1096
    .local v2, "slotId":J
    const-wide v4, 0xffffffffL

    cmp-long v4, v2, v4

    if-nez v4, :cond_26

    .line 1097
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_25

    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "reset : INVALID_SLOT_ID"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1112
    :cond_25
    :goto_25
    return-void

    .line 1101
    :cond_26
    invoke-direct {p0, v2, v3}, existDefaultProfile(J)Z

    move-result v0

    .line 1102
    .local v0, "exist":Z
    if-nez v0, :cond_50

    .line 1103
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_25

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not related with default profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 1106
    :cond_50
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_73

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "slotId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is related with default profile"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    :cond_73
    invoke-direct {p0, v2, v3}, deleteDefaultCCMProfile(J)V

    .line 1110
    invoke-virtual {p0}, setDefaultCCMProfile()Z

    move-result v1

    .line 1111
    .local v1, "set":Z
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_25

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDefaultCCMProfile : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25
.end method

.method private setCCMAsDefaultCertStore(IZ)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "enable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 4384
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_1e

    .line 4385
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in setCCMAsDefaultCertStore userId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    :cond_1e
    :try_start_1e
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 4388
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p2, :cond_43

    .line 4389
    const-string/jumbo v3, "enabled"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4393
    :goto_30
    const-string/jumbo v3, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4394
    iget-object v3, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "CCMDefaultPolicy"

    invoke-virtual {v3, v4, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v2

    .line 4399
    .end local v0    # "cv":Landroid/content/ContentValues;
    :goto_42
    return v2

    .line 4391
    .restart local v0    # "cv":Landroid/content/ContentValues;
    :cond_43
    const-string/jumbo v3, "enabled"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_4e} :catch_4f

    goto :goto_30

    .line 4396
    .end local v0    # "cv":Landroid/content/ContentValues;
    :catch_4f
    move-exception v1

    .line 4397
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "setCCMAsDefaultCertStore() failed"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_42
.end method

.method private setCCMProfileDefaultForContainer(I)Z
    .registers 16
    .param p1, "containerId"    # I

    .prologue
    .line 1212
    const/4 v8, 0x1

    .line 1213
    .local v8, "ret":Z
    const-wide/16 v10, 0x0

    .line 1214
    .local v10, "slotId":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1215
    .local v1, "callerUID":I
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_24

    .line 1216
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "in setCCMProfileDefaultForContainer containerId "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1218
    :cond_24
    iget-boolean v9, p0, mIsTimaVersion30:Z

    if-nez v9, :cond_36

    .line 1219
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_34

    .line 1220
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v12, "setCCMProfileDefaultForContainer - TIMA version does not include CCM"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    :cond_34
    const/4 v8, 0x0

    .line 1304
    .end local v8    # "ret":Z
    :goto_35
    return v8

    .line 1226
    .restart local v8    # "ret":Z
    :cond_36
    new-instance v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 1227
    .local v4, "defaultCCMProfile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-object v9, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iput-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 1228
    const/4 v9, 0x1

    iput-boolean v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    .line 1231
    invoke-direct {p0, p1}, getMUMContainerOwnerUid(I)I

    move-result v7

    .line 1233
    .local v7, "mumContainerOwnerUid":I
    invoke-static {p1, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    .line 1235
    .local v0, "adminId":I
    iget-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v9

    const/4 v12, 0x0

    invoke-static {v1, p1, v9, v12}, ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v10

    .line 1238
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_7c

    .line 1239
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setCCMProfileDefaultForContainer - slot Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", Owner Admin Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_7c
    const-wide v12, 0xffffffffL

    cmp-long v9, v12, v10

    if-nez v9, :cond_93

    .line 1243
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_91

    .line 1244
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v12, "setCCMProfileDefaultForContainer - native create_slot failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    :cond_91
    const/4 v8, 0x0

    goto :goto_35

    .line 1251
    :cond_93
    :try_start_93
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1252
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1253
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1254
    const-string v9, "accessType"

    iget-object v12, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1256
    const-string/jumbo v9, "slotId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1257
    const-string v9, "allowAllPkgs"

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1259
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1260
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1261
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1263
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v12, "ClientCertificateManagerTable"

    invoke-virtual {v9, v12, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v9

    if-nez v9, :cond_10b

    .line 1265
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_f8

    .line 1266
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v12, "setCCMProfileDefaultForContainer - DB operation failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_f8
    invoke-static {v1, p1}, ccm_delete_slot(II)J

    .line 1269
    invoke-direct {p0, v1, p1}, resetDefaultCCMProfile(II)V
    :try_end_fe
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_fe} :catch_101

    .line 1270
    const/4 v8, 0x0

    goto/16 :goto_35

    .line 1273
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    :catch_101
    move-exception v5

    .line 1274
    .local v5, "e":Ljava/lang/Exception;
    invoke-static {v1, p1}, ccm_delete_slot(II)J

    .line 1275
    invoke-direct {p0, v1, p1}, resetDefaultCCMProfile(II)V

    .line 1276
    const/4 v8, 0x0

    goto/16 :goto_35

    .line 1278
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "cv":Landroid/content/ContentValues;
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    :cond_10b
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v9, v1, p1, v12, v13}, ccm_manage_exempt_list(ZIIIZ)J

    .line 1282
    const/4 v6, -0x1

    .line 1284
    .local v6, "emailUid":I
    const-string v9, "com.samsung.android.email.provider"

    invoke-direct {p0, p1, v9}, getPackageUid(ILjava/lang/String;)I

    move-result v6

    .line 1285
    const/4 v9, -0x1

    if-eq v6, v9, :cond_131

    .line 1286
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v1, p1, v6, v12}, ccm_manage_exempt_list(ZIIIZ)J

    .line 1298
    :cond_120
    :goto_120
    invoke-direct {p0}, getSlotCount()I

    move-result v9

    iput v9, p0, mSlotCount:I

    .line 1300
    invoke-direct {p0}, initParams()V

    .line 1302
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, p1, v9, v12, v13}, updateLockStatus(IZZZ)Z

    goto/16 :goto_35

    .line 1288
    :cond_131
    const-string v9, "com.samsung.android.email.sync"

    invoke-direct {p0, p1, v9}, getPackageUid(ILjava/lang/String;)I

    move-result v6

    .line 1289
    const/4 v9, -0x1

    if-eq v6, v9, :cond_140

    .line 1290
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v1, p1, v6, v12}, ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_120

    .line 1292
    :cond_140
    const-string v9, "com.android.exchange"

    invoke-direct {p0, p1, v9}, getPackageUid(ILjava/lang/String;)I

    move-result v6

    .line 1293
    const/4 v9, -0x1

    if-eq v6, v9, :cond_120

    .line 1294
    const/4 v9, 0x1

    const/4 v12, 0x0

    invoke-static {v9, v1, p1, v6, v12}, ccm_manage_exempt_list(ZIIIZ)J

    goto :goto_120
.end method

.method private setupIntentFilters()V
    .registers 4

    .prologue
    .line 3396
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_c

    .line 3397
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "in setupIntentFilters"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    :cond_c
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 3399
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3400
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3401
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3402
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3403
    const-string v1, "android.app.action.DEVICE_OWNER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3404
    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3405
    return-void
.end method

.method private trimByteArray([B)[B
    .registers 6
    .param p1, "inBytes"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1449
    if-nez p1, :cond_5

    .line 1450
    const/4 v0, 0x0

    .line 1458
    :goto_4
    return-object v0

    .line 1453
    :cond_5
    aget-byte v1, p1, v3

    if-nez v1, :cond_16

    .line 1454
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    new-array v0, v1, [B

    .line 1455
    .local v0, "outBytes":[B
    const/4 v1, 0x1

    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_4

    .end local v0    # "outBytes":[B
    :cond_16
    move-object v0, p1

    .line 1458
    goto :goto_4
.end method

.method private unloadTui()Z
    .registers 4

    .prologue
    .line 3430
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_c

    .line 3431
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "unloadTUI"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    :cond_c
    :try_start_c
    iget-object v1, p0, mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v1}, Landroid/service/tima/ITimaService;->unloadTui()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13

    .line 3439
    :goto_11
    const/4 v1, 0x1

    return v1

    .line 3436
    :catch_13
    move-exception v0

    .line 3437
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method private unregisterPersonaObserver(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 3717
    iget-object v1, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;

    .line 3719
    .local v0, "observer":Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;
    if-eqz v0, :cond_1a

    .line 3720
    invoke-virtual {v0}, Lcom/android/server/enterprise/ccm/ClientCertificateManager$PersonaObserver;->unregisterPersonaObserver()V

    .line 3721
    iget-object v1, p0, mPersonaObservers:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3723
    :cond_1a
    return-void
.end method

.method private updateLockStatus(IZZZ)Z
    .registers 16
    .param p1, "userId"    # I
    .param p2, "isContainerClbk"    # Z
    .param p3, "lock"    # Z
    .param p4, "regForDefCert"    # Z

    .prologue
    const/4 v8, 0x0

    .line 3794
    const/4 v2, 0x0

    .line 3795
    .local v2, "isLocked":Z
    const/4 v4, 0x0

    .line 3797
    .local v4, "rowCount":I
    iget-boolean v9, p0, mIsTimaVersion30:Z

    if-nez v9, :cond_14

    .line 3798
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_13

    .line 3799
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "updateLockStatus - TIMA version does not include CCM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3855
    :cond_13
    :goto_13
    return v8

    .line 3807
    :cond_14
    if-nez p4, :cond_1a

    .line 3808
    :try_start_16
    iget v9, p0, mSlotCount:I

    if-lez v9, :cond_13

    .line 3814
    :cond_1a
    if-eqz p2, :cond_22

    .line 3819
    const/4 v8, 0x0

    invoke-static {v8, p1, p3}, ccm_update_lock_status(IIZ)J

    .line 3855
    :cond_20
    :goto_20
    const/4 v8, 0x1

    goto :goto_13

    .line 3822
    :cond_22
    const/4 v7, 0x0

    .line 3823
    .local v7, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserManager;

    .line 3824
    .local v6, "userManager":Landroid/os/UserManager;
    if-eqz v6, :cond_35

    .line 3825
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v7

    .line 3829
    :cond_35
    iget-object v8, p0, mContext:Landroid/content/Context;

    const-string/jumbo v9, "keyguard"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    .line 3831
    .local v3, "km":Landroid/app/KeyguardManager;
    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    .line 3838
    if-eqz v7, :cond_7d

    .line 3840
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_4a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 3841
    .local v5, "user":Landroid/content/pm/UserInfo;
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "updateLockStatus, user.id "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3842
    const/4 v8, 0x0

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8, v9, v2}, ccm_update_lock_status(IIZ)J
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_77} :catch_78

    goto :goto_4a

    .line 3852
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "km":Landroid/app/KeyguardManager;
    .end local v5    # "user":Landroid/content/pm/UserInfo;
    .end local v6    # "userManager":Landroid/os/UserManager;
    .end local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :catch_78
    move-exception v0

    .line 3853
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20

    .line 3847
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v3    # "km":Landroid/app/KeyguardManager;
    .restart local v6    # "userManager":Landroid/os/UserManager;
    .restart local v7    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_7d
    :try_start_7d
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "updateLockStatus, users null, so falling back to just userId"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3848
    const/4 v8, 0x0

    invoke-static {v8, p1, v2}, ccm_update_lock_status(IIZ)J
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_89} :catch_78

    goto :goto_20
.end method

.method private validateCallerContainer(Landroid/app/enterprise/ContextInfo;I)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v8, 0x1

    .line 4149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4150
    .local v1, "callingUid":I
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 4152
    .local v0, "appId":I
    const/16 v5, 0x3e8

    if-eq v0, v5, :cond_65

    .line 4153
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4155
    .local v2, "currentUserId":I
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_4c

    .line 4156
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCallerContainer - UserId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", currentUserId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", appId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callingUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4160
    :cond_4c
    if-eq v2, p2, :cond_65

    .line 4162
    const/16 v5, 0x64

    if-ge v2, v5, :cond_66

    if-le v2, v8, :cond_66

    .line 4163
    invoke-direct {p0, v2}, getProfileOwnerUid(I)I

    move-result v5

    if-ne v5, v1, :cond_66

    .line 4164
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_65

    .line 4165
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "ClientCertificateManager.validateCallerContainer() callingUid is owner of the profile"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4191
    .end local v2    # "currentUserId":I
    :cond_65
    return v8

    .line 4170
    .restart local v2    # "currentUserId":I
    :cond_66
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-direct {p0, v5}, getMUMContainerOwnerUid(I)I

    move-result v3

    .line 4171
    .local v3, "mumContainerOwnerUid":I
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getContainerOwnerUid(I)I

    move-result v4

    .line 4173
    .local v4, "ownerUid":I
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_b3

    .line 4174
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "validateCallerContainer - mumContainerOwnerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", ownerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", callerUid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", containerId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4181
    :cond_b3
    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v3, v5, :cond_65

    iget v5, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    if-eq v4, v5, :cond_65

    if-eq v3, v1, :cond_65

    .line 4186
    new-instance v5, Ljava/lang/SecurityException;

    const-string v6, "Caller does not belong to the container"

    invoke-direct {v5, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private validatePackageExemption(IILjava/lang/String;)Z
    .registers 16
    .param p1, "userId"    # I
    .param p2, "callerUid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    .line 4213
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_d

    .line 4214
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "in validatePackageExemption"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4217
    :cond_d
    const/4 v6, 0x0

    .line 4218
    .local v6, "rowCount":I
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 4221
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :try_start_14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_72

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 4222
    .local v0, "adminId":Ljava/lang/Long;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_4a

    .line 4223
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AdminId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " UserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4225
    :cond_4a
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4226
    .local v2, "cvW":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4227
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4228
    const-string v9, "allowAllPkgs"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4230
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    invoke-virtual {v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v9

    add-int/2addr v6, v9

    .line 4232
    goto :goto_18

    .line 4234
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v2    # "cvW":Landroid/content/ContentValues;
    :cond_72
    if-lez v6, :cond_80

    .line 4235
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_7f

    .line 4236
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "All packages are allowed access to CCM token"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4262
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_7f
    :goto_7f
    return v8

    .line 4241
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_80
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 4242
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4243
    const-string/jumbo v9, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4244
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v9, v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 4251
    .local v7, "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_ab

    invoke-interface {v7, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_a8} :catch_ad

    move-result v9

    if-eq v8, v9, :cond_7f

    .line 4262
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v7    # "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_ab
    :goto_ab
    const/4 v8, 0x0

    goto :goto_7f

    .line 4256
    :catch_ad
    move-exception v4

    .line 4257
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_ab

    .line 4258
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "validatePackageExemption - Exception"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ab
.end method

.method private validatePackageList(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;)Z
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    .prologue
    .line 1814
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_c

    .line 1815
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v10, "in validatePackageList"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1817
    :cond_c
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v8

    .line 1820
    .local v8, "userId":I
    const/4 v6, 0x0

    .line 1823
    .local v6, "rowCount":I
    :try_start_11
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1826
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_1b
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_97

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 1827
    .local v0, "adminId":Ljava/lang/Long;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_4d

    .line 1828
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AdminId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " UserId - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    :cond_4d
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1831
    .local v2, "cvW":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-virtual {v2, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1832
    const-string/jumbo v9, "uid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1833
    const-string v9, "allowAllPkgs"

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1835
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    invoke-virtual {v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_72} :catch_75

    move-result v9

    add-int/2addr v6, v9

    .line 1837
    goto :goto_1b

    .line 1838
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v1    # "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v2    # "cvW":Landroid/content/ContentValues;
    .end local v5    # "i$":Ljava/util/Iterator;
    :catch_75
    move-exception v4

    .line 1839
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_97

    .line 1840
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validatePackageList adminId - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1845
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_97
    if-lez v6, :cond_a6

    .line 1846
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_a4

    .line 1847
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "All packages are allowed access to CCM token"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    :cond_a4
    const/4 v9, 0x1

    .line 1889
    :goto_a5
    return v9

    .line 1852
    :cond_a6
    iget-boolean v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    if-eqz v9, :cond_b7

    .line 1853
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_b5

    .line 1854
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "CCM profile does not allow all packages"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1855
    :cond_b5
    const/4 v9, 0x0

    goto :goto_a5

    .line 1859
    :cond_b7
    iget-object v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v9, :cond_c3

    iget-object v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d0

    .line 1860
    :cond_c3
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_ce

    .line 1861
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "Invalid package list"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    :cond_ce
    const/4 v9, 0x0

    goto :goto_a5

    .line 1867
    :cond_d0
    :try_start_d0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1868
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    iget v10, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1869
    const-string/jumbo v9, "uid"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1870
    iget-object v9, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "ClientCertificateManagerTable"

    const-string/jumbo v11, "pkgName"

    invoke-virtual {v9, v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 1878
    .local v7, "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_123

    iget-object v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v7, v9}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_d0 .. :try_end_fc} :catch_101

    move-result v9

    if-eqz v9, :cond_123

    .line 1880
    const/4 v9, 0x1

    goto :goto_a5

    .line 1882
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "tokenPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_101
    move-exception v4

    .line 1883
    .restart local v4    # "e":Ljava/lang/Exception;
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_123

    .line 1884
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "validatePackageList tokenPkgList - Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_123
    const/4 v9, 0x0

    goto :goto_a5
.end method

.method private verifyCertChain([B)[B
    .registers 6
    .param p1, "hashedPin"    # [B

    .prologue
    .line 3443
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_c

    .line 3444
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyCertChain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :cond_c
    const/4 v1, 0x0

    .line 3449
    .local v1, "pin":[B
    :try_start_d
    iget-object v2, p0, mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v2, p1}, Landroid/service/tima/ITimaService;->verifyCertChain([B)[B
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_12} :catch_14

    move-result-object v1

    .line 3454
    :goto_13
    return-object v1

    .line 3450
    :catch_14
    move-exception v0

    .line 3451
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "verifyCertChain - failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    sget-object v2, TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13
.end method

.method private verifyCertificateInstaller(IIILjava/lang/String;Z)Z
    .registers 16
    .param p1, "callerUid"    # I
    .param p2, "adminId"    # I
    .param p3, "userId"    # I
    .param p4, "alias"    # Ljava/lang/String;
    .param p5, "isCsrRecord"    # Z

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 4068
    :try_start_2
    invoke-static {p3, p1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    .line 4070
    .local v4, "uid":I
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_54

    .line 4071
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdminId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", UserId - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", CallerUid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Alias - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", isCsrRecord - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4076
    :cond_54
    if-ne v4, p2, :cond_57

    .line 4105
    .end local v4    # "uid":I
    :cond_56
    :goto_56
    return v5

    .line 4080
    .restart local v4    # "uid":I
    :cond_57
    if-eqz p5, :cond_c6

    move v0, v5

    .line 4082
    .local v0, "csrRecordIntValue":I
    :goto_5a
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4083
    .local v1, "cvW":Landroid/content/ContentValues;
    const-string v7, "adminUid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4084
    const-string/jumbo v7, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4085
    const-string/jumbo v7, "installerId"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4086
    const-string v7, "alias"

    invoke-virtual {v1, v7, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4087
    const-string/jumbo v7, "csr"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4089
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v3

    .line 4092
    .local v3, "rowCount":I
    if-lez v3, :cond_c4

    .line 4093
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_56

    .line 4094
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "verifyCertificateInstaller - Caller is certificate installer"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_a1} :catch_a2

    goto :goto_56

    .line 4098
    .end local v0    # "csrRecordIntValue":I
    .end local v1    # "cvW":Landroid/content/ContentValues;
    .end local v3    # "rowCount":I
    .end local v4    # "uid":I
    :catch_a2
    move-exception v2

    .line 4099
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_c4

    .line 4100
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "verifyCertificateInstaller - Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_c4
    move v5, v6

    .line 4105
    goto :goto_56

    .restart local v4    # "uid":I
    :cond_c6
    move v0, v6

    .line 4080
    goto :goto_5a
.end method


# virtual methods
.method public SetTokenTUIPasswd(II)I
    .registers 7
    .param p1, "slotId"    # I
    .param p2, "minTUIPinLen"    # I

    .prologue
    .line 3489
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_27

    .line 3490
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetTokenTUIPasswd - slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "minTUIPinLen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3494
    :cond_27
    invoke-static {p1, p2}, CCM_SetTokenTUIPasswd(II)I

    move-result v0

    .line 3496
    .local v0, "ret":I
    return v0
.end method

.method public addPackageToExemptList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3208
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3210
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_27

    .line 3211
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "in addPackageToExemptList for cxtInfo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3213
    :cond_27
    invoke-direct {p0, p2}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3215
    if-eqz p1, :cond_2f

    if-nez p2, :cond_3b

    .line 3216
    :cond_2f
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3a

    .line 3217
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - Invalid input"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    :cond_3a
    :goto_3a
    return v2

    .line 3221
    :cond_3b
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_57

    .line 3222
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addPackageToExemptList packageName - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3224
    :cond_57
    invoke-direct {p0, p1}, enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3226
    iget-boolean v4, p0, mIsTimaVersion30:Z

    if-nez v4, :cond_6b

    .line 3227
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3a

    .line 3228
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 3233
    :cond_6b
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v4}, isCCMPolicyEnabledByAdmin(I)Z

    move-result v4

    if-nez v4, :cond_7f

    .line 3234
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3a

    .line 3235
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "addPackageToExemptList - CCM is not enabled by admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 3240
    :cond_7f
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3242
    .local v1, "userId":I
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v4, p2}, validatePackageExemption(IILjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_ae

    .line 3244
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_3a

    .line 3245
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPackageToExemptList - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3a

    .line 3250
    :cond_ae
    invoke-direct {p0, v1, p2}, getPackageUid(ILjava/lang/String;)I

    move-result v0

    .line 3252
    .local v0, "uid":I
    const/4 v4, -0x1

    if-eq v4, v0, :cond_3a

    .line 3253
    iget v4, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v3, v4, v1, v0, v2}, ccm_manage_exempt_list(ZIIIZ)J

    move v2, v3

    .line 3258
    goto/16 :goto_3a
.end method

.method public deleteCCMProfile(Landroid/app/enterprise/ContextInfo;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 849
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_e

    .line 850
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "in deleteCCMProfile"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :cond_e
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 854
    if-nez p1, :cond_21

    .line 855
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_20

    .line 856
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteCCMProfile - null cxtInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_20
    :goto_20
    return v1

    .line 860
    :cond_21
    invoke-direct {p0, p1}, enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 862
    iget-boolean v3, p0, mIsTimaVersion30:Z

    if-nez v3, :cond_36

    .line 863
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_20

    .line 864
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteCCMProfile - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 869
    :cond_36
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v0

    .line 871
    .local v0, "userId":I
    invoke-direct {p0, v0}, isCCMDefaultCertStore(I)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 872
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_5d

    .line 873
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCCMProfile - CCM is set default for userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_5d
    const/4 v1, -0x1

    invoke-direct {p0, v1, v0}, deleteCSRProfileUsingAdminId(II)Z

    .line 876
    invoke-direct {p0, v0}, deleteCertificateProfile(I)Z

    .line 877
    invoke-direct {p0, v0}, deleteCCMProfile(I)Z

    .line 878
    invoke-direct {p0, v0}, deleteCCMDefaultPolicyRecord(I)Z

    move v1, v2

    .line 879
    goto :goto_20

    .line 882
    :cond_6c
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3}, isCCMPolicyEnabledByAdmin(I)Z

    move-result v3

    if-nez v3, :cond_81

    .line 883
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_20

    .line 884
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "deleteCCMProfile - CCM is not enabled by admin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20

    .line 888
    :cond_81
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0}, deleteCSRProfileUsingAdminId(II)Z

    move-result v3

    if-eq v2, v3, :cond_95

    .line 889
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_95

    .line 890
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "in deleteCCMProfile - deleteCSRProfileUsingAdminId failed"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    :cond_95
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0, v1}, deleteCertificateProfileUsingAdminId(IIZ)Z

    move-result v3

    if-eq v2, v3, :cond_ab

    .line 896
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_20

    .line 897
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "in deleteCCMProfile - failed to delete certificates"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 902
    :cond_ab
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v3, v0, v1}, deleteCCMProfileUsingAdminId(IIZ)Z

    move-result v3

    if-eq v2, v3, :cond_c1

    .line 904
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_20

    .line 905
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "in deleteCCMProfile - failed to delete profile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .line 909
    :cond_c1
    invoke-direct {p0}, getSlotCount()I

    move-result v1

    iput v1, p0, mSlotCount:I

    move v1, v2

    .line 911
    goto/16 :goto_20
.end method

.method public deleteCSRProfile(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "templateName"    # Ljava/lang/String;

    .prologue
    .line 3001
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c

    .line 3002
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCSRProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3004
    :cond_c
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3006
    iget-boolean v0, p0, mIsTimaVersion30:Z

    if-nez v0, :cond_22

    .line 3007
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_20

    .line 3008
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    :cond_20
    const/4 v0, 0x0

    .line 3065
    :goto_21
    return v0

    .line 3013
    :cond_22
    if-eqz p2, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3a

    .line 3015
    :cond_2c
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_38

    .line 3016
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    :cond_38
    const/4 v0, 0x0

    goto :goto_21

    .line 3020
    :cond_3a
    invoke-virtual {p0, p1}, isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 3021
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_4c

    .line 3022
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    :cond_4c
    const/4 v0, 0x0

    goto :goto_21

    .line 3026
    :cond_4e
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 3028
    .local v3, "userId":I
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 3029
    .local v2, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v2, :cond_68

    .line 3030
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_66

    .line 3031
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3032
    :cond_66
    const/4 v0, 0x0

    goto :goto_21

    .line 3035
    :cond_68
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_81

    .line 3037
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_7f

    .line 3038
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3040
    :cond_7f
    const/4 v0, 0x0

    goto :goto_21

    .line 3043
    :cond_81
    const-wide/16 v0, 0x0

    invoke-static {v2, v3, p2}, ccm_delete_csr_profile(IILjava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_99

    .line 3045
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_97

    .line 3046
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCSRProfile - native ccm_delete_csr_profile failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3048
    :cond_97
    const/4 v0, 0x0

    goto :goto_21

    .line 3052
    :cond_99
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "adminUid"

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "uid"

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const-string v1, "alias"

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const-string/jumbo v1, "installerId"

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const-string/jumbo v1, "csr"

    aput-object v1, v7, v0

    .line 3055
    .local v7, "sColumns":[Ljava/lang/String;
    const/4 v0, 0x5

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    aput-object p2, v8, v0

    const/4 v0, 0x3

    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    .line 3059
    .local v8, "sValues":[Ljava/lang/String;
    :try_start_dd
    iget-object v0, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "CCMCertTable"

    invoke-virtual {v0, v1, v7, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_e4} :catch_e7

    .line 3065
    :cond_e4
    :goto_e4
    const/4 v0, 0x1

    goto/16 :goto_21

    .line 3061
    :catch_e7
    move-exception v6

    .line 3062
    .local v6, "e":Ljava/lang/Exception;
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_e4

    .line 3063
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCSRProfile - Exception"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e4
.end method

.method public deleteCertificate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1653
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_e

    .line 1654
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in deleteCertificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    :cond_e
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1658
    invoke-direct {p0, p2}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1660
    if-eqz p1, :cond_20

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2d

    .line 1661
    :cond_20
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2c

    .line 1662
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_2c
    :goto_2c
    return v5

    .line 1666
    :cond_2d
    iget-boolean v0, p0, mIsTimaVersion30:Z

    if-nez v0, :cond_3e

    .line 1667
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2c

    .line 1668
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1673
    :cond_3e
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1675
    .local v3, "userId":I
    const/16 v2, 0x3e8

    .line 1678
    .local v2, "adminId":I
    invoke-virtual {p0, p1}, isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1679
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 1680
    const/4 v0, -0x1

    if-ne v0, v2, :cond_60

    .line 1681
    const/16 v2, 0x3e8

    .line 1682
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_60

    .line 1683
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    :cond_60
    invoke-direct {p0, v2, v3, p2, v5}, checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_84

    .line 1688
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2c

    .line 1689
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "deleteCertificate - alias doesn\'t exist: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1693
    :cond_84
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 1695
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2c

    .line 1696
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - verifyCertificateInstaller failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    .line 1701
    :cond_9b
    invoke-direct {p0, v2, v3, p2}, deleteCertificateUsingAdminId(IILjava/lang/String;)Z

    move-result v0

    if-eq v6, v0, :cond_af

    .line 1702
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2c

    .line 1703
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "deleteCertificate - failed to delete certificate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2c

    :cond_af
    move v5, v6

    .line 1707
    goto/16 :goto_2c
.end method

.method public generateCSR(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[B
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "tokenName"    # Ljava/lang/String;
    .param p4, "tokenPassword"    # Ljava/lang/String;
    .param p5, "objectAlias"    # Ljava/lang/String;
    .param p6, "isTrustedBootRequired"    # Z

    .prologue
    const/4 v2, 0x0

    .line 353
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_d

    .line 354
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "in generateCSR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 358
    if-eqz p3, :cond_25

    if-eqz p1, :cond_25

    if-eqz p5, :cond_25

    if-eqz p4, :cond_25

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_32

    .line 361
    :cond_25
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_31

    .line 362
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateCSR - Invalid Arguments"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_31
    :goto_31
    return-object v2

    .line 366
    :cond_32
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 368
    iget-boolean v3, p0, mIsTimaVersion30:Z

    if-nez v3, :cond_46

    .line 369
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_31

    .line 370
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "generateCSR - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 374
    :cond_46
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 376
    .local v1, "userId":I
    const/16 v0, 0x3e8

    .line 379
    .local v0, "adminId":I
    invoke-virtual {p0, p1}, isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 380
    invoke-direct {p0, p1, v1, v2}, getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v0

    .line 381
    const/4 v2, -0x1

    if-ne v2, v0, :cond_67

    .line 382
    const/16 v0, 0x3e8

    .line 383
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_67

    .line 384
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "in generateCSR - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_67
    invoke-static {v0, v1, p5}, ccm_generate_csr(IILjava/lang/String;)[B

    move-result-object v2

    goto :goto_31
.end method

.method public generateCSRUsingTemplate(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "templateName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;
    .param p4, "challengePassword"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 3071
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_d

    .line 3072
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "in generateCSRUsingTemplate"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3075
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3077
    iget-boolean v8, p0, mIsTimaVersion30:Z

    if-nez v8, :cond_22

    .line 3078
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_21

    .line 3079
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - TIMA version does not include CCM"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :cond_21
    :goto_21
    return-object v7

    .line 3084
    :cond_22
    if-eqz p2, :cond_3e

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3e

    if-eqz p3, :cond_3e

    if-eqz p1, :cond_3e

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_3e

    if-eqz p4, :cond_4b

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x40

    if-le v8, v9, :cond_4b

    .line 3090
    :cond_3e
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_21

    .line 3091
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - Invalid Arguments"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 3095
    :cond_4b
    invoke-virtual {p0, p1}, isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v8

    if-nez v8, :cond_5e

    .line 3096
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_21

    .line 3097
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - CCM is not enabled for caller"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 3102
    :cond_5e
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_7b

    .line 3103
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generateCSRUsingTemplate - challengePassword is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3106
    :cond_7b
    const/4 v3, 0x0

    .line 3107
    .local v3, "challPwdBytes":[B
    const/4 v2, 0x0

    .line 3109
    .local v2, "buf":[B
    if-eqz p4, :cond_d7

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_d7

    .line 3111
    :try_start_85
    new-instance v6, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v6}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 3112
    .local v6, "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v8, Lcom/android/org/bouncycastle/asn1/DERPrintableString;

    invoke-direct {v8, p4}, Lcom/android/org/bouncycastle/asn1/DERPrintableString;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;->add(Lcom/android/org/bouncycastle/asn1/ASN1Encodable;)V

    .line 3114
    new-instance v1, Lcom/android/org/bouncycastle/asn1/x509/Attribute;

    sget-object v8, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pkcs_9_at_challengePassword:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v9, Lcom/android/org/bouncycastle/asn1/DERSet;

    invoke-direct {v9, v6}, Lcom/android/org/bouncycastle/asn1/DERSet;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-direct {v1, v8, v9}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;-><init>(Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Lcom/android/org/bouncycastle/asn1/ASN1Set;)V

    .line 3117
    .local v1, "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/x509/Attribute;->getEncoded()[B

    move-result-object v3

    .line 3119
    array-length v8, v3

    const/16 v9, 0x7f

    if-le v8, v9, :cond_f0

    .line 3121
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_21

    .line 3122
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - challenge password too long"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_b3} :catch_b5

    goto/16 :goto_21

    .line 3139
    .end local v1    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .end local v6    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :catch_b5
    move-exception v4

    .line 3140
    .local v4, "e":Ljava/lang/Exception;
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_d7

    .line 3141
    sget-object v8, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "generateCSRUsingTemplate - Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3147
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_d7
    :goto_d7
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 3148
    .local v5, "userId":I
    invoke-direct {p0, p1, v5, v7}, getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v0

    .line 3149
    .local v0, "adminId":I
    const/4 v8, -0x1

    if-ne v8, v0, :cond_117

    .line 3150
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_21

    .line 3151
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - failed to get admin Id"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 3125
    .end local v0    # "adminId":I
    .end local v5    # "userId":I
    .restart local v1    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .restart local v6    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    :cond_f0
    :try_start_f0
    array-length v8, v3

    if-gtz v8, :cond_101

    .line 3126
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_21

    .line 3127
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "generateCSRUsingTemplate - challenge password length equal or less than 0"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    .line 3131
    :cond_101
    array-length v8, v3

    add-int/lit8 v8, v8, 0x2

    new-array v2, v8, [B

    .line 3132
    const/4 v8, 0x0

    const/4 v9, 0x2

    array-length v10, v3

    invoke-static {v3, v8, v2, v9, v10}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 3136
    const/4 v8, 0x0

    const/16 v9, -0x60

    aput-byte v9, v2, v8

    .line 3137
    const/4 v8, 0x1

    array-length v9, v3

    int-to-byte v9, v9

    aput-byte v9, v2, v8
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_116} :catch_b5

    goto :goto_d7

    .line 3155
    .end local v1    # "attribute":Lcom/android/org/bouncycastle/asn1/x509/Attribute;
    .end local v6    # "v":Lcom/android/org/bouncycastle/asn1/ASN1EncodableVector;
    .restart local v0    # "adminId":I
    .restart local v5    # "userId":I
    :cond_117
    invoke-static {v0, v5, p2, p3, v2}, ccm_gen_csr_using_template(IILjava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v7

    goto/16 :goto_21
.end method

.method public getAliasesForCaller(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 3934
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_d

    .line 3935
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "in getAliasesForCaller"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3937
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3939
    if-nez p1, :cond_20

    .line 3940
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1f

    .line 3941
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAliasesForCaller - null cxtInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3969
    :cond_1f
    :goto_1f
    return-object v0

    .line 3945
    :cond_20
    iget-object v4, p0, mContext:Landroid/content/Context;

    if-nez v4, :cond_31

    .line 3946
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1f

    .line 3947
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getAliasesForCaller - Invalid Context"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 3951
    :cond_31
    const/4 v0, 0x0

    .line 3955
    .local v0, "aliases":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_32
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 3956
    .local v3, "userId":I
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3957
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "uid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3958
    const-string/jumbo v4, "installerId"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3959
    const-string/jumbo v4, "csr"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3960
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    const-string v6, "alias"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_67} :catch_69

    move-result-object v0

    goto :goto_1f

    .line 3963
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "userId":I
    :catch_69
    move-exception v2

    .line 3964
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1f

    .line 3965
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAliasesForPackage - aliasesList1 Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public getAliasesForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3987
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_d

    .line 3988
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getAliasesForPackage"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3990
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3992
    if-eqz p2, :cond_15

    if-nez p1, :cond_22

    .line 3993
    :cond_15
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_21

    .line 3994
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getAliasesForPackage - Invalid input parameters"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4061
    :cond_21
    :goto_21
    return-object v4

    .line 3998
    :cond_22
    iget-boolean v6, p0, mIsTimaVersion30:Z

    if-nez v6, :cond_33

    .line 3999
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_21

    .line 4000
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getAliasesForPackage - TIMA version does not include CCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 4005
    :cond_33
    const/4 v0, 0x0

    .line 4006
    .local v0, "aliasesList1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 4007
    .local v1, "aliasesList2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4009
    invoke-virtual {p0, p1, p2}, isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4b

    .line 4010
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_21

    .line 4011
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, " getAliasesForPackage - token access is not permitted"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 4016
    :cond_4b
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4018
    .local v5, "userId":I
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_75

    .line 4019
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " UserId - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Package - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    :cond_75
    :try_start_75
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4024
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4025
    const-string/jumbo v6, "pkgName"

    invoke-virtual {v2, v6, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4026
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4027
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    const-string v8, "alias"

    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_75 .. :try_end_9e} :catch_de

    move-result-object v0

    .line 4039
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_9f
    :goto_9f
    :try_start_9f
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 4040
    .restart local v2    # "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4041
    const-string v6, "allowAllPkgs"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4042
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4043
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    const-string v8, "alias"

    invoke-virtual {v6, v7, v8, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;
    :try_end_cc
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_cc} :catch_101

    move-result-object v1

    .line 4053
    .end local v2    # "cvWhere":Landroid/content/ContentValues;
    :cond_cd
    :goto_cd
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4054
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_d7

    .line 4055
    invoke-interface {v4, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4057
    :cond_d7
    if-eqz v1, :cond_21

    .line 4058
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_21

    .line 4030
    .end local v4    # "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_de
    move-exception v3

    .line 4031
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_9f

    .line 4032
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAliasesForPackage - aliasesList1 Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    .line 4046
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_101
    move-exception v3

    .line 4047
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_cd

    .line 4048
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getAliasesForPackage - aliasesList2 Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cd
.end method

.method public getAliasesForWiFi()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4301
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_d

    .line 4302
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "in getAliasesForWiFi"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4304
    :cond_d
    iget-boolean v5, p0, mIsTimaVersion30:Z

    if-nez v5, :cond_1f

    .line 4305
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_1d

    .line 4306
    sget-object v5, TAG:Ljava/lang/String;

    const-string/jumbo v6, "getAliasesForWiFi - TIMA version does not include CCM"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    move-object v0, v4

    .line 4334
    :cond_1e
    :goto_1e
    return-object v0

    .line 4311
    :cond_1f
    const/4 v0, 0x0

    .line 4315
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_20
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4316
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v5, "allowWiFi"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4317
    const-string v5, "allowRawSigning"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4318
    const-string/jumbo v5, "csr"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4319
    iget-object v5, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v6, "CCMCertTable"

    const-string v7, "alias"

    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4322
    if-eqz v0, :cond_1e

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1e

    .line 4323
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4324
    .local v3, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4325
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4326
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_64} :catch_65

    goto :goto_1e

    .line 4328
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_65
    move-exception v2

    .line 4329
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v5, DBG:Z

    if-eqz v5, :cond_87

    .line 4330
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAliasesForWiFi - Exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    move-object v0, v4

    .line 4331
    goto :goto_1e
.end method

.method public getCCMProfile(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/ccm/CCMProfile;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x0

    .line 764
    new-instance v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v5}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 765
    .local v5, "profile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_12

    .line 766
    sget-object v11, TAG:Ljava/lang/String;

    const-string/jumbo v12, "in getCCMProfile"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_12
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 770
    if-nez p1, :cond_25

    .line 771
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_24

    .line 772
    sget-object v11, TAG:Ljava/lang/String;

    const-string/jumbo v12, "getCCMProfile - null cxtInfo"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_24
    :goto_24
    return-object v10

    .line 776
    :cond_25
    iget-boolean v11, p0, mIsTimaVersion30:Z

    if-nez v11, :cond_36

    .line 777
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_24

    .line 778
    sget-object v11, TAG:Ljava/lang/String;

    const-string/jumbo v12, "getCCMProfile - TIMA version does not include CCM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_24

    .line 783
    :cond_36
    :try_start_36
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 784
    .local v9, "userId":I
    const/4 v11, 0x0

    invoke-direct {p0, p1, v9, v11}, getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v1

    .line 786
    .local v1, "adminId":I
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_65

    .line 787
    sget-object v11, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "AdminId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " UserId - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    :cond_65
    const/4 v11, -0x1

    if-ne v11, v1, :cond_9a

    .line 790
    sget-boolean v11, DBG:Z

    if-eqz v11, :cond_24

    .line 791
    sget-object v11, TAG:Ljava/lang/String;

    const-string/jumbo v12, "getCCMProfile - admin not found"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_74} :catch_75

    goto :goto_24

    .line 839
    .end local v1    # "adminId":I
    .end local v9    # "userId":I
    :catch_75
    move-exception v4

    .line 840
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 841
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_98

    .line 842
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "getCCMProfile - Exception "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_98
    :goto_98
    move-object v10, v5

    .line 844
    goto :goto_24

    .line 795
    .restart local v1    # "adminId":I
    .restart local v9    # "userId":I
    :cond_9a
    const/4 v10, 0x2

    :try_start_9b
    new-array v6, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "adminUid"

    aput-object v11, v6, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "uid"

    aput-object v11, v6, v10

    .line 797
    .local v6, "sColumns":[Ljava/lang/String;
    const/4 v10, 0x2

    new-array v8, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    const/4 v10, 0x1

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v10

    .line 800
    .local v8, "sValues":[Ljava/lang/String;
    const/4 v10, 0x4

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "accessType"

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string v11, "allowAllPkgs"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "loginRetry"

    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "loginExpiration"

    aput-object v11, v7, v10

    .line 805
    .local v7, "sReturnColumns":[Ljava/lang/String;
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v6, v8, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 808
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v2, :cond_98

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_98

    .line 809
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v11, "accessType"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 811
    .local v0, "accessCntrlMethd":Ljava/lang/String;
    invoke-static {v0}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->valueOf(Ljava/lang/String;)Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    move-result-object v10

    iput-object v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 813
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string v11, "allowAllPkgs"

    invoke-virtual {v10, v11}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    iput-boolean v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    .line 816
    sget-object v10, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iget-object v11, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v10, v11, :cond_141

    .line 817
    new-instance v10, Lcom/sec/enterprise/knox/ccm/TUIProperty;

    invoke-direct {v10}, Lcom/sec/enterprise/knox/ccm/TUIProperty;-><init>()V

    iput-object v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    .line 818
    iget-object v11, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v12, "loginRetry"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v11, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    .line 821
    iget-object v11, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    const-string/jumbo v12, "loginExpiration"

    invoke-virtual {v10, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iput v10, v11, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    .line 826
    :cond_141
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 827
    .local v3, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 829
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    const-string/jumbo v12, "pkgName"

    invoke-virtual {v10, v11, v12, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v10

    iput-object v10, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 833
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_98

    .line 834
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "PackageList - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v5, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_9b .. :try_end_18c} :catch_75

    goto/16 :goto_98
.end method

.method public getCCMVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3320
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c

    .line 3321
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getCCMVersion"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    :cond_c
    iget-boolean v0, p0, mIsTimaVersion30:Z

    if-nez v0, :cond_1e

    .line 3324
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1c

    .line 3325
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "getCCMVersion - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3326
    :cond_1c
    const/4 v0, 0x0

    .line 3329
    :goto_1d
    return-object v0

    :cond_1e
    invoke-static {}, get_ccm_version()Ljava/lang/String;

    move-result-object v0

    goto :goto_1d
.end method

.method public getCertificateAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4549
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_d

    .line 4550
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "in getCertificateAliases"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4552
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4554
    if-nez p1, :cond_21

    .line 4555
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1f

    .line 4556
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getCertificateAliases - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move-object v0, v5

    .line 4590
    :cond_20
    :goto_20
    return-object v0

    .line 4560
    :cond_21
    iget-boolean v6, p0, mIsTimaVersion30:Z

    if-nez v6, :cond_33

    .line 4561
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_31

    .line 4562
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "getCertificateAliases - TIMA version does not include CCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move-object v0, v5

    .line 4564
    goto :goto_20

    .line 4567
    :cond_33
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 4568
    .local v4, "userId":I
    const/4 v0, 0x0

    .line 4572
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_38
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4573
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v6, "uid"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4574
    const-string/jumbo v6, "csr"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4575
    iget-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CCMCertTable"

    const-string v8, "alias"

    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4578
    if-eqz v0, :cond_20

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_20

    .line 4579
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 4580
    .local v3, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4581
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4582
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_72} :catch_73

    goto :goto_20

    .line 4584
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    .end local v3    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_73
    move-exception v2

    .line 4585
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_95

    .line 4586
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getCertificateAliases - Exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_95
    move-object v0, v5

    .line 4587
    goto :goto_20
.end method

.method public getCertificateAliasesHavingPrivateKey(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 4600
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_d

    .line 4601
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "in getCertificateAliasesHavingPrivateKey"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4603
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4605
    if-nez p1, :cond_21

    .line 4606
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_1f

    .line 4607
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - Invalid Arguments"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    move-object v1, v6

    .line 4650
    :cond_20
    :goto_20
    return-object v1

    .line 4612
    :cond_21
    iget-boolean v7, p0, mIsTimaVersion30:Z

    if-nez v7, :cond_33

    .line 4613
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_31

    .line 4614
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - TIMA version does not include CCM"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_31
    move-object v1, v6

    .line 4616
    goto :goto_20

    .line 4619
    :cond_33
    const/4 v0, 0x0

    .line 4620
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 4621
    .local v5, "userId":I
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_55

    .line 4622
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCertificateAliasesHavingPrivateKey - userId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4626
    :cond_55
    :try_start_55
    invoke-static {v5}, ccm_get_aliases_having_private_key(I)[Ljava/lang/String;

    move-result-object v3

    .line 4628
    .local v3, "tzAliases":[Ljava/lang/String;
    if-eqz v3, :cond_5e

    array-length v7, v3

    if-nez v7, :cond_6c

    .line 4629
    :cond_5e
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_6a

    .line 4630
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "getCertificateAliasesHavingPrivateKey - native ccm_get_aliases_having_private_key returnd null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6a
    move-object v1, v6

    .line 4632
    goto :goto_20

    .line 4635
    :cond_6c
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_75} :catch_b5

    .line 4636
    .end local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_20

    :try_start_77
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_20

    .line 4637
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 4638
    .local v4, "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v4, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 4639
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 4640
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_8b} :catch_8c

    goto :goto_20

    .line 4642
    .end local v4    # "uniqueAliases":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_8c
    move-exception v2

    move-object v0, v1

    .line 4643
    .end local v1    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "tzAliases":[Ljava/lang/String;
    .restart local v0    # "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "e":Ljava/lang/Exception;
    :goto_8e
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_af

    .line 4644
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "getCertificateAliasesHavingPrivateKey - Exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4646
    :cond_af
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v6

    .line 4647
    goto/16 :goto_20

    .line 4642
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_b5
    move-exception v2

    goto :goto_8e
.end method

.method public getDefaultCertificateAlias()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3334
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c

    .line 3335
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in getDefaultCertificateAlias"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    :cond_c
    iget-boolean v0, p0, mIsTimaVersion30:Z

    if-nez v0, :cond_1e

    .line 3338
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1c

    .line 3339
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "getDefaultCertificateAlias - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3341
    :cond_1c
    const/4 v0, 0x0

    .line 3346
    :goto_1d
    return-object v0

    .line 3344
    :cond_1e
    invoke-static {}, get_default_cert_alias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDefaultCertAlias:Ljava/lang/String;

    .line 3346
    iget-object v0, p0, mDefaultCertAlias:Ljava/lang/String;

    goto :goto_1d
.end method

.method public getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/enterprise/ContextInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4502
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_d

    .line 4503
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "in getKeyChainMarkedAliases"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4505
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4507
    if-nez p1, :cond_20

    .line 4508
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1f

    .line 4509
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4540
    :cond_1f
    :goto_1f
    return-object v0

    .line 4513
    :cond_20
    iget-boolean v4, p0, mIsTimaVersion30:Z

    if-nez v4, :cond_31

    .line 4514
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1f

    .line 4515
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 4520
    :cond_31
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 4521
    .local v3, "userId":I
    const/4 v0, 0x0

    .line 4524
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_36
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 4525
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v4, "uid"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4526
    const-string/jumbo v4, "pkgName"

    const-string/jumbo v5, "keystorekeychain"

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4528
    const-string/jumbo v4, "csr"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 4529
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "CCMCertTable"

    const-string v6, "alias"

    invoke-virtual {v4, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getStringList(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    .line 4532
    if-eqz v0, :cond_73

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_73

    .line 4533
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "getKeyChainMarkedAliases - Alias list empty or null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_73} :catch_8d

    .line 4539
    .end local v1    # "cvWhere":Landroid/content/ContentValues;
    :cond_73
    :goto_73
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getKeyChainMarkedAliases - Alias list :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    .line 4535
    :catch_8d
    move-exception v2

    .line 4536
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_73

    .line 4537
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getKeyChainMarkedAliases - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_73
.end method

.method public getSlotIdForCaller(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J
    .registers 27
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 2630
    sget-boolean v21, DBG:Z

    if-eqz v21, :cond_c

    .line 2631
    sget-object v21, TAG:Ljava/lang/String;

    const-string/jumbo v22, "in getSlotIdForCaller"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2633
    :cond_c
    invoke-direct/range {p0 .. p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2635
    move-object/from16 v0, p0

    iget v0, v0, mSlotCount:I

    move/from16 v21, v0

    if-gtz v21, :cond_27

    .line 2637
    sget-boolean v21, DBG:Z

    if-eqz v21, :cond_24

    .line 2638
    sget-object v21, TAG:Ljava/lang/String;

    const-string/jumbo v22, "getSlotIdForCaller - CCM profile is not set"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2639
    :cond_24
    const-wide/16 v18, -0x1

    .line 2743
    :cond_26
    :goto_26
    return-wide v18

    .line 2642
    :cond_27
    if-nez p1, :cond_38

    .line 2643
    sget-boolean v21, DBG:Z

    if-eqz v21, :cond_35

    .line 2644
    sget-object v21, TAG:Ljava/lang/String;

    const-string/jumbo v22, "getSlotIdForCaller - null cxtInfo"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2645
    :cond_35
    const-wide/16 v18, -0x1

    goto :goto_26

    .line 2648
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    if-nez v21, :cond_4b

    .line 2649
    sget-object v21, TAG:Ljava/lang/String;

    const-string/jumbo v22, "getSlotIdForCaller - Invalid Context "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    const-wide/16 v18, -0x1

    goto :goto_26

    .line 2653
    :cond_4b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2655
    const-wide/16 v18, -0x1

    .line 2661
    .local v18, "slotId":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v21

    invoke-static/range {v21 .. v21}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    .line 2663
    .local v5, "callingUid":I
    sget-boolean v21, DBG:Z

    if-eqz v21, :cond_7c

    .line 2664
    sget-object v21, TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller callingUid - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2666
    :cond_7c
    const/16 v21, 0x3e8

    move/from16 v0, v21

    if-ne v5, v0, :cond_1dc

    .line 2667
    invoke-direct/range {p0 .. p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v20

    .line 2668
    .local v20, "userId":I
    const/4 v14, 0x0

    .line 2670
    .local v14, "rowCount":I
    sget-boolean v21, DBG:Z

    if-eqz v21, :cond_b6

    .line 2671
    sget-object v21, TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller UserId - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", alias - "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2675
    :cond_b6
    const/4 v10, 0x0

    .line 2678
    .local v10, "isDefaultCertificateAlias":Z
    move-object/from16 v0, p0

    iget-object v0, v0, mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v21, v0

    if-nez v21, :cond_c2

    .line 2679
    invoke-virtual/range {p0 .. p0}, getDefaultCertificateAlias()Ljava/lang/String;

    .line 2682
    :cond_c2
    if-eqz p2, :cond_e1

    move-object/from16 v0, p0

    iget-object v0, v0, mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_e0

    const-string v21, "Digital Signature"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_e1

    .line 2685
    :cond_e0
    const/4 v10, 0x1

    .line 2688
    :cond_e1
    if-nez v10, :cond_129

    .line 2690
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 2691
    .local v7, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v21, "uid"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2692
    const-string/jumbo v21, "csr"

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2695
    if-eqz p2, :cond_117

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_117

    .line 2696
    const-string v21, "alias"

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    :cond_117
    :try_start_117
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "CCMCertTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_126} :catch_195

    move-result v21

    add-int v14, v14, v21

    .line 2709
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    :cond_129
    :goto_129
    if-nez v10, :cond_135

    if-gtz v14, :cond_135

    if-eqz p2, :cond_135

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v21

    if-nez v21, :cond_26

    .line 2711
    :cond_135
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v15, v0, [Ljava/lang/String;

    const/16 v21, 0x0

    const-string/jumbo v22, "uid"

    aput-object v22, v15, v21

    .line 2712
    .local v15, "sColumns":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v21, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v17, v21

    .line 2714
    .local v17, "sValues":[Ljava/lang/String;
    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "slotId"

    aput-object v22, v16, v21

    .line 2715
    .local v16, "sReturnColumns":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 2717
    .local v6, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_162
    move-object/from16 v0, p0

    iget-object v0, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-object/from16 v21, v0

    const-string v22, "ClientCertificateManagerTable"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v15, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_175} :catch_1b9

    move-result-object v6

    .line 2726
    :cond_176
    :goto_176
    if-eqz v6, :cond_26

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v21

    if-lez v21, :cond_26

    .line 2727
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/content/ContentValues;

    const-string/jumbo v22, "slotId"

    invoke-virtual/range {v21 .. v22}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    goto/16 :goto_26

    .line 2701
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v15    # "sColumns":[Ljava/lang/String;
    .end local v16    # "sReturnColumns":[Ljava/lang/String;
    .end local v17    # "sValues":[Ljava/lang/String;
    .restart local v7    # "cvWhere":Landroid/content/ContentValues;
    :catch_195
    move-exception v8

    .line 2702
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v21, DBG:Z

    if-eqz v21, :cond_129

    .line 2703
    sget-object v21, TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller - slotId Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_129

    .line 2720
    .end local v7    # "cvWhere":Landroid/content/ContentValues;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v15    # "sColumns":[Ljava/lang/String;
    .restart local v16    # "sReturnColumns":[Ljava/lang/String;
    .restart local v17    # "sValues":[Ljava/lang/String;
    :catch_1b9
    move-exception v8

    .line 2721
    .restart local v8    # "e":Ljava/lang/Exception;
    sget-boolean v21, DBG:Z

    if-eqz v21, :cond_176

    .line 2722
    sget-object v21, TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "getSlotIdForCaller - retrieving slot Id Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_176

    .line 2735
    .end local v6    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v10    # "isDefaultCertificateAlias":Z
    .end local v14    # "rowCount":I
    .end local v15    # "sColumns":[Ljava/lang/String;
    .end local v16    # "sReturnColumns":[Ljava/lang/String;
    .end local v17    # "sValues":[Ljava/lang/String;
    .end local v20    # "userId":I
    :cond_1dc
    move-object/from16 v0, p0

    iget-object v0, v0, mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v13

    .line 2737
    .local v13, "pkgNames":[Ljava/lang/String;
    move-object v4, v13

    .local v4, "arr$":[Ljava/lang/String;
    array-length v11, v4

    .local v11, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1f1
    if-ge v9, v11, :cond_26

    aget-object v12, v4, v9

    .line 2738
    .local v12, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v12, v2}, getSlotIdForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v18

    .line 2739
    const-wide/16 v22, 0x0

    cmp-long v21, v18, v22

    if-gez v21, :cond_26

    .line 2737
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f1
.end method

.method public getSlotIdForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)J
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "alias"    # Ljava/lang/String;

    .prologue
    .line 2749
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_c

    .line 2750
    sget-object v14, TAG:Ljava/lang/String;

    const-string/jumbo v15, "in getSlotIdForPackage"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2752
    :cond_c
    invoke-direct/range {p0 .. p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2754
    move-object/from16 v0, p0

    iget v14, v0, mSlotCount:I

    if-gtz v14, :cond_25

    .line 2756
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_22

    .line 2757
    sget-object v14, TAG:Ljava/lang/String;

    const-string/jumbo v15, "getSlotIdForPackage - CCM profile is not set"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    :cond_22
    const-wide/16 v12, -0x1

    .line 2895
    :cond_24
    :goto_24
    return-wide v12

    .line 2761
    :cond_25
    move-object/from16 v0, p0

    iget-boolean v14, v0, mIsTimaVersion30:Z

    if-nez v14, :cond_3a

    .line 2762
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_37

    .line 2763
    sget-object v14, TAG:Ljava/lang/String;

    const-string/jumbo v15, "getSlotIdForPackage - TIMA version does not include CCM"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2765
    :cond_37
    const-wide/16 v12, -0x1

    goto :goto_24

    .line 2768
    :cond_3a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2770
    if-eqz p2, :cond_46

    if-nez p1, :cond_51

    .line 2771
    :cond_46
    sget-object v14, TAG:Ljava/lang/String;

    const-string/jumbo v15, "getSlotIdForPackage failed - Invalid arguments"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2772
    const-wide/16 v12, -0x1

    goto :goto_24

    .line 2775
    :cond_51
    invoke-direct/range {p0 .. p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    .line 2777
    .local v11, "userId":I
    invoke-virtual/range {p0 .. p2}, isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_69

    .line 2778
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_66

    .line 2779
    sget-object v14, TAG:Ljava/lang/String;

    const-string v15, " getSlotIdForPackage - token access is not permitted"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    :cond_66
    const-wide/16 v12, -0x1

    goto :goto_24

    .line 2785
    :cond_69
    move-object/from16 v0, p0

    iget-object v14, v0, mDefaultCertAlias:Ljava/lang/String;

    if-nez v14, :cond_72

    .line 2786
    invoke-virtual/range {p0 .. p0}, getDefaultCertificateAlias()Ljava/lang/String;

    .line 2790
    :cond_72
    const/4 v6, 0x0

    .line 2791
    .local v6, "isDefaultCertificateAlias":Z
    if-eqz p3, :cond_f8

    move-object/from16 v0, p0

    iget-object v14, v0, mDefaultCertAlias:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8b

    const-string v14, "Digital Signature"

    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f8

    .line 2795
    :cond_8b
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v14

    if-nez v14, :cond_94

    .line 2796
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    .line 2798
    :cond_94
    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    const-string/jumbo v17, "knox_ccm_policy"

    const-string/jumbo v18, "getSlotIdForPackage"

    invoke-static/range {v14 .. v18}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_f7

    .line 2801
    new-instance v5, Ljava/lang/SecurityException;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Security Exception Occurred while pid["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] with uid["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] trying to access methodName ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "getSlotIdForPackage"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] in ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "knox_ccm_policy"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] service"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 2808
    .local v5, "e":Ljava/lang/SecurityException;
    throw v5

    .line 2813
    .end local v5    # "e":Ljava/lang/SecurityException;
    :cond_f7
    const/4 v6, 0x1

    .line 2816
    :cond_f8
    const/4 v7, 0x0

    .line 2817
    .local v7, "rowCount":I
    const-wide/16 v12, -0x1

    .line 2819
    .local v12, "slotId":J
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_12f

    .line 2820
    sget-object v14, TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UserId - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " packageName - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " alias - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2823
    :cond_12f
    if-nez v6, :cond_1bb

    .line 2825
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2826
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v14, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2827
    const-string/jumbo v14, "pkgName"

    move-object/from16 v0, p2

    invoke-virtual {v4, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2828
    const-string/jumbo v14, "csr"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2831
    if-eqz p3, :cond_162

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_162

    .line 2832
    const-string v14, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v4, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2835
    :cond_162
    :try_start_162
    move-object/from16 v0, p0

    iget-object v14, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "CCMCertTable"

    invoke-virtual {v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_16b
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_16b} :catch_20a

    move-result v14

    add-int/2addr v7, v14

    .line 2845
    :cond_16d
    :goto_16d
    if-nez v7, :cond_1bb

    .line 2846
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2847
    .local v3, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v14, "uid"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2848
    const-string v14, "allowAllPkgs"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2849
    const-string/jumbo v14, "csr"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v3, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2852
    if-eqz p3, :cond_1a2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_1a2

    .line 2853
    const-string v14, "alias"

    move-object/from16 v0, p3

    invoke-virtual {v3, v14, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    :cond_1a2
    :try_start_1a2
    move-object/from16 v0, p0

    iget-object v14, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "CCMCertTable"

    invoke-virtual {v14, v15, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1ab
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1ab} :catch_22e

    move-result v14

    add-int/2addr v7, v14

    .line 2864
    :cond_1ad
    :goto_1ad
    if-lez v7, :cond_1bb

    .line 2865
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_1bb

    .line 2866
    sget-object v14, TAG:Ljava/lang/String;

    const-string/jumbo v15, "in getSlotIdForPackage - all packages are allowed access"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2873
    .end local v3    # "cvW":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    :cond_1bb
    if-nez v6, :cond_1c7

    if-gtz v7, :cond_1c7

    if-eqz p3, :cond_1c7

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_24

    .line 2875
    :cond_1c7
    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "uid"

    aput-object v15, v8, v14

    .line 2876
    .local v8, "sColumns":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v10, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v10, v14

    .line 2878
    .local v10, "sValues":[Ljava/lang/String;
    const/4 v14, 0x1

    new-array v9, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    const-string/jumbo v15, "slotId"

    aput-object v15, v9, v14

    .line 2879
    .local v9, "sReturnColumns":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 2881
    .local v2, "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :try_start_1e4
    move-object/from16 v0, p0

    iget-object v14, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v15, "ClientCertificateManagerTable"

    invoke-virtual {v14, v15, v8, v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_1ed
    .catch Ljava/lang/Exception; {:try_start_1e4 .. :try_end_1ed} :catch_252

    move-result-object v2

    .line 2890
    :cond_1ee
    :goto_1ee
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-lez v14, :cond_24

    .line 2891
    const/4 v14, 0x0

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/ContentValues;

    const-string/jumbo v15, "slotId"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto/16 :goto_24

    .line 2837
    .end local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .end local v8    # "sColumns":[Ljava/lang/String;
    .end local v9    # "sReturnColumns":[Ljava/lang/String;
    .end local v10    # "sValues":[Ljava/lang/String;
    .restart local v4    # "cvWhere":Landroid/content/ContentValues;
    :catch_20a
    move-exception v5

    .line 2838
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_16d

    .line 2839
    sget-object v14, TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getSlotIdForPackage - slotId Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16d

    .line 2858
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "cvW":Landroid/content/ContentValues;
    :catch_22e
    move-exception v5

    .line 2859
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_1ad

    .line 2860
    sget-object v14, TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getSlotIdForPackage - allPackages Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ad

    .line 2884
    .end local v3    # "cvW":Landroid/content/ContentValues;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "cvList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    .restart local v8    # "sColumns":[Ljava/lang/String;
    .restart local v9    # "sReturnColumns":[Ljava/lang/String;
    .restart local v10    # "sValues":[Ljava/lang/String;
    :catch_252
    move-exception v5

    .line 2885
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v14, DBG:Z

    if-eqz v14, :cond_1ee

    .line 2886
    sget-object v14, TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "getSlotIdForPackage - retrieving slot Id Exception"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1ee
.end method

.method public insertOrUpdateCCMProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;)Z
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;

    .prologue
    .line 1895
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_c

    .line 1896
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "in insertOrUpdateCCMProfile"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1899
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, getSlotIdForCaller(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)J

    move-result-wide v0

    .line 1901
    .local v0, "slotId":J
    const-wide v2, 0xffffffffL

    cmp-long v2, v2, v0

    if-nez v2, :cond_28

    .line 1902
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_26

    .line 1903
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "insertOrUpdateCCMProfile - getSlotIdForCaller failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    :cond_26
    const/4 v2, 0x0

    .line 1911
    :goto_27
    return v2

    .line 1907
    :cond_28
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_45

    .line 1908
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertOrUpdateCCMProfile - slot Id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_45
    invoke-direct {p0, p1, p2, v0, v1}, insertOrUpdateCCMProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z

    move-result v2

    goto :goto_27
.end method

.method public insertOrUpdateCertificateProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;)Z
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    .prologue
    const/4 v5, 0x0

    .line 2113
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_d

    .line 2114
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in insertOrUpdateCertificateProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2118
    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_21

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2e

    .line 2120
    :cond_21
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2d

    .line 2121
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    :cond_2d
    :goto_2d
    return v5

    .line 2125
    :cond_2e
    iget-boolean v0, p0, mIsTimaVersion30:Z

    if-nez v0, :cond_3f

    .line 2126
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2d

    .line 2127
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 2131
    :cond_3f
    invoke-virtual {p0, p1}, isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_52

    .line 2132
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2d

    .line 2133
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 2138
    :cond_52
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_83

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_83

    .line 2140
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_64
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 2141
    .local v7, "pkg":Ljava/lang/String;
    invoke-direct {p0, v7}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_64

    .line 2142
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2d

    .line 2143
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "insertOrUpdateCertificateProfile - Invalid packageList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 2149
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_83
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v4

    .line 2151
    .local v4, "userId":I
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {p0, p1, v4, v0}, getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v3

    .line 2152
    .local v3, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v3, :cond_9d

    .line 2153
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2d

    .line 2154
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in insertOrUpdateCertificateProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    :cond_9d
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2158
    invoke-direct/range {v0 .. v5}, insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v5

    goto :goto_2d
.end method

.method public installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "certBytes"    # [B
    .param p4, "privateKeyPassword"    # Ljava/lang/String;

    .prologue
    .line 1501
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_c

    .line 1502
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "in installCertificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    :cond_c
    invoke-direct/range {p0 .. p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1506
    if-eqz p1, :cond_26

    if-eqz p2, :cond_26

    if-eqz p3, :cond_26

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v2, :cond_26

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_34

    .line 1508
    :cond_26
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_32

    .line 1509
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - Invalid Arguments"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    :cond_32
    const/4 v2, 0x0

    .line 1647
    :goto_33
    return v2

    .line 1513
    :cond_34
    move-object/from16 v0, p0

    iget-boolean v2, v0, mIsTimaVersion30:Z

    if-nez v2, :cond_48

    .line 1514
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_46

    .line 1515
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - TIMA version does not include CCM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_46
    const/4 v2, 0x0

    goto :goto_33

    .line 1520
    :cond_48
    invoke-virtual/range {p0 .. p1}, isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 1521
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_5a

    .line 1522
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - CCM is not enabled for caller"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_5a
    const/4 v2, 0x0

    goto :goto_33

    .line 1527
    :cond_5c
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v2, :cond_98

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_98

    .line 1529
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :cond_74
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_98

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1530
    .local v17, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_74

    .line 1531
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_96

    .line 1532
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - Invalid packageList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    :cond_96
    const/4 v2, 0x0

    goto :goto_33

    .line 1538
    .end local v14    # "i$":Ljava/util/Iterator;
    .end local v17    # "pkg":Ljava/lang/String;
    :cond_98
    invoke-direct/range {p0 .. p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v5

    .line 1541
    .local v5, "userId":I
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v2}, getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v4

    .line 1543
    .local v4, "adminId":I
    const/4 v2, -0x1

    if-ne v2, v4, :cond_ba

    .line 1544
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_b7

    .line 1545
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "in installCertificate - failed to get admin Id"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    :cond_b7
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 1550
    :cond_ba
    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v2, v3}, checkAliasExists(IILjava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 1551
    move-object/from16 v0, p1

    iget v3, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_e7

    .line 1553
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_e4

    .line 1554
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - verifyCertificateInstaller returned false"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_e4
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 1579
    :cond_e7
    :try_start_e7
    new-instance v12, Lcom/android/server/enterprise/ccm/CertificateHandler;

    invoke-direct {v12}, Lcom/android/server/enterprise/ccm/CertificateHandler;-><init>()V

    .line 1580
    .local v12, "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v12, v0, v1}, Lcom/android/server/enterprise/ccm/CertificateHandler;->extractPkcs12([BLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18e

    .line 1581
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_102

    .line 1582
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - pkcs12 certificate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :cond_102
    invoke-virtual {v12}, Lcom/android/server/enterprise/ccm/CertificateHandler;->isPrivateKeyExists()Z

    move-result v2

    if-nez v2, :cond_117

    .line 1586
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_114

    .line 1587
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - certificate does not contain private key"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    :cond_114
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 1594
    :cond_117
    invoke-virtual {v12}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getKeyAlgorithm()Ljava/lang/String;

    move-result-object v15

    .line 1595
    .local v15, "keyAlg":Ljava/lang/String;
    if-eqz v15, :cond_125

    const-string v2, "RSA"

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_145

    .line 1596
    :cond_125
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_142

    .line 1597
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installCertificate - certificate does not support key algorithm: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1599
    :cond_142
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 1603
    :cond_145
    invoke-virtual {v12}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getPemCertificateChain()[B

    move-result-object v16

    .line 1604
    .local v16, "pemBytes":[B
    if-nez v16, :cond_15a

    .line 1605
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_157

    .line 1606
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - failed to get certificate chain"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :cond_157
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 1612
    :cond_15a
    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v12}, Lcom/android/server/enterprise/ccm/CertificateHandler;->getFormattedPrivateKey()[B

    move-result-object v8

    const/4 v9, 0x0

    move-object/from16 v0, p2

    iget-boolean v10, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move-object/from16 v0, p2

    iget-boolean v11, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    invoke-static/range {v4 .. v11}, ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_185

    .line 1616
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_182

    .line 1617
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - native ccm_install_object failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    :cond_182
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 1622
    :cond_185
    move-object/from16 p3, v16

    .line 1623
    const/4 v2, 0x1

    move-object/from16 v0, p2

    iput-boolean v2, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z
    :try_end_18c
    .catch Ljava/lang/Exception; {:try_start_e7 .. :try_end_18c} :catch_1bb

    .line 1624
    const/16 p4, 0x0

    .line 1633
    .end local v15    # "keyAlg":Ljava/lang/String;
    .end local v16    # "pemBytes":[B
    :cond_18e
    const-wide/16 v2, 0x0

    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    move-object/from16 v0, p2

    iget-boolean v7, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    move-object/from16 v0, p2

    iget-boolean v8, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-static/range {v4 .. v11}, ccm_install_certificate(IIZZZLjava/lang/String;[BLjava/lang/String;)J

    move-result-wide v6

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1e0

    .line 1636
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1b8

    .line 1637
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "installCertificate - native ccm_install_certificate failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :cond_1b8
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 1626
    .end local v12    # "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    :catch_1bb
    move-exception v13

    .line 1627
    .local v13, "e":Ljava/lang/Exception;
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1dd

    .line 1628
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installCertificate - Exception"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    :cond_1dd
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 1643
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v12    # "certHandler":Lcom/android/server/enterprise/ccm/CertificateHandler;
    :cond_1e0
    const/4 v2, 0x1

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move v9, v4

    move v10, v5

    invoke-direct/range {v6 .. v11}, insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v3

    if-eq v2, v3, :cond_1f3

    .line 1645
    const/4 v2, 0x0

    goto/16 :goto_33

    .line 1647
    :cond_1f3
    const/4 v2, 0x1

    goto/16 :goto_33
.end method

.method public installKeyPair(Landroid/app/enterprise/ContextInfo;[B[BLjava/lang/String;Ljava/lang/String;)Z
    .registers 23
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "privateKey"    # [B
    .param p3, "certBytes"    # [B
    .param p4, "pKeyAlias"    # Ljava/lang/String;
    .param p5, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1310
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_21

    .line 1311
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installKeyPair() for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/app/enterprise/ContextInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, doesCCMSupportKeyAlgorithm([B[B)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 1315
    const/4 v3, 0x0

    .line 1374
    :goto_2e
    return v3

    .line 1318
    :cond_2f
    move-object/from16 v15, p2

    .line 1319
    .local v15, "pKeyBytes":[B
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "installKeyPair()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    if-eqz p3, :cond_d5

    if-eqz p4, :cond_d5

    .line 1326
    :try_start_3d
    const-string v3, "USRPKEY_"

    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 1327
    .local v9, "alias":Ljava/lang/String;
    new-instance v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v5}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 1328
    .local v5, "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    const/4 v3, 0x0

    iput-boolean v3, v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 1329
    iput-object v9, v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 1330
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v12, "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v3, "keystorekeychain"

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1332
    if-eqz p5, :cond_63

    .line 1333
    move-object/from16 v0, p5

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1335
    :cond_63
    iput-object v12, v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    .line 1336
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 1338
    if-eqz v15, :cond_af

    .line 1339
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, getPrivateKeyFromBytes([B)Ljava/security/PrivateKey;

    move-result-object v14

    .line 1340
    .local v14, "pKey":Ljava/security/PrivateKey;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, getCertificateFromBytes([B)Ljava/security/cert/Certificate;

    move-result-object v10

    .line 1341
    .local v10, "cert":Ljava/security/cert/Certificate;
    if-nez v10, :cond_83

    .line 1342
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "cert is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v3, 0x0

    goto :goto_2e

    .line 1345
    :cond_83
    const/16 v16, 0x0

    .line 1346
    .local v16, "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p5, :cond_93

    .line 1347
    new-instance v16, Ljava/util/ArrayList;

    .end local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1348
    .restart local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1350
    :cond_93
    const/4 v6, 0x3

    check-cast v14, Ljava/security/interfaces/RSAPrivateKey;

    .end local v14    # "pKey":Ljava/security/PrivateKey;
    invoke-virtual {v10}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/RSAPublicKey;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v3}, getFormattedPrivateKey(Ljava/security/interfaces/RSAPrivateKey;Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, installObjectWithProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;I[BLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_af

    .line 1357
    const/4 v3, 0x0

    goto :goto_2e

    .line 1361
    .end local v10    # "cert":Ljava/security/cert/Certificate;
    .end local v16    # "packageList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_af
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1362
    .local v13, "outputStream":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v0, p3

    invoke-virtual {v13, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 1364
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->isCSRResponse:Z

    .line 1365
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v5, v3, v4}, installCertificate(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;[BLjava/lang/String;)Z
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_c8} :catch_ce

    move-result v3

    if-nez v3, :cond_d5

    .line 1367
    const/4 v3, 0x0

    goto/16 :goto_2e

    .line 1369
    .end local v5    # "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .end local v9    # "alias":Ljava/lang/String;
    .end local v12    # "keyStoreKeyChainApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "outputStream":Ljava/io/ByteArrayOutputStream;
    :catch_ce
    move-exception v11

    .line 1370
    .local v11, "ex":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 1371
    const/4 v3, 0x0

    goto/16 :goto_2e

    .line 1374
    .end local v11    # "ex":Ljava/lang/Exception;
    :cond_d5
    const/4 v3, 0x1

    goto/16 :goto_2e
.end method

.method public installObject(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;Z)I
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "tokenName"    # Ljava/lang/String;
    .param p4, "tokenPassword"    # Ljava/lang/String;
    .param p5, "objectAlias"    # Ljava/lang/String;
    .param p6, "objectType"    # I
    .param p7, "objectData"    # [B
    .param p8, "objectPassword"    # Ljava/lang/String;
    .param p9, "isTrustedBootRequired"    # Z

    .prologue
    .line 398
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c

    .line 399
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObject"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_c
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 403
    if-eqz p1, :cond_16

    if-eqz p5, :cond_16

    if-nez p7, :cond_24

    .line 404
    :cond_16
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_22

    .line 405
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - invalid input parameters"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_22
    const/4 v0, -0x1

    .line 464
    :goto_23
    return v0

    .line 409
    :cond_24
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 411
    iget-boolean v0, p0, mIsTimaVersion30:Z

    if-nez v0, :cond_39

    .line 412
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_37

    .line 413
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_37
    const/4 v0, -0x1

    goto :goto_23

    .line 417
    :cond_39
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 420
    .local v3, "userId":I
    const/16 v2, 0x3e8

    .line 423
    .local v2, "adminId":I
    invoke-virtual {p0, p1}, isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 424
    const/4 v0, 0x0

    invoke-direct {p0, p1, v3, v0}, getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 425
    const/4 v0, -0x1

    if-ne v0, v2, :cond_5b

    .line 426
    const/16 v2, 0x3e8

    .line 427
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_5b

    .line 428
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_5b
    const/4 v0, 0x0

    invoke-direct {p0, v2, v3, p5, v0}, checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7b

    .line 434
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7b

    .line 436
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_79

    .line 437
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_79
    const/4 v0, -0x1

    goto :goto_23

    .line 443
    :cond_7b
    const-wide/16 v0, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-static/range {v2 .. v9}, ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_9c

    .line 445
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_9a

    .line 446
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - native ccm_install_object failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_9a
    const/4 v0, -0x1

    goto :goto_23

    .line 451
    :cond_9c
    new-instance v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v6}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 452
    .local v6, "profile":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    iput-object p5, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 454
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 455
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    .line 457
    const/4 v0, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v2

    move v8, v3

    invoke-direct/range {v4 .. v9}, insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v1

    if-eq v0, v1, :cond_cc

    .line 459
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c4

    .line 460
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObject - failed to add DB entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_c4
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v0, v3, p5}, ccm_delete_certificate(IILjava/lang/String;)J

    .line 462
    const/4 v0, -0x1

    goto/16 :goto_23

    .line 464
    :cond_cc
    const/4 v0, 0x0

    goto/16 :goto_23
.end method

.method public installObjectWithProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;I[BLjava/lang/String;)Z
    .registers 18
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    .param p3, "objectType"    # I
    .param p4, "objectData"    # [B
    .param p5, "objectPassword"    # Ljava/lang/String;

    .prologue
    .line 1725
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c

    .line 1726
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    :cond_c
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 1730
    if-eqz p1, :cond_22

    if-eqz p2, :cond_22

    if-eqz p4, :cond_22

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    if-eqz v0, :cond_22

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 1732
    :cond_22
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_2e

    .line 1733
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - Invalid Arguments"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    :cond_2e
    const/4 v0, 0x0

    .line 1805
    :goto_2f
    return v0

    .line 1737
    :cond_30
    iget-boolean v0, p0, mIsTimaVersion30:Z

    if-nez v0, :cond_42

    .line 1738
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_40

    .line 1739
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - TIMA version does not include CCM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1741
    :cond_40
    const/4 v0, 0x0

    goto :goto_2f

    .line 1744
    :cond_42
    invoke-virtual {p0, p1}, isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v0

    if-nez v0, :cond_56

    .line 1745
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_54

    .line 1746
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - CCM is not enabled for caller"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    :cond_54
    const/4 v0, 0x0

    goto :goto_2f

    .line 1752
    :cond_56
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    if-eqz v0, :cond_88

    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_88

    .line 1754
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_68
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1755
    .local v11, "pkg":Ljava/lang/String;
    invoke-direct {p0, v11}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_68

    .line 1756
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_86

    .line 1757
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - Invalid packageList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_86
    const/4 v0, 0x0

    goto :goto_2f

    .line 1764
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v11    # "pkg":Ljava/lang/String;
    :cond_88
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 1766
    .local v3, "userId":I
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->packageList:Ljava/util/List;

    invoke-direct {p0, p1, v3, v0}, getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 1768
    .local v2, "adminId":I
    const/4 v0, -0x1

    if-ne v0, v2, :cond_a3

    .line 1769
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_a1

    .line 1770
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - failed to get admin Id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1772
    :cond_a1
    const/4 v0, 0x0

    goto :goto_2f

    .line 1776
    :cond_a3
    iget-object v0, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, v2, v3, v0, v1}, checkAliasExists(IILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c7

    .line 1777
    iget v1, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget-object v4, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, verifyCertificateInstaller(IIILjava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c7

    .line 1779
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c4

    .line 1780
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "installObjectWithProfile - verifyCertificateInstaller returned false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1782
    :cond_c4
    const/4 v0, 0x0

    goto/16 :goto_2f

    .line 1786
    :cond_c7
    const-wide/16 v0, 0x0

    iget-object v4, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    iget-boolean v8, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    iget-boolean v9, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    move v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-static/range {v2 .. v9}, ccm_install_object(IILjava/lang/String;I[BLjava/lang/String;ZZ)J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-eqz v0, :cond_eb

    .line 1789
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_e8

    .line 1790
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - native ccm_install_object failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1792
    :cond_e8
    const/4 v0, 0x0

    goto/16 :goto_2f

    .line 1796
    :cond_eb
    const/4 v0, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move v7, v2

    move v8, v3

    invoke-direct/range {v4 .. v9}, insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v1

    if-eq v0, v1, :cond_10e

    .line 1798
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_104

    .line 1799
    sget-object v0, TAG:Ljava/lang/String;

    const-string/jumbo v1, "in installObjectWithProfile - failed to add DB entry"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    :cond_104
    iget v0, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    iget-object v1, p2, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    invoke-static {v0, v3, v1}, ccm_delete_certificate(IILjava/lang/String;)J

    .line 1802
    const/4 v0, 0x0

    goto/16 :goto_2f

    .line 1805
    :cond_10e
    const/4 v0, 0x1

    goto/16 :goto_2f
.end method

.method public installObjectWithType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I[BLjava/lang/String;)Z
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "objectAlias"    # Ljava/lang/String;
    .param p3, "objectType"    # I
    .param p4, "objectData"    # [B
    .param p5, "objectPassword"    # Ljava/lang/String;

    .prologue
    .line 1713
    const/4 v0, 0x0

    return v0
.end method

.method public isAccessControlMethodPassword(Landroid/app/enterprise/ContextInfo;)Z
    .registers 6
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v1, 0x0

    .line 4272
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_d

    .line 4273
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "in isAccessControlMethodPassword"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4275
    :cond_d
    if-nez p1, :cond_1c

    .line 4276
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1b

    .line 4277
    sget-object v2, TAG:Ljava/lang/String;

    const-string/jumbo v3, "isAccessControlMethodPassword - null cxtInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4292
    :cond_1b
    :goto_1b
    return v1

    .line 4282
    :cond_1c
    invoke-virtual {p0, p1}, getCCMProfile(Landroid/app/enterprise/ContextInfo;)Lcom/sec/enterprise/knox/ccm/CCMProfile;

    move-result-object v0

    .line 4284
    .local v0, "profile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    if-eqz v0, :cond_1b

    .line 4285
    sget-object v2, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iget-object v3, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v2, v3, :cond_1b

    .line 4286
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_34

    .line 4287
    sget-object v1, TAG:Ljava/lang/String;

    const-string/jumbo v2, "isAccessControlMethodPassword return - true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4288
    :cond_34
    const/4 v1, 0x1

    goto :goto_1b
.end method

.method public isCCMEmptyForKeyChain(Landroid/app/enterprise/ContextInfo;)Z
    .registers 4
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 4491
    invoke-virtual {p0, p1}, getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v0

    .line 4492
    .local v0, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_e

    :cond_c
    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public isCCMPolicyEnabledByAdmin(I)Z
    .registers 9
    .param p1, "adminId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3164
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_d

    .line 3165
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "in isCCMPolicyEnabledByAdmin"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3167
    :cond_d
    iget-boolean v4, p0, mIsTimaVersion30:Z

    if-nez v4, :cond_1e

    .line 3168
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1d

    .line 3169
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "isCCMPolicyEnabledByAdmin - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3196
    :cond_1d
    :goto_1d
    return v3

    .line 3174
    :cond_1e
    const/4 v2, 0x0

    .line 3176
    .local v2, "rowCount":I
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_3c

    .line 3177
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCCMPolicyEnabledByAdmin - AdminId - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3179
    :cond_3c
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3180
    .local v0, "cvWhere":Landroid/content/ContentValues;
    const-string v4, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3183
    :try_start_4a
    iget-object v4, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "ClientCertificateManagerTable"

    invoke-virtual {v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_56

    move-result v2

    .line 3192
    :cond_52
    :goto_52
    if-lez v2, :cond_1d

    .line 3193
    const/4 v3, 0x1

    goto :goto_1d

    .line 3185
    :catch_56
    move-exception v1

    .line 3186
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_52

    .line 3187
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isCCMPolicyEnabledByAdmin - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_52
.end method

.method public isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v6, 0x0

    .line 2449
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_d

    .line 2450
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "in isCCMPolicyEnabledForCaller"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2454
    iget v7, p0, mSlotCount:I

    if-gtz v7, :cond_22

    .line 2456
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_21

    .line 2457
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "isCCMPolicyEnabledForCaller - CCM profile is not set"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2495
    :cond_21
    :goto_21
    return v6

    .line 2462
    :cond_22
    if-nez p1, :cond_31

    .line 2463
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_21

    .line 2464
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "isCCMPolicyEnabledForCaller - null cxtInfo"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 2468
    :cond_31
    iget-object v7, p0, mContext:Landroid/content/Context;

    if-nez v7, :cond_3e

    .line 2469
    sget-object v7, TAG:Ljava/lang/String;

    const-string/jumbo v8, "isCCMPolicyEnabledForCaller - Invalid Context "

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 2473
    :cond_3e
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    .line 2475
    .local v1, "callingUid":I
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_63

    .line 2476
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCCMPolicyEnabledForCaller callingUid - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2478
    :cond_63
    const/16 v7, 0x3e8

    if-ne v1, v7, :cond_69

    .line 2479
    const/4 v6, 0x1

    goto :goto_21

    .line 2482
    :cond_69
    const/4 v6, 0x0

    .line 2483
    .local v6, "ret":Z
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 2485
    .local v5, "pkgNames":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_77
    if-ge v2, v3, :cond_81

    aget-object v4, v0, v2

    .line 2486
    .local v4, "pkgName":Ljava/lang/String;
    invoke-virtual {p0, p1, v4}, isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v6

    .line 2487
    if-eqz v6, :cond_9f

    .line 2492
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_81
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_21

    .line 2493
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isCCMPolicyEnabledForCaller returned - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    .line 2485
    .restart local v4    # "pkgName":Ljava/lang/String;
    :cond_9f
    add-int/lit8 v2, v2, 0x1

    goto :goto_77
.end method

.method public isCCMPolicyEnabledForPackage(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2501
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_1d

    .line 2502
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "in isCCMPolicyEnabledForPackage. packageName is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2504
    :cond_1d
    if-nez p1, :cond_29

    .line 2505
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2507
    const/4 v10, 0x0

    .line 2625
    :goto_28
    return v10

    .line 2510
    :cond_29
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2512
    const-string v10, "SecurityPolicy"

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 2513
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_41

    .line 2514
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "security policy must not be allowed to access CCM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    :cond_41
    const/4 v10, 0x0

    goto :goto_28

    .line 2520
    :cond_43
    if-eqz p2, :cond_75

    const-string v10, "com.android.exchange"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5d

    const-string v10, "com.android.email"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5d

    const-string v10, "com.samsung.android.email"

    invoke-virtual {p2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_75

    .line 2523
    :cond_5d
    new-instance v6, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, p1, v10}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;-><init>(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)V

    .line 2525
    .local v6, "emailPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;
    if-eqz v6, :cond_75

    invoke-virtual {v6}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;->isAuthenticationEnabled()Z

    move-result v10

    if-eqz v10, :cond_75

    .line 2526
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, "SmartCardEmailPolicy is enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2527
    const/4 v10, 0x0

    goto :goto_28

    .line 2530
    .end local v6    # "emailPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardEmailPolicy;
    :cond_75
    if-eqz p2, :cond_b8

    const-string v10, "com.android.browser"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9f

    const-string v10, "com.sec.android.app.sbrowser"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9f

    const-string v10, "com.chrome.deviceextras.samsung"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9f

    const-string v10, "com.sec.android.providers.downloads"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9f

    const-string v10, "com.android.providers.downloads"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b8

    .line 2538
    :cond_9f
    new-instance v2, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, p1, v10}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;-><init>(Landroid/app/enterprise/ContextInfo;Landroid/content/Context;)V

    .line 2540
    .local v2, "browserPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
    if-eqz v2, :cond_b8

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;->isAuthenticationEnabled()Z

    move-result v10

    if-eqz v10, :cond_b8

    .line 2542
    sget-object v10, TAG:Ljava/lang/String;

    const-string v11, "SmartCardBrowserPolicy is enabled"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    const/4 v10, 0x0

    goto/16 :goto_28

    .line 2547
    .end local v2    # "browserPolicy":Lcom/sec/enterprise/knox/smartcard/policy/SmartCardBrowserPolicy;
    :cond_b8
    iget v10, p0, mSlotCount:I

    if-gtz v10, :cond_cb

    .line 2549
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_c8

    .line 2550
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - CCM profile is not set"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2552
    :cond_c8
    const/4 v10, 0x0

    goto/16 :goto_28

    .line 2554
    :cond_cb
    iget-boolean v10, p0, mIsTimaVersion30:Z

    if-nez v10, :cond_de

    .line 2555
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_db

    .line 2556
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - TIMA version does not include CCM"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2558
    :cond_db
    const/4 v10, 0x0

    goto/16 :goto_28

    .line 2561
    :cond_de
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v9

    .line 2563
    .local v9, "userId":I
    invoke-direct {p0, p1, v9}, validateCallerContainer(Landroid/app/enterprise/ContextInfo;I)Z

    .line 2565
    const/4 v8, 0x0

    .line 2566
    .local v8, "rowCount":I
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v10, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 2570
    .local v1, "adminList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_f0
    :goto_f0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_155

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2571
    .local v0, "adminId":Ljava/lang/Long;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 2572
    .local v3, "cvW":Landroid/content/ContentValues;
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2573
    const-string v10, "adminUid"

    invoke-virtual {v3, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2574
    const-string v10, "allowAllPkgs"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2577
    :try_start_11a
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_121} :catch_132

    move-result v10

    add-int/2addr v8, v10

    .line 2585
    :cond_123
    :goto_123
    if-lez v8, :cond_f0

    .line 2586
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_f0

    .line 2587
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage - all packages are allowed access"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f0

    .line 2579
    :catch_132
    move-exception v5

    .line 2580
    .local v5, "e":Ljava/lang/Exception;
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_123

    .line 2581
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCCMPolicyEnabledForPackage - allPackages Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123

    .line 2592
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v3    # "cvW":Landroid/content/ContentValues;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_155
    if-nez v8, :cond_1f0

    .line 2593
    invoke-direct {p0, p2}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 2594
    if-nez p2, :cond_168

    .line 2595
    sget-object v10, TAG:Ljava/lang/String;

    const-string/jumbo v11, "isCCMPolicyEnabledForPackage failed - Invalid arguments"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2597
    const/4 v10, 0x0

    goto/16 :goto_28

    .line 2600
    :cond_168
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_16c
    :goto_16c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1f0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 2601
    .restart local v0    # "adminId":Ljava/lang/Long;
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_1a8

    .line 2602
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AdminId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " UserId - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " packageName - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2605
    :cond_1a8
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2606
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string/jumbo v10, "uid"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v4, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2607
    const-string v10, "adminUid"

    invoke-virtual {v4, v10, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2608
    const-string/jumbo v10, "pkgName"

    invoke-virtual {v4, v10, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2611
    :try_start_1c2
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "ClientCertificateManagerTable"

    invoke-virtual {v10, v11, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_1c9
    .catch Ljava/lang/Exception; {:try_start_1c2 .. :try_end_1c9} :catch_1cc

    move-result v10

    add-int/2addr v8, v10

    goto :goto_16c

    .line 2613
    :catch_1cc
    move-exception v5

    .line 2614
    .restart local v5    # "e":Ljava/lang/Exception;
    sget-boolean v10, DBG:Z

    if-eqz v10, :cond_16c

    .line 2615
    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "isCCMPolicyEnabledForPackage - adminId Exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16c

    .line 2621
    .end local v0    # "adminId":Ljava/lang/Long;
    .end local v4    # "cvWhere":Landroid/content/ContentValues;
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_1f0
    if-lez v8, :cond_1f5

    .line 2622
    const/4 v10, 0x1

    goto/16 :goto_28

    .line 2625
    :cond_1f5
    const/4 v10, 0x0

    goto/16 :goto_28
.end method

.method public keychainMarkedReset(Landroid/app/enterprise/ContextInfo;)Z
    .registers 14
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v7, 0x0

    .line 4424
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_d

    .line 4425
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "in keychainMarkedReset"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4427
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 4429
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    const/16 v9, 0x3e8

    if-eq v8, v9, :cond_2b

    .line 4430
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_29

    .line 4431
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - Cannot clear credentials, not a system app"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    move v3, v7

    .line 4480
    :cond_2a
    :goto_2a
    return v3

    .line 4435
    :cond_2b
    if-nez p1, :cond_3b

    .line 4436
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_39

    .line 4437
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - Invalid Arguments"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_39
    move v3, v7

    .line 4438
    goto :goto_2a

    .line 4441
    :cond_3b
    iget-boolean v8, p0, mIsTimaVersion30:Z

    if-nez v8, :cond_4d

    .line 4442
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_4b

    .line 4443
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - TIMA version does not include CCM"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    move v3, v7

    .line 4445
    goto :goto_2a

    .line 4448
    :cond_4d
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v6

    .line 4449
    .local v6, "userId":I
    const/4 v3, 0x1

    .line 4450
    .local v3, "ret":Z
    const/4 v1, 0x0

    .line 4454
    .local v1, "aliasesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_53
    invoke-virtual {p0, p1}, getKeyChainMarkedAliases(Landroid/app/enterprise/ContextInfo;)Ljava/util/List;

    move-result-object v1

    .line 4455
    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_2a

    .line 4456
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v1, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4459
    .local v0, "aliases":[Ljava/lang/String;
    const-wide/16 v8, 0x0

    invoke-static {v6, v0}, ccm_delete_alias_list(I[Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_83

    .line 4460
    sget-boolean v8, DBG:Z

    if-eqz v8, :cond_81

    .line 4461
    sget-object v8, TAG:Ljava/lang/String;

    const-string/jumbo v9, "keychainMarkedReset - native ccm_delete_alias_list failed"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    move v3, v7

    .line 4463
    goto :goto_2a

    .line 4467
    :cond_83
    const/4 v7, 0x3

    new-array v4, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "uid"

    aput-object v8, v4, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "pkgName"

    aput-object v8, v4, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "csr"

    aput-object v8, v4, v7

    .line 4469
    .local v4, "sColumns":[Ljava/lang/String;
    const/4 v7, 0x3

    new-array v5, v7, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string/jumbo v8, "keystorekeychain"

    aput-object v8, v5, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    .line 4471
    .local v5, "sValues":[Ljava/lang/String;
    iget-object v7, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CCMCertTable"

    invoke-virtual {v7, v8, v4, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_b7} :catch_b9

    goto/16 :goto_2a

    .line 4474
    .end local v0    # "aliases":[Ljava/lang/String;
    .end local v4    # "sColumns":[Ljava/lang/String;
    .end local v5    # "sValues":[Ljava/lang/String;
    :catch_b9
    move-exception v2

    .line 4475
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v7, DBG:Z

    if-eqz v7, :cond_db

    .line 4476
    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "keychainMarkedReset - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4477
    :cond_db
    const/4 v3, 0x0

    goto/16 :goto_2a
.end method

.method public onAdminAdded(I)V
    .registers 5
    .param p1, "uid"    # I

    .prologue
    .line 3645
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_1d

    .line 3646
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAdminAdded - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3648
    :cond_1d
    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 7
    .param p1, "uid"    # I

    .prologue
    .line 3661
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1d

    .line 3662
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdminRemoved - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3663
    :cond_1d
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 3665
    .local v1, "userId":I
    const/4 v2, 0x1

    :try_start_22
    invoke-direct {p0, p1, v1, v2}, deleteCertificateProfileUsingAdminId(IIZ)Z

    .line 3666
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, deleteCCMProfileUsingAdminId(IIZ)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_29} :catch_2a

    .line 3671
    :cond_29
    :goto_29
    return-void

    .line 3667
    :catch_2a
    move-exception v0

    .line 3668
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_29

    .line 3669
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onAdminRemoved - Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public onPreAdminRemoval(I)V
    .registers 6
    .param p1, "adminId"    # I

    .prologue
    .line 3652
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_1d

    .line 3653
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPreAdminRemoval - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3654
    :cond_1d
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 3656
    .local v0, "userId":I
    invoke-direct {p0, p1, v0}, deleteCSRProfileUsingAdminId(II)Z

    .line 3657
    return-void
.end method

.method public registerForDefaultCertificate(Landroid/app/enterprise/ContextInfo;ILjava/lang/String;Ljava/lang/String;Z)I
    .registers 12
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "UID"    # I
    .param p3, "registrationPassword"    # Ljava/lang/String;
    .param p4, "oldPassword"    # Ljava/lang/String;
    .param p5, "isTrustedBootRequired"    # Z

    .prologue
    const/4 v3, -0x1

    .line 473
    const/4 v2, -0x1

    .line 474
    .local v2, "ret":I
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_e

    .line 475
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "in registerForDefaultCertificate"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_e
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 479
    if-eqz p1, :cond_16

    if-nez p3, :cond_23

    .line 480
    :cond_16
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_22

    .line 481
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerForDefaultCertificate - invalid input parameters"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_22
    :goto_22
    return v3

    .line 486
    :cond_23
    invoke-direct {p0, p1}, enforcePermission(Landroid/app/enterprise/ContextInfo;)V

    .line 488
    iget-boolean v4, p0, mIsTimaVersion30:Z

    if-nez v4, :cond_37

    .line 489
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_22

    .line 490
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "registerForDefaultCertificate - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 495
    :cond_37
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_58

    .line 496
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "in registerForDefaultCertificate - calling UID is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_58
    invoke-direct {p0}, initParams()V

    .line 501
    iget-object v3, p0, mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v3, :cond_7e

    .line 503
    :try_start_5f
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_6a

    .line 504
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "Called TIMA service registerForDefaultCertificate"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_6a
    iget-object v3, p0, mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/service/tima/ITimaService;->ccmRegisterForDefaultCertificate(ILjava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    .line 509
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 511
    .local v0, "currentUserId":I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v0, v3, v4, v5}, updateLockStatus(IZZZ)Z
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_7e} :catch_80

    .end local v0    # "currentUserId":I
    :cond_7e
    :goto_7e
    move v3, v2

    .line 517
    goto :goto_22

    .line 512
    :catch_80
    move-exception v1

    .line 513
    .local v1, "e":Landroid/os/RemoteException;
    sget-object v3, TAG:Ljava/lang/String;

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e
.end method

.method public removePackageFromExemptList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3263
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_d

    .line 3264
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "in removePackageFromExemptList"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3266
    :cond_d
    invoke-direct {p0, p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3268
    invoke-direct {p0, p2}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3270
    if-eqz p1, :cond_19

    if-nez p2, :cond_26

    .line 3271
    :cond_19
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_25

    .line 3272
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromExemptList - Invalid input"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :cond_25
    :goto_25
    return v2

    .line 3276
    :cond_26
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_43

    .line 3277
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackageFromExemptList packageName - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3280
    :cond_43
    invoke-direct {p0, p1}, enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 3282
    iget-boolean v3, p0, mIsTimaVersion30:Z

    if-nez v3, :cond_58

    .line 3283
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_25

    .line 3284
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromExemptList - TIMA version does not include CCM"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3289
    :cond_58
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v3}, isCCMPolicyEnabledByAdmin(I)Z

    move-result v3

    if-nez v3, :cond_6d

    .line 3290
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_25

    .line 3291
    sget-object v3, TAG:Ljava/lang/String;

    const-string/jumbo v4, "removePackageFromExemptList - CCM is not enabled by admin"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3296
    :cond_6d
    invoke-direct {p0, p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v1

    .line 3298
    .local v1, "userId":I
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-direct {p0, v1, v3, p2}, validatePackageExemption(IILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9d

    .line 3300
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_25

    .line 3301
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removePackageFromExemptList - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not whitelisted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_25

    .line 3306
    :cond_9d
    invoke-direct {p0, v1, p2}, getPackageUid(ILjava/lang/String;)I

    move-result v0

    .line 3308
    .local v0, "uid":I
    const/4 v3, -0x1

    if-eq v3, v0, :cond_25

    .line 3309
    iget v3, p1, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    invoke-static {v2, v3, v1, v0, v2}, ccm_manage_exempt_list(ZIIIZ)J

    .line 3315
    const/4 v2, 0x1

    goto/16 :goto_25
.end method

.method public setCCMProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;)Z
    .registers 36
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CCMProfile;

    .prologue
    .line 542
    const/16 v24, 0x1

    .line 543
    .local v24, "ret":Z
    const-wide/16 v26, 0x0

    .line 544
    .local v26, "slotId":J
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_25

    .line 545
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "in setCCMProfile cxtInfo "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    iget v8, v0, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_25
    invoke-direct/range {p0 .. p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 549
    if-eqz p1, :cond_2d

    if-nez p2, :cond_3c

    .line 550
    :cond_2d
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_39

    .line 551
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid Arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    :cond_39
    const/16 v24, 0x0

    .line 759
    .end local v24    # "ret":Z
    :cond_3b
    :goto_3b
    return v24

    .line 555
    .restart local v24    # "ret":Z
    :cond_3c
    invoke-direct/range {p0 .. p1}, enforceAdminPermission(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 557
    move-object/from16 v0, p0

    iget-boolean v6, v0, mIsTimaVersion30:Z

    if-nez v6, :cond_55

    .line 558
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_52

    .line 559
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - TIMA version does not include CCM"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_52
    const/16 v24, 0x0

    goto :goto_3b

    .line 563
    :cond_55
    move-object/from16 v0, p2

    iget-object v12, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 564
    .local v12, "accessControlMethod":Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;
    const/16 v19, 0x0

    .line 566
    .local v19, "password":Ljava/lang/String;
    sget-object v6, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->PASSWORD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_7a

    .line 567
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlPassword:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 568
    if-nez v19, :cond_7a

    .line 569
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_77

    .line 570
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid Password Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_77
    const/16 v24, 0x0

    goto :goto_3b

    .line 576
    :cond_7a
    sget-object v6, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_e5

    .line 578
    const/16 v30, 0x0

    .line 579
    .local v30, "tuiVersion":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, mTimaService:Landroid/service/tima/ITimaService;

    if-eqz v6, :cond_8e

    .line 581
    :try_start_86
    move-object/from16 v0, p0

    iget-object v6, v0, mTimaService:Landroid/service/tima/ITimaService;

    invoke-interface {v6}, Landroid/service/tima/ITimaService;->getTuiVersion()Ljava/lang/String;
    :try_end_8d
    .catch Landroid/os/RemoteException; {:try_start_86 .. :try_end_8d} :catch_a4

    move-result-object v30

    .line 587
    :cond_8e
    :goto_8e
    if-nez v30, :cond_af

    .line 588
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_9c

    .line 589
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - TUI is not supported"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    :cond_9c
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "TUI is not supported"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 582
    :catch_a4
    move-exception v14

    .line 583
    .local v14, "e":Landroid/os/RemoteException;
    sget-object v6, TAG:Ljava/lang/String;

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8e

    .line 594
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_af
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    if-nez v6, :cond_c5

    .line 595
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_c1

    .line 596
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    :cond_c1
    const/16 v24, 0x0

    goto/16 :goto_3b

    .line 601
    :cond_c5
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    if-ltz v6, :cond_d5

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->pin:[B

    if-nez v6, :cond_e5

    .line 603
    :cond_d5
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_e1

    .line 604
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_e1
    const/16 v24, 0x0

    goto/16 :goto_3b

    .line 612
    .end local v30    # "tuiVersion":Ljava/lang/String;
    :cond_e5
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    if-eqz v6, :cond_123

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_123

    .line 614
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_fd
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_123

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 615
    .local v21, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, getValidString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_fd

    .line 616
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_11f

    .line 617
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid packageList"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :cond_11f
    const/16 v24, 0x0

    goto/16 :goto_3b

    .line 623
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v21    # "pkg":Ljava/lang/String;
    :cond_123
    move-object/from16 v0, p2

    iget-boolean v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->whiteListAllPackages:Z

    if-nez v6, :cond_170

    .line 628
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    if-nez v6, :cond_144

    .line 629
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_13b

    .line 630
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - null packageList"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    :cond_13b
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iput-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 635
    :cond_144
    :try_start_144
    move-object/from16 v0, p0

    iget-object v6, v0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v23

    .line 638
    .local v23, "pkgNames":[Ljava/lang/String;
    move-object/from16 v13, v23

    .local v13, "arr$":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v18, v0

    .local v18, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_15a
    move/from16 v0, v18

    if-ge v15, v0, :cond_170

    aget-object v22, v13, v15

    .line 639
    .local v22, "pkgName":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_169
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_169} :catch_16c

    .line 638
    add-int/lit8 v15, v15, 0x1

    goto :goto_15a

    .line 641
    .end local v13    # "arr$":[Ljava/lang/String;
    .end local v15    # "i$":I
    .end local v18    # "len$":I
    .end local v22    # "pkgName":Ljava/lang/String;
    .end local v23    # "pkgNames":[Ljava/lang/String;
    :catch_16c
    move-exception v14

    .line 642
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    .line 646
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_170
    invoke-direct/range {p0 .. p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v31

    .line 648
    .local v31, "userId":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v7

    move/from16 v0, v31

    move-object/from16 v1, v19

    invoke-static {v6, v0, v7, v1}, ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v26

    .line 651
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1a7

    .line 652
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCCMProfile - slot Id is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-wide/from16 v0, v26

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    :cond_1a7
    const-wide v6, 0xffffffffL

    cmp-long v6, v6, v26

    if-nez v6, :cond_1c0

    .line 655
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1bc

    .line 656
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - native create_slot failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    :cond_1bc
    const/16 v24, 0x0

    goto/16 :goto_3b

    .line 660
    :cond_1c0
    sget-object v6, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->TRUSTED_PINPAD:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    if-ne v6, v12, :cond_295

    .line 662
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->pin:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, verifyCertChain([B)[B

    move-result-object v11

    .line 663
    .local v11, "wrappedPin":[B
    if-nez v11, :cond_1f6

    .line 664
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_1de

    .line 665
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :cond_1de
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, ccm_delete_slot(II)J

    .line 669
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, resetDefaultCCMProfile(II)V

    .line 670
    const/16 v24, 0x0

    goto/16 :goto_3b

    .line 672
    :cond_1f6
    const/4 v10, 0x0

    .line 674
    .local v10, "imageId":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v6, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->secretImage:[B

    if-eqz v6, :cond_247

    .line 676
    :try_start_1ff
    move-object/from16 v0, p0

    iget-object v6, v0, mTimaService:Landroid/service/tima/ITimaService;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget-object v7, v7, Lcom/sec/enterprise/knox/ccm/TUIProperty;->secretImage:[B

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-interface {v6, v7, v8, v9, v0}, Landroid/service/tima/ITimaService;->tuiInitSecret([BIILjava/lang/String;)I

    move-result v6

    if-gez v6, :cond_23b

    .line 679
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_223

    .line 680
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - Invalid TUI Access Control arguments"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_223
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, ccm_delete_slot(II)J

    .line 684
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, resetDefaultCCMProfile(II)V

    .line 685
    const/16 v24, 0x0

    goto/16 :goto_3b

    .line 687
    :cond_23b
    invoke-static/range {v26 .. v27}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 688
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "tuiInitSecret success"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_247
    .catch Landroid/os/RemoteException; {:try_start_1ff .. :try_end_247} :catch_282

    .line 699
    :cond_247
    :goto_247
    move-wide/from16 v0, v26

    long-to-int v7, v0

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v8, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginExpirationPeriod:I

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/sec/enterprise/knox/ccm/CCMProfile;->tuiProperty:Lcom/sec/enterprise/knox/ccm/TUIProperty;

    iget v9, v6, Lcom/sec/enterprise/knox/ccm/TUIProperty;->loginRetry:I

    move-object/from16 v6, p0

    invoke-virtual/range {v6 .. v11}, setTokenTUIProperty(IIILjava/lang/String;[B)I

    move-result v25

    .line 702
    .local v25, "tuiRet":I
    if-eqz v25, :cond_295

    .line 703
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_26a

    .line 704
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "setCCMProfile - setTokenTUIProperty() returns an error"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    :cond_26a
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, ccm_delete_slot(II)J

    .line 708
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, resetDefaultCCMProfile(II)V

    .line 709
    const/16 v24, 0x0

    goto/16 :goto_3b

    .line 690
    .end local v25    # "tuiRet":I
    :catch_282
    move-exception v14

    .line 691
    .local v14, "e":Landroid/os/RemoteException;
    sget-object v6, TAG:Ljava/lang/String;

    const-string/jumbo v7, "exception - tuiInitSecret failed"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    sget-object v6, TAG:Ljava/lang/String;

    invoke-static {v14}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_247

    .line 713
    .end local v10    # "imageId":Ljava/lang/String;
    .end local v11    # "wrappedPin":[B
    .end local v14    # "e":Landroid/os/RemoteException;
    :cond_295
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, insertOrUpdateCCMProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CCMProfile;J)Z

    move-result v7

    if-eq v6, v7, :cond_2bc

    .line 714
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move/from16 v0, v31

    invoke-static {v6, v0}, ccm_delete_slot(II)J

    .line 715
    move-object/from16 v0, p1

    iget v6, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v6, v1}, resetDefaultCCMProfile(II)V

    .line 716
    const/16 v24, 0x0

    goto/16 :goto_3b

    .line 719
    :cond_2bc
    invoke-direct/range {p0 .. p0}, getSlotCount()I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, mSlotCount:I

    .line 721
    invoke-direct/range {p0 .. p0}, initParams()V

    .line 724
    const/16 v17, 0x0

    .line 725
    .local v17, "isPersona":Z
    const/16 v16, 0x1

    .line 726
    .local v16, "isLocked":Z
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v28

    .line 728
    .local v28, "token":J
    :try_start_2cf
    move-object/from16 v0, p0

    iget-object v6, v0, mPersonaMgr:Landroid/os/PersonaManager;

    if-eqz v6, :cond_303

    move-object/from16 v0, p0

    iget-object v6, v0, mPersonaMgr:Landroid/os/PersonaManager;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/PersonaManager;->exists(I)Z

    move-result v6

    if-eqz v6, :cond_303

    .line 729
    const/16 v17, 0x1

    .line 730
    move-object/from16 v0, p0

    iget-object v6, v0, mPersonaMgr:Landroid/os/PersonaManager;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v20

    .line 731
    .local v20, "persInfo":Landroid/content/pm/PersonaInfo;
    if-eqz v20, :cond_303

    move-object/from16 v0, p0

    iget-object v6, v0, mPersonaMgr:Landroid/os/PersonaManager;

    move/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/os/PersonaManager;->getStateManager(I)Landroid/os/PersonaManager$StateManager;

    move-result-object v6

    sget-object v7, Landroid/content/pm/PersonaState;->ACTIVE:Landroid/content/pm/PersonaState;

    invoke-virtual {v6, v7}, Landroid/os/PersonaManager$StateManager;->inState(Landroid/content/pm/PersonaState;)Z
    :try_end_2fe
    .catch Ljava/lang/Exception; {:try_start_2cf .. :try_end_2fe} :catch_378
    .catchall {:try_start_2cf .. :try_end_2fe} :catchall_384

    move-result v6

    if-eqz v6, :cond_303

    .line 733
    const/16 v16, 0x0

    .line 741
    .end local v20    # "persInfo":Landroid/content/pm/PersonaInfo;
    :cond_303
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 744
    :goto_306
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_331

    .line 745
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setCCMProfile - isPersona: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isLocked: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_331
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v17

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v6}, updateLockStatus(IZZZ)Z

    .line 752
    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v7, v0, Landroid/app/enterprise/ContextInfo;->mCallerUid:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v0, v31

    invoke-static {v6, v7, v0, v8, v9}, ccm_manage_exempt_list(ZIIIZ)J

    .line 754
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1, v6}, setCCMAsDefaultCertStore(IZ)Z

    .line 755
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_3b

    .line 756
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isCCMDefaultCertStore says: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-direct {v0, v1}, isCCMDefaultCertStore(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3b

    .line 736
    :catch_378
    move-exception v14

    .line 737
    .local v14, "e":Ljava/lang/Exception;
    :try_start_379
    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_380

    .line 738
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_380
    .catchall {:try_start_379 .. :try_end_380} :catchall_384

    .line 741
    :cond_380
    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_306

    .end local v14    # "e":Ljava/lang/Exception;
    :catchall_384
    move-exception v6

    invoke-static/range {v28 .. v29}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public setCSRProfile(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CSRProfile;)Z
    .registers 20
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "profile"    # Lcom/sec/enterprise/knox/ccm/CSRProfile;

    .prologue
    .line 2900
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_c

    .line 2901
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2903
    :cond_c
    invoke-direct/range {p0 .. p1}, fixContextInfoForMP(Landroid/app/enterprise/ContextInfo;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 2905
    if-eqz p2, :cond_24

    if-eqz p1, :cond_24

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    if-eqz v4, :cond_24

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_32

    .line 2908
    :cond_24
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_30

    .line 2909
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - Invalid Arguments"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    :cond_30
    const/4 v4, 0x0

    .line 2996
    :goto_31
    return v4

    .line 2913
    :cond_32
    move-object/from16 v0, p0

    iget-boolean v4, v0, mIsTimaVersion30:Z

    if-nez v4, :cond_46

    .line 2914
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_44

    .line 2915
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - TIMA version does not include CCM"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2916
    :cond_44
    const/4 v4, 0x0

    goto :goto_31

    .line 2919
    :cond_46
    invoke-virtual/range {p0 .. p1}, isCCMPolicyEnabledForCaller(Landroid/app/enterprise/ContextInfo;)Z

    move-result v4

    if-nez v4, :cond_5a

    .line 2920
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_58

    .line 2921
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "setCSRProfile - CCM is not enabled for caller"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    :cond_58
    const/4 v4, 0x0

    goto :goto_31

    .line 2925
    :cond_5a
    invoke-direct/range {p0 .. p1}, getCallingOrCurrentUserId(Landroid/app/enterprise/ContextInfo;)I

    move-result v3

    .line 2926
    .local v3, "userId":I
    const/4 v6, 0x0

    .line 2928
    .local v6, "subj":[B
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 2929
    .local v16, "str":Ljava/lang/StringBuilder;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    if-eqz v4, :cond_8c

    .line 2930
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CN="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->commonName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2932
    :cond_8c
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    if-eqz v4, :cond_b4

    .line 2933
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DC="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->domainComponent:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2935
    :cond_b4
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    if-eqz v4, :cond_dc

    .line 2936
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "O="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->organization:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2938
    :cond_dc
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    if-eqz v4, :cond_104

    .line 2939
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "L="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->locality:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2941
    :cond_104
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    if-eqz v4, :cond_12c

    .line 2942
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ST="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->state:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2944
    :cond_12c
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    if-eqz v4, :cond_154

    .line 2945
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->country:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2947
    :cond_154
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    if-eqz v4, :cond_17d

    .line 2948
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "emailAddress="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->emailAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2951
    :cond_17d
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v14

    .line 2952
    .local v14, "length":I
    const/4 v4, 0x2

    if-le v14, v4, :cond_198

    .line 2953
    add-int/lit8 v4, v14, -0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 2957
    :try_start_18b
    new-instance v15, Lcom/android/org/bouncycastle/jce/X509Principal;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Lcom/android/org/bouncycastle/jce/X509Principal;-><init>(Ljava/lang/String;)V

    .line 2958
    .local v15, "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/jce/X509Principal;->getEncoded()[B
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_197} :catch_1b3

    move-result-object v6

    .line 2967
    .end local v15    # "prncpal":Lcom/android/org/bouncycastle/jce/X509Principal;
    :cond_198
    :goto_198
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v4}, getAdminIdForCaller(Landroid/app/enterprise/ContextInfo;ILjava/util/List;)I

    move-result v2

    .line 2968
    .local v2, "adminId":I
    const/4 v4, -0x1

    if-ne v4, v2, :cond_1d6

    .line 2969
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1b0

    .line 2970
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile - failed to get admin Id"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2971
    :cond_1b0
    const/4 v4, 0x0

    goto/16 :goto_31

    .line 2960
    .end local v2    # "adminId":I
    :catch_1b3
    move-exception v13

    .line 2961
    .local v13, "e":Ljava/lang/Exception;
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_198

    .line 2962
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "in setCSRProfile - Exception "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_198

    .line 2974
    .end local v13    # "e":Ljava/lang/Exception;
    .restart local v2    # "adminId":I
    :cond_1d6
    const-wide/16 v10, 0x0

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v5, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->keyLength:I

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->profileType:Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;

    invoke-virtual {v7}, Lcom/sec/enterprise/knox/ccm/CSRProfile$ProfileType;->ordinal()I

    move-result v7

    invoke-static/range {v2 .. v7}, ccm_set_csr_profile(IILjava/lang/String;I[BI)J

    move-result-wide v4

    cmp-long v4, v10, v4

    if-eqz v4, :cond_1ff

    .line 2977
    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_1fc

    .line 2978
    sget-object v4, TAG:Ljava/lang/String;

    const-string/jumbo v5, "in setCSRProfile - native ccm_set_csr_profile failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    :cond_1fc
    const/4 v4, 0x0

    goto/16 :goto_31

    .line 2984
    :cond_1ff
    new-instance v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;

    invoke-direct {v9}, Lcom/sec/enterprise/knox/ccm/CertificateProfile;-><init>()V

    .line 2985
    .local v9, "certProf":Lcom/sec/enterprise/knox/ccm/CertificateProfile;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/sec/enterprise/knox/ccm/CSRProfile;->templateName:Ljava/lang/String;

    iput-object v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->alias:Ljava/lang/String;

    .line 2986
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowAllPackages:Z

    .line 2987
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowWiFi:Z

    .line 2988
    const/4 v4, 0x0

    iput-boolean v4, v9, Lcom/sec/enterprise/knox/ccm/CertificateProfile;->allowRawSigning:Z

    .line 2991
    const/4 v4, 0x1

    const/4 v12, 0x1

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move v10, v2

    move v11, v3

    invoke-direct/range {v7 .. v12}, insertOrUpdateCertificateProfileInternal(Landroid/app/enterprise/ContextInfo;Lcom/sec/enterprise/knox/ccm/CertificateProfile;IIZ)Z

    move-result v5

    if-eq v4, v5, :cond_224

    .line 2993
    const/4 v4, 0x0

    goto/16 :goto_31

    .line 2996
    :cond_224
    const/4 v4, 0x1

    goto/16 :goto_31
.end method

.method public setDefaultCCMProfile()Z
    .registers 16

    .prologue
    .line 973
    const-wide v10, 0xffffffffL

    .line 974
    .local v10, "slotId":J
    const/16 v1, 0x3e8

    .line 975
    .local v1, "callerUID":I
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_13

    .line 976
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v12, "in setDefaultCCMProfile"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_13
    iget-boolean v9, p0, mIsTimaVersion30:Z

    if-nez v9, :cond_25

    .line 979
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_23

    .line 980
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v12, "setDefaultCCMProfile - TIMA version does not include CCM"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    :cond_23
    const/4 v9, 0x0

    .line 1055
    :goto_24
    return v9

    .line 986
    :cond_25
    new-instance v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;

    invoke-direct {v4}, Lcom/sec/enterprise/knox/ccm/CCMProfile;-><init>()V

    .line 987
    .local v4, "defaultCCMProfile":Lcom/sec/enterprise/knox/ccm/CCMProfile;
    sget-object v9, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->LOCK_STATE:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    iput-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    .line 988
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    .line 989
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_36
    sget-object v9, defaultPackageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v6, v9, :cond_4e

    .line 990
    sget-object v9, defaultPackageList:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 991
    .local v0, "addPackageName":Ljava/lang/String;
    iget-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 989
    add-int/lit8 v6, v6, 0x1

    goto :goto_36

    .line 995
    .end local v0    # "addPackageName":Ljava/lang/String;
    :cond_4e
    const/4 v9, 0x0

    iget-object v12, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->ordinal()I

    move-result v12

    const/4 v13, 0x0

    invoke-static {v1, v9, v12, v13}, ccm_create_slot(IIILjava/lang/String;)J

    move-result-wide v10

    .line 998
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_81

    .line 999
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setDefaultCCMProfile - slot Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", caller Id is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    :cond_81
    const-wide v12, 0xffffffffL

    cmp-long v9, v12, v10

    if-nez v9, :cond_98

    .line 1003
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_96

    .line 1004
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v12, "setDefaultCCMProfile - native create_slot failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    :cond_96
    const/4 v9, 0x0

    goto :goto_24

    .line 1011
    :cond_98
    :try_start_98
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1012
    .local v2, "cv":Landroid/content/ContentValues;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1014
    .local v3, "cvWhere":Landroid/content/ContentValues;
    iget-object v9, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->packageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_a8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_13c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1015
    .local v8, "pkg":Ljava/lang/String;
    new-instance v2, Landroid/content/ContentValues;

    .end local v2    # "cv":Landroid/content/ContentValues;
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1016
    .restart local v2    # "cv":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1017
    const-string/jumbo v9, "uid"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1018
    const-string v9, "accessType"

    iget-object v12, v4, Lcom/sec/enterprise/knox/ccm/CCMProfile;->accessControlMethod:Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;

    invoke-virtual {v12}, Lcom/sec/enterprise/knox/ccm/CCMProfile$AccessControlMethod;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    const-string/jumbo v9, "loginRetry"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1021
    const-string/jumbo v9, "loginExpiration"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1022
    const-string/jumbo v9, "slotId"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v2, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1023
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1025
    new-instance v3, Landroid/content/ContentValues;

    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1026
    .restart local v3    # "cvWhere":Landroid/content/ContentValues;
    const-string v9, "adminUid"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1027
    const-string/jumbo v9, "uid"

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v3, v9, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1028
    const-string/jumbo v9, "pkgName"

    invoke-virtual {v3, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    const/4 v9, 0x1

    iget-object v12, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "ClientCertificateManagerTable"

    invoke-virtual {v12, v13, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v12

    if-eq v9, v12, :cond_a8

    .line 1032
    sget-boolean v9, DBG:Z

    if-eqz v9, :cond_134

    .line 1033
    sget-object v9, TAG:Ljava/lang/String;

    const-string/jumbo v12, "setDefaultCCMProfile packages - DB operation failed"

    invoke-static {v9, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    :cond_134
    const/4 v9, 0x0

    invoke-static {v1, v9}, ccm_delete_slot(II)J

    .line 1036
    const/4 v9, 0x0

    invoke-direct {p0, v1, v9}, resetDefaultCCMProfile(II)V
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_98 .. :try_end_13c} :catch_152

    .line 1047
    .end local v8    # "pkg":Ljava/lang/String;
    :cond_13c
    invoke-direct {p0}, addDefaultPackageToExemptList()V

    .line 1049
    invoke-direct {p0}, getSlotCount()I

    move-result v9

    iput v9, p0, mSlotCount:I

    .line 1051
    invoke-direct {p0}, initParams()V

    .line 1053
    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {p0, v9, v12, v13, v14}, updateLockStatus(IZZZ)Z

    .line 1055
    const/4 v9, 0x1

    goto/16 :goto_24

    .line 1041
    .end local v2    # "cv":Landroid/content/ContentValues;
    .end local v3    # "cvWhere":Landroid/content/ContentValues;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catch_152
    move-exception v5

    .line 1042
    .local v5, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    invoke-static {v1, v9}, ccm_delete_slot(II)J

    .line 1043
    const/4 v9, 0x0

    invoke-direct {p0, v1, v9}, resetDefaultCCMProfile(II)V

    .line 1044
    const/4 v9, 0x0

    goto/16 :goto_24
.end method

.method public setTokenTUIProperty(IIILjava/lang/String;[B)I
    .registers 10
    .param p1, "slotId"    # I
    .param p2, "loginExpirationTime"    # I
    .param p3, "loginRetry"    # I
    .param p4, "secretImageId"    # Ljava/lang/String;
    .param p5, "wrappedPin"    # [B

    .prologue
    .line 3477
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_41

    .line 3478
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTokenTUIProperty - slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "loginExpirationTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3480
    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTokenTUIProperty - loginRetry="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3482
    :cond_41
    invoke-static {p1, p4, p5, p3, p2}, CCM_SetTokenTUIProperty(ILjava/lang/String;[BII)I

    move-result v0

    .line 3485
    .local v0, "ret":I
    return v0
.end method

.method public systemReady()V
    .registers 1

    .prologue
    .line 3586
    invoke-direct {p0}, handleCCMBuildUpdate()V

    .line 3588
    invoke-direct {p0}, checkMPforCCM()V

    .line 3590
    return-void
.end method
