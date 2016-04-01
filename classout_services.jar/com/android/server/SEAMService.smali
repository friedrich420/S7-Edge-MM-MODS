.class public Lcom/android/server/SEAMService;
.super Lcom/sec/enterprise/knox/seams/ISEAMS$Stub;
.source "SEAMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SEAMService$SpdHandler;,
        Lcom/android/server/SEAMService$BrHandler;
    }
.end annotation


# static fields
.field private static final AASA_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/aasa/"

.field public static final BBC_CONTAINER:I = 0x3

.field private static final BUILD_FINGERPRINT:Ljava/lang/String; = "ro.build.date"

.field private static final CONTEXT_FILE:Ljava/lang/String; = "file_contexts"

.field private static final DECRYPT_CHECK_PROPERTY:Ljava/lang/String; = "vold.decrypt"

.field private static final DRS_SAVED_BUILD_FINGERPRINT:Ljava/lang/String; = "persist.sys.drs.date"

.field private static final ERROR:I = -0x1

.field public static final GOOD_CONTAINER:I = 0x1

.field private static final GSD_CATEGORY:I = 0x66

.field private static final HEX:[C

.field private static final IRM_CATEGORY:I = 0x2be

.field public static final IRM_CONTAINER:I = 0x4

.field private static final IRM_SERVICE:Ljava/lang/String; = "com.samsung.android.irm.service"

.field private static final KNOX_CON_END_NUM:I = 0xc2

.field private static final KNOX_CON_START_NUM:I = 0x64

.field private static final MACPERMISSIONS_FILE:Ljava/lang/String; = "mac_permissions.xml"

.field private static MAC_POLICY_FILE:Ljava/io/File; = null

.field private static MAX_BYTE_ARRAY_SIZE:I = 0x0

.field private static final MDM_POLICY_UPDATE:Ljava/lang/String; = "persist.sys.mdm.auto"

.field private static final MDM_SEANDROID_DUMPSTATE_PROPERTY:Ljava/lang/String; = "persist.security.mdm.SElogs"

.field public static final MYCONTAINER:I = 0x2

.field public static final NON_CONTAINER_TYPE:I = 0x0

.field private static final NeedBadge:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final PERSONA_LOWER_BOUNDARY:I = 0x64

.field private static final PERSONA_UPPER_BOUNDARY:I = 0xc7

.field private static final POLICY_FILE:Ljava/lang/String; = "sepolicy"

.field private static final PROPERTY_FILE:Ljava/lang/String; = "property_contexts"

.field private static final SEAMS_PERMS:[Ljava/lang/String;

.field private static final SEAMS_Version:Ljava/lang/String; = "2.1"

.field private static final SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/"

.field private static final SECONTEXT_FILE:Ljava/lang/String; = "seapp_contexts"

.field private static final SECURED_APPTYPE:I = 0x1

.field public static SELF_PID:I = 0x0

.field private static final SPD_COMPLETE_INTENT:Ljava/lang/String; = "com.samsung.spdsuccess"

.field private static final SPD_SBARELOAD_PERMISSION:Ljava/lang/String; = "com.samsung.spd.SBA_RELOAD"

.field private static final SPD_SEANDROID_FOLDER:Ljava/lang/String; = "/data/security/spota/"

.field private static final SPOTA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.spota"

.field private static final TAG:Ljava/lang/String; = "SEAMService"

.field private static final TRUSTED_APPTYPE:I = 0x2

.field private static final UNCRYPT_CHECK_PROPERTY:Ljava/lang/String; = "ro.crypto.state"

.field private static bootCompleted:Z = false

.field private static final containerStrings:[Ljava/lang/String;

.field private static instance:[Lcom/android/server/SEAMSContainer; = null

.field private static mBootReceiver:Landroid/content/BroadcastReceiver; = null

.field private static mSKLog:Lcom/android/server/SKLogger; = null

.field private static mSPDCompleteReceiver:Landroid/content/BroadcastReceiver; = null

.field private static final mSetPolicy:Ljava/lang/Object;

.field private static policyDataBytes:[B = null

.field private static policyDataBytesPosition:I = 0x0

.field private static policyFileSize:I = 0x0

.field private static policyHash:Ljava/lang/String; = null

.field private static final supportedContainers:I = 0x5


# instance fields
.field private GOOD_SECURED_APPTYPE:I

.field private GOOD_TRUSTED_APPTYPE:I

.field private final mContext:Landroid/content/Context;

.field private mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private final mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private final mHandler:Lcom/android/server/SEAMService$BrHandler;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field final mLock:Ljava/lang/Object;

.field private mPMS:Lcom/android/server/pm/PackageManagerService;

.field mPersona:Landroid/os/PersonaManager;

.field private final sHandler:Lcom/android/server/SEAMService$SpdHandler;

.field private final sHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 145
    sput v3, SELF_PID:I

    .line 165
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/SEAMSContainer;

    sput-object v0, instance:[Lcom/android/server/SEAMSContainer;

    .line 166
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, mSKLog:Lcom/android/server/SKLogger;

    .line 169
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "good"

    aput-object v1, v0, v3

    const-string/jumbo v1, "fixmo"

    aput-object v1, v0, v6

    const-string v1, "container"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string/jumbo v2, "mycontainer"

    aput-object v2, v0, v1

    sput-object v0, containerStrings:[Ljava/lang/String;

    .line 171
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_68

    sput-object v0, HEX:[C

    .line 173
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_SEAMS"

    aput-object v1, v0, v3

    const-string v1, "com.sec.enterprise.knox.permission.KNOX_SEAMS_SEPOLICY"

    aput-object v1, v0, v6

    sput-object v0, SEAMS_PERMS:[Ljava/lang/String;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, NeedBadge:Ljava/util/HashMap;

    .line 211
    sput-object v4, policyDataBytes:[B

    .line 212
    sput v5, policyDataBytesPosition:I

    .line 213
    sput-object v4, policyHash:Ljava/lang/String;

    .line 214
    sput v5, policyFileSize:I

    .line 227
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/security/mac_permissions.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, MAC_POLICY_FILE:Ljava/io/File;

    .line 230
    const/high16 v0, 0x3200000

    sput v0, MAX_BYTE_ARRAY_SIZE:I

    .line 235
    new-array v0, v3, [Ljava/lang/Object;

    sput-object v0, mSetPolicy:Ljava/lang/Object;

    .line 236
    sput-object v4, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    sput-object v4, mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 238
    sput-boolean v3, bootCompleted:Z

    return-void

    .line 171
    nop

    :array_68
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    .line 252
    invoke-direct {p0}, Lcom/sec/enterprise/knox/seams/ISEAMS$Stub;-><init>()V

    .line 191
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    iput-object v6, p0, mLock:Ljava/lang/Object;

    .line 239
    const/4 v6, 0x0

    iput-object v6, p0, mPersona:Landroid/os/PersonaManager;

    .line 244
    iput v8, p0, GOOD_SECURED_APPTYPE:I

    .line 245
    const/4 v6, 0x2

    iput v6, p0, GOOD_TRUSTED_APPTYPE:I

    .line 253
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 254
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "SEAMService"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 255
    iget-object v6, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 256
    new-instance v6, Lcom/android/server/SEAMService$BrHandler;

    iget-object v7, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/SEAMService$BrHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v6, p0, mHandler:Lcom/android/server/SEAMService$BrHandler;

    .line 257
    new-instance v6, Landroid/os/HandlerThread;

    const-string v7, "SPD"

    invoke-direct {v6, v7}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, sHandlerThread:Landroid/os/HandlerThread;

    .line 258
    iget-object v6, p0, sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v6}, Landroid/os/HandlerThread;->start()V

    .line 259
    new-instance v6, Lcom/android/server/SEAMService$SpdHandler;

    iget-object v7, p0, sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v7}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Lcom/android/server/SEAMService$SpdHandler;-><init>(Lcom/android/server/SEAMService;Landroid/os/Looper;)V

    iput-object v6, p0, sHandler:Lcom/android/server/SEAMService$SpdHandler;

    .line 260
    invoke-direct {p0}, registerBootReceiver()V

    .line 261
    const-string/jumbo v6, "package"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageManagerService;

    iput-object v6, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 262
    invoke-direct {p0}, registerSPDCompleteReceiver()V

    .line 263
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    iput-object v6, p0, mPersona:Landroid/os/PersonaManager;

    .line 264
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v4

    .line 265
    .local v4, "serviceKeeper":Lcom/android/server/ServiceKeeper;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->authorizeLoadProcedure()Z

    move-result v3

    .line 266
    .local v3, "ret":Z
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    sput v6, SELF_PID:I

    .line 267
    new-instance v6, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 271
    invoke-direct {p0}, checkFingerprintAndRelabelIfNeeded()I

    move-result v2

    .line 278
    .local v2, "isNewBuild":I
    :try_start_84
    new-instance v5, Ljava/io/File;

    const-string v6, "/data/security/spota/"

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 279
    .local v5, "spdDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_9e

    .line 281
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    .line 282
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 283
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 286
    :cond_9e
    new-instance v0, Ljava/io/File;

    const-string v6, "/data/security/aasa/"

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 287
    .local v0, "aasaDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_b8

    .line 289
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 290
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setReadable(ZZ)Z

    .line 291
    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/io/File;->setWritable(ZZ)Z

    .line 298
    :cond_b8
    if-ne v2, v8, :cond_fb

    const-string/jumbo v6, "ro.crypto.state"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "unencrypted"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f3

    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_restart_framework"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f3

    const-string/jumbo v6, "vold.decrypt"

    const-string/jumbo v7, "none"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "trigger_reset_main"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fb

    .line 301
    :cond_f3
    const-string/jumbo v6, "selinux.sec.restorecon"

    const-string v7, "1"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_fb} :catch_fc

    .line 309
    .end local v0    # "aasaDir":Ljava/io/File;
    .end local v5    # "spdDir":Ljava/io/File;
    :cond_fb
    :goto_fb
    return-void

    .line 305
    :catch_fc
    move-exception v1

    .line 306
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Issue with SPD directory"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_fb
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 142
    sput-boolean p0, bootCompleted:Z

    return p0
.end method

.method static synthetic access$100()Lcom/android/server/SKLogger;
    .registers 1

    .prologue
    .line 142
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/SEAMService;)Lcom/android/server/pm/PackageManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/SEAMService;

    .prologue
    .line 142
    iget-object v0, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method private checkFingerprintAndRelabelIfNeeded()I
    .registers 15

    .prologue
    .line 538
    const-string/jumbo v10, "ro.build.date"

    const-string v11, "NONE"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 541
    .local v2, "curbld":Ljava/lang/String;
    const-string/jumbo v10, "persist.sys.drs.date"

    const-string v11, "NONE"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 543
    .local v6, "oldbld":Ljava/lang/String;
    const/4 v5, 0x0

    .line 544
    .local v5, "isNewbuild":I
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eq v10, v11, :cond_129

    .line 545
    const/4 v5, 0x1

    .line 548
    const/4 v0, 0x0

    .line 549
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const/4 v7, 0x0

    .line 551
    .local v7, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x1

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v11}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 552
    .local v4, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v4, :cond_b8

    .line 553
    invoke-virtual {v4}, Lcom/android/server/SEAMSContainer;->updateSeappContextsAndReload()I

    move-result v10

    if-eqz v10, :cond_36

    .line 554
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "seapp contexts updates had an issue"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    :cond_36
    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, getPkgNamesFromContainer(IZ)Ljava/util/List;

    move-result-object v7

    .line 558
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "got pkgList from getPkgNamesFromContainer"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    if-eqz v7, :cond_ae

    iget-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    if-eqz v10, :cond_ae

    .line 560
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string v12, "PkgList and mPMS not null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_59
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 562
    .local v8, "pkgName":Ljava/lang/String;
    iget-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    const/16 v11, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    invoke-virtual {v10, v8, v11, v12}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 563
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Calling relabelAppDir for pkg:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", seinfo:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", uid:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v13, 0x1

    invoke-virtual {v10, v8, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->relabelAppDir(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_59

    .line 567
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_ae
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "pkglist is empty or pms is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_b8
    const/4 v1, 0x0

    .line 577
    .local v1, "bbcUserId":I
    const/4 v10, 0x3

    const/4 v11, 0x1

    invoke-virtual {p0, v10, v11}, getPkgNamesFromContainer(IZ)Ljava/util/List;

    move-result-object v7

    .line 579
    if-eqz v7, :cond_f2

    iget-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    if-eqz v10, :cond_f2

    iget-object v10, p0, mPersona:Landroid/os/PersonaManager;

    if-eqz v10, :cond_f2

    .line 580
    iget-object v10, p0, mPersona:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/PersonaManager;->getBbcEnabled()I

    move-result v1

    .line 581
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_d3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fc

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 582
    .restart local v8    # "pkgName":Ljava/lang/String;
    iget-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    const/16 v11, 0x80

    invoke-virtual {v10, v8, v11, v1}, Lcom/android/server/pm/PackageManagerService;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 583
    iget-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    iget v12, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v13, 0x0

    invoke-virtual {v10, v8, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->relabelAppDir(Ljava/lang/String;Ljava/lang/String;IZ)Z

    goto :goto_d3

    .line 586
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v8    # "pkgName":Ljava/lang/String;
    :cond_f2
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "pkglist is empty or PMS or Persona is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    :cond_fc
    const/4 v9, 0x0

    .line 590
    .local v9, "val":Ljava/lang/String;
    const-string/jumbo v10, "persist.security.good.enable"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 591
    if-eqz v9, :cond_129

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_129

    .line 592
    if-nez v4, :cond_119

    .line 593
    const/4 v10, 0x1

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v11}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 595
    :cond_119
    if-eqz v4, :cond_129

    .line 596
    invoke-virtual {v4}, Lcom/android/server/SEAMSContainer;->addAgentEntryAfterFotaAndReload()I

    move-result v10

    if-nez v10, :cond_129

    .line 598
    const-string/jumbo v10, "persist.security.good.enable"

    const-string v11, "0"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bbcUserId":I
    .end local v4    # "instanceCon":Lcom/android/server/SEAMSContainer;
    .end local v7    # "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "val":Ljava/lang/String;
    :cond_129
    return v5
.end method

.method private checkSEAMSPermission(IILjava/lang/String;Z)Z
    .registers 14
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "perm"    # Ljava/lang/String;
    .param p4, "ownerOnly"    # Z

    .prologue
    const/16 v6, 0x3e8

    .line 414
    const/4 v3, 0x0

    .line 415
    .local v3, "ret":Z
    const/4 v2, 0x0

    .line 416
    .local v2, "packageName":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 422
    .local v4, "user_id":I
    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-static {v5, p2, p1}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    .line 423
    if-ne p1, v6, :cond_14

    sget v5, SELF_PID:I

    if-eq p2, v5, :cond_1e

    :cond_14
    if-ne p1, v6, :cond_20

    const-string v5, "com.samsung.android.irm.service"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 425
    :cond_1e
    const/4 v5, 0x1

    .line 447
    :goto_1f
    return v5

    .line 427
    :cond_20
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checkSEAMSPermission: packageName:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :try_start_3a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 431
    .local v1, "mPM":Landroid/content/pm/IPackageManager;
    invoke-interface {v1, p3, v2, v4}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_56

    .line 433
    if-eqz p4, :cond_54

    if-eqz v4, :cond_54

    .line 434
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "checkSEAMSPermission, ownerOnly condition not met for global scope api"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v3, 0x0

    .end local v1    # "mPM":Landroid/content/pm/IPackageManager;
    :goto_52
    move v5, v3

    .line 447
    goto :goto_1f

    .line 438
    .restart local v1    # "mPM":Landroid/content/pm/IPackageManager;
    :cond_54
    const/4 v3, 0x1

    goto :goto_52

    .line 441
    :cond_56
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string v7, "checkSEAMSPermission, perm denied"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_5f} :catch_60

    goto :goto_52

    .line 443
    .end local v1    # "mPM":Landroid/content/pm/IPackageManager;
    :catch_60
    move-exception v0

    .line 444
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "expection in check SEAMS permissions"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_52
.end method

.method private checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "perm"    # Ljava/lang/String;
    .param p3, "ownerOnly"    # Z

    .prologue
    const/4 v2, 0x1

    .line 390
    if-eqz p3, :cond_c

    .line 391
    :try_start_3
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceOwnerOnlyPermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;

    move-result-object p1

    .line 409
    :goto_b
    return v2

    .line 397
    :cond_c
    invoke-direct {p0}, getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforcePermissionByContext(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Landroid/app/enterprise/ContextInfo;
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_42

    move-result-object p1

    .line 399
    goto :goto_b

    .line 401
    :catch_15
    move-exception v1

    .line 402
    .local v1, "se":Ljava/lang/SecurityException;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSEAMSPermissionByContext, SecurityException, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 408
    .end local v1    # "se":Ljava/lang/SecurityException;
    :goto_37
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "checkSEAMSPermissionByContext, false is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const/4 v2, 0x0

    goto :goto_b

    .line 404
    :catch_42
    move-exception v0

    .line 405
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkSEAMSPermissionByContext, Exception, return false"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method private copyFiles(Ljava/lang/String;[B)Z
    .registers 13
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .prologue
    .line 641
    const/4 v4, 0x0

    .line 643
    .local v4, "ret":Z
    if-eqz p2, :cond_19

    .line 644
    const/4 v1, 0x0

    .line 646
    .local v1, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_4
    new-instance v3, Ljava/io/File;

    const-string v5, "/data/security/"

    invoke-direct {v3, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    .local v3, "mFileDest":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_10} :catch_3a
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_10} :catch_80
    .catchall {:try_start_4 .. :try_end_10} :catchall_c8

    .line 648
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .local v2, "fileStreamOut":Ljava/io/OutputStream;
    :try_start_10
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_13} :catch_f5
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_f2
    .catchall {:try_start_10 .. :try_end_13} :catchall_ef

    .line 649
    const/4 v4, 0x1

    .line 658
    if-eqz v2, :cond_19

    .line 659
    :try_start_16
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 665
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v3    # "mFileDest":Ljava/io/File;
    :cond_19
    :goto_19
    return v4

    .line 660
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "mFileDest":Ljava/io/File;
    :catch_1a
    move-exception v0

    .line 661
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing OutputStream"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 650
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .end local v3    # "mFileDest":Ljava/io/File;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_3a
    move-exception v0

    .line 651
    .local v0, "e":Ljava/io/FileNotFoundException;
    :goto_3b
    :try_start_3b
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "File Not Found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_59
    .catchall {:try_start_3b .. :try_end_59} :catchall_c8

    .line 652
    const/4 v4, 0x0

    .line 658
    if-eqz v1, :cond_19

    .line 659
    :try_start_5c
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5f
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_19

    .line 660
    :catch_60
    move-exception v0

    .line 661
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing OutputStream"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 653
    .end local v0    # "e":Ljava/io/IOException;
    :catch_80
    move-exception v0

    .line 654
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_81
    :try_start_81
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "copyFile failed "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_81 .. :try_end_9f} :catchall_c8

    .line 655
    const/4 v4, 0x0

    .line 658
    if-eqz v1, :cond_19

    .line 659
    :try_start_a2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a7

    goto/16 :goto_19

    .line 660
    :catch_a7
    move-exception v0

    .line 661
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error closing OutputStream"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_19

    .line 657
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_c8
    move-exception v5

    .line 658
    :goto_c9
    if-eqz v1, :cond_ce

    .line 659
    :try_start_cb
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_ce
    .catch Ljava/io/IOException; {:try_start_cb .. :try_end_ce} :catch_cf

    .line 662
    :cond_ce
    :goto_ce
    throw v5

    .line 660
    :catch_cf
    move-exception v0

    .line 661
    .restart local v0    # "e":Ljava/io/IOException;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error closing OutputStream"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ce

    .line 657
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v3    # "mFileDest":Ljava/io/File;
    :catchall_ef
    move-exception v5

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_c9

    .line 653
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_f2
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto :goto_81

    .line 650
    .end local v1    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v2    # "fileStreamOut":Ljava/io/OutputStream;
    :catch_f5
    move-exception v0

    move-object v1, v2

    .end local v2    # "fileStreamOut":Ljava/io/OutputStream;
    .restart local v1    # "fileStreamOut":Ljava/io/OutputStream;
    goto/16 :goto_3b
.end method

.method private encodeBase16([B)Ljava/lang/String;
    .registers 8
    .param p1, "byteArray"    # [B

    .prologue
    .line 710
    new-instance v0, Ljava/lang/StringBuffer;

    array-length v3, p1

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 711
    .local v0, "hexBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_9
    array-length v3, p1

    if-ge v1, v3, :cond_23

    .line 712
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_d
    if-ltz v2, :cond_20

    .line 713
    sget-object v3, HEX:[C

    aget-byte v4, p1, v1

    mul-int/lit8 v5, v2, 0x4

    shr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    aget-char v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 712
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 711
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 714
    .end local v2    # "j":I
    :cond_23
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V
    .registers 13
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "scannedLine"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .param p4, "scanner"    # Ljava/util/Scanner;
    .param p5, "fileContents"    # Ljava/lang/StringBuilder;

    .prologue
    .line 485
    :goto_0
    :try_start_0
    const-string v3, ": "

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 486
    .local v2, "tokens":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 488
    .local v1, "tempString":Ljava/lang/String;
    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_20

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .end local v1    # "tempString":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :goto_1f
    return-void

    .line 492
    .restart local v1    # "tempString":Ljava/lang/String;
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_20
    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 493
    const-string/jumbo v3, "cwd"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 494
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_40
    :goto_40
    invoke-virtual {p4}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object p2

    .line 505
    goto :goto_0

    .line 496
    :cond_45
    const/4 v3, 0x1

    aget-object v3, v2, v3

    const-string v4, "avc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 499
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7e} :catch_7f

    goto :goto_40

    .line 506
    .end local v1    # "tempString":Ljava/lang/String;
    .end local v2    # "tokens":[Ljava/lang/String;
    :catch_7f
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In getAVCDetails [Exception]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    .line 501
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "tempString":Ljava/lang/String;
    .restart local v2    # "tokens":[Ljava/lang/String;
    :cond_9f
    :try_start_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_b3} :catch_7f

    goto :goto_40
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_11

    .line 334
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 336
    :cond_11
    iget-object v0, p0, mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private static getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    .registers 5
    .param p0, "Container_Type"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 452
    sget-object v0, instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    if-nez v0, :cond_1e

    .line 453
    packed-switch p0, :pswitch_data_42

    .line 467
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMService"

    const-string/jumbo v2, "getInstance, null is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    const/4 v0, 0x0

    .line 471
    :goto_14
    return-object v0

    .line 455
    :pswitch_15
    sget-object v0, instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/GoodContainer;

    invoke-direct {v1, p1}, Lcom/android/server/GoodContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    .line 471
    :cond_1e
    :goto_1e
    sget-object v0, instance:[Lcom/android/server/SEAMSContainer;

    aget-object v0, v0, p0

    goto :goto_14

    .line 458
    :pswitch_23
    sget-object v0, instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/MyContainer;

    invoke-direct {v1, p1}, Lcom/android/server/MyContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_1e

    .line 461
    :pswitch_2d
    sget-object v0, instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/BBCContainer;

    invoke-direct {v1, p1}, Lcom/android/server/BBCContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_1e

    .line 464
    :pswitch_37
    sget-object v0, instance:[Lcom/android/server/SEAMSContainer;

    new-instance v1, Lcom/android/server/IRMContainer;

    invoke-direct {v1, p1}, Lcom/android/server/IRMContainer;-><init>(Landroid/content/Context;)V

    aput-object v1, v0, p0

    goto :goto_1e

    .line 453
    nop

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_15
        :pswitch_23
        :pswitch_2d
        :pswitch_37
    .end packed-switch
.end method

.method private getMdmProperties(I)I
    .registers 7
    .param p1, "property"    # I

    .prologue
    const/4 v1, 0x0

    .line 732
    const-string/jumbo v2, "persist.sys.mdm.auto"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 733
    .local v0, "result":I
    and-int/lit8 v0, v0, -0x1

    .line 734
    and-int v2, v0, p1

    if-nez v2, :cond_19

    .line 735
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string/jumbo v4, "getMdmProperties, FALSE is returned."

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    :goto_18
    return v1

    :cond_19
    const/4 v1, 0x1

    goto :goto_18
.end method

.method private getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2774
    invoke-static {p1}, Lcom/android/server/ResourceManager;->getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    .line 2775
    .local v0, "instance":Lcom/android/server/ResourceManager;
    return-object v0
.end method

.method private static hashset_to_int_array(Ljava/util/HashSet;)[I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1972
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    if-nez v4, :cond_11

    .line 1974
    :cond_8
    const-string v4, "SEAMService"

    const-string v5, " hashset_to_int_array returning null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    const/4 v0, 0x0

    .line 1984
    :cond_10
    return-object v0

    .line 1978
    :cond_11
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 1979
    .local v0, "array":[I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1980
    .local v3, "itr":Ljava/util/Iterator;
    const/4 v1, 0x0

    .line 1981
    .local v1, "i":I
    :goto_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1982
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v0, v1

    move v1, v2

    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_1c
.end method

.method public static isBootComplete()Z
    .registers 1

    .prologue
    .line 2429
    sget-boolean v0, bootCompleted:Z

    return v0
.end method

.method private isPersona(I)Z
    .registers 5
    .param p1, "id"    # I

    .prologue
    .line 610
    const/16 v0, 0x64

    if-gt v0, p1, :cond_a

    const/16 v0, 0xc7

    if-gt p1, v0, :cond_a

    .line 611
    const/4 v0, 0x1

    .line 613
    :goto_9
    return v0

    .line 612
    :cond_a
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    const-string v1, "SEAMService"

    const-string/jumbo v2, "isPersona, false is returned"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/4 v0, 0x0

    goto :goto_9
.end method

.method private processAVCLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .registers 12
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "fileContents"    # Ljava/lang/StringBuilder;
    .param p3, "scannedLine"    # Ljava/lang/String;
    .param p4, "lineSeparator"    # Ljava/lang/String;
    .param p5, "scanner"    # Ljava/util/Scanner;

    .prologue
    .line 513
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p2

    .line 514
    invoke-direct/range {v0 .. v5}, getAVCDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;Ljava/lang/StringBuilder;)V

    .line 517
    :cond_11
    return-void
.end method

.method private processAllowedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "refContainerString"    # Ljava/lang/String;
    .param p2, "fileContents"    # Ljava/lang/StringBuilder;
    .param p3, "scannedLine"    # Ljava/lang/String;
    .param p4, "lineSeparator"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string v0, "all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 523
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    :cond_1c
    return-void
.end method

.method private static processDeniedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    .registers 6
    .param p0, "refContainerString"    # Ljava/lang/String;
    .param p1, "fileContents"    # Ljava/lang/StringBuilder;
    .param p2, "scannedLine"    # Ljava/lang/String;
    .param p3, "lineSeparator"    # Ljava/lang/String;
    .param p4, "scanner"    # Ljava/util/Scanner;

    .prologue
    .line 530
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_1c
    return-void
.end method

.method private registerBootReceiver()V
    .registers 7

    .prologue
    .line 345
    :try_start_0
    sget-object v2, mBootReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1c

    .line 346
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 347
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/SEAMService$1;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$1;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, mBootReceiver:Landroid/content/BroadcastReceiver;

    .line 353
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, mBootReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, mHandler:Lcom/android/server/SEAMService$BrHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 360
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_1c
    :goto_1c
    return-void

    .line 357
    :catch_1d
    move-exception v0

    .line 358
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot register mBootReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method private registerSPDCompleteReceiver()V
    .registers 7

    .prologue
    .line 367
    :try_start_0
    sget-object v2, mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_26

    .line 368
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string v4, "Entered registerSPDCompleteReceiver"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.spdsuccess"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 370
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/SEAMService$2;

    invoke-direct {v2, p0}, Lcom/android/server/SEAMService$2;-><init>(Lcom/android/server/SEAMService;)V

    sput-object v2, mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 379
    iget-object v2, p0, mContext:Landroid/content/Context;

    sget-object v3, mSPDCompleteReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.samsung.spd.SBA_RELOAD"

    iget-object v5, p0, sHandler:Lcom/android/server/SEAMService$SpdHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 385
    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    :cond_26
    :goto_26
    return-void

    .line 382
    :catch_27
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot register mSPDCompleteReceiver"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26
.end method

.method private removePolicyFiles()Z
    .registers 14

    .prologue
    .line 675
    const/4 v8, 0x0

    .line 677
    .local v8, "ret":Z
    :try_start_1
    new-instance v4, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v4, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 679
    .local v4, "fileFolder":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_51

    .line 680
    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 681
    .local v0, "allFiles":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_15
    if-ge v6, v7, :cond_5c

    aget-object v5, v1, v6

    .line 682
    .local v5, "filename":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v9, "/data/security/"

    invoke-direct {v3, v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_29

    .line 681
    :goto_26
    add-int/lit8 v6, v6, 0x1

    goto :goto_15

    .line 684
    :cond_29
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    goto :goto_26

    .line 692
    .end local v0    # "allFiles":[Ljava/lang/String;
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileFolder":Ljava/io/File;
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_2d
    move-exception v2

    .line 693
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception during removePolicyFiles"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v8, 0x0

    .line 697
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_4d
    if-eqz v8, :cond_4f

    :cond_4f
    move v9, v8

    .line 706
    :goto_50
    return v9

    .line 687
    .restart local v4    # "fileFolder":Ljava/io/File;
    :cond_51
    :try_start_51
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "/data/security/ is not a directory."

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    const/4 v9, 0x0

    goto :goto_50

    .line 690
    .restart local v0    # "allFiles":[Ljava/lang/String;
    .restart local v1    # "arr$":[Ljava/lang/String;
    .restart local v6    # "i$":I
    .restart local v7    # "len$":I
    :cond_5c
    const-string/jumbo v9, "selinux.reload_policy"

    const-string v10, "1"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_64} :catch_2d

    .line 691
    const/4 v8, 0x1

    goto :goto_4d
.end method

.method private resetPolicyAssets()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 475
    sput v0, policyFileSize:I

    .line 476
    sput-object v1, policyDataBytes:[B

    .line 477
    sput-object v1, policyHash:Ljava/lang/String;

    .line 478
    sput v0, policyDataBytesPosition:I

    .line 479
    return-void
.end method

.method private setMdmPropertiesLocked(II)V
    .registers 8
    .param p1, "property"    # I
    .param p2, "value"    # I

    .prologue
    .line 718
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 719
    .local v0, "result":I
    and-int/lit8 v1, p1, -0x1

    .line 720
    .local v1, "setValue":I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_1d

    .line 721
    or-int/2addr v0, v1

    .line 726
    :cond_e
    :goto_e
    sget-object v3, mSetPolicy:Ljava/lang/Object;

    monitor-enter v3

    .line 727
    :try_start_11
    const-string/jumbo v2, "persist.sys.mdm.auto"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    monitor-exit v3

    .line 729
    return-void

    .line 722
    :cond_1d
    if-nez p2, :cond_e

    .line 723
    xor-int/lit8 v2, v1, -0x1

    and-int/2addr v0, v2

    goto :goto_e

    .line 728
    :catchall_23
    move-exception v2

    monitor-exit v3
    :try_end_25
    .catchall {:try_start_11 .. :try_end_25} :catchall_23

    throw v2
.end method

.method private setPolicyUpdateProperty(Z)I
    .registers 8
    .param p1, "status"    # Z

    .prologue
    .line 742
    const/4 v1, -0x1

    .line 745
    .local v1, "ret":I
    if-eqz p1, :cond_35

    .line 746
    :try_start_3
    sget-object v3, mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_14

    .line 747
    :try_start_6
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const-string v4, "1"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    monitor-exit v3

    .line 749
    const/4 v1, 0x0

    .line 760
    :goto_10
    return v1

    .line 748
    :catchall_11
    move-exception v2

    monitor-exit v3
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_11

    :try_start_13
    throw v2
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_14} :catch_14

    .line 756
    :catch_14
    move-exception v0

    .line 757
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in method: setPolicyUpdateProperty"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const/4 v1, -0x1

    goto :goto_10

    .line 751
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_35
    :try_start_35
    sget-object v3, mSetPolicy:Ljava/lang/Object;

    monitor-enter v3
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_38} :catch_14

    .line 752
    :try_start_38
    const-string/jumbo v2, "persist.sys.mdm.auto"

    const-string v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    monitor-exit v3

    .line 754
    const/4 v1, 0x0

    goto :goto_10

    .line 753
    :catchall_43
    move-exception v2

    monitor-exit v3
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_43

    :try_start_45
    throw v2
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_46} :catch_14
.end method


# virtual methods
.method public activateDomain(Z)I
    .registers 12
    .param p1, "isBundleActivation"    # Z

    .prologue
    const/4 v6, -0x2

    .line 788
    const-string v3, "activateDomain"

    .line 790
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 791
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 794
    .local v4, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_21

    .line 795
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "activateDomain: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    :goto_20
    return v6

    .line 801
    :cond_21
    :try_start_21
    const-string v7, "SEAMS"

    const-string v8, "activateDomain"

    invoke-virtual {p0, v4, v5, v7, v8}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 803
    .local v0, "containerType":I
    if-gez v0, :cond_59

    .line 804
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Unauthorized call to activateDomain. "

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_34} :catch_35

    goto :goto_20

    .line 811
    .end local v0    # "containerType":I
    :catch_35
    move-exception v1

    .line 812
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in method:activateDomain, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 815
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_57
    const/4 v6, -0x1

    goto :goto_20

    .line 807
    .restart local v0    # "containerType":I
    :cond_59
    :try_start_59
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v6}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 808
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_57

    .line 809
    invoke-virtual {v2, v5, p1}, Lcom/android/server/SEAMSContainer;->activateDomain(IZ)I
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_64} :catch_35

    move-result v6

    goto :goto_20
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 862
    const-string v9, "addAppToContainer"

    .line 864
    .local v9, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 865
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 866
    .local v10, "pid":I
    const/4 v11, 0x0

    .line 867
    .local v11, "ret":I
    const-wide/16 v6, 0x0

    .line 868
    .local v6, "ident":J
    const/4 v8, 0x0

    .line 871
    .local v8, "instanceCon":Lcom/android/server/SEAMSContainer;
    sget-object v13, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_27

    .line 872
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string v15, "addAppToContainer: License validation failed"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    const/4 v13, -0x2

    .line 925
    :goto_26
    return v13

    .line 890
    :cond_27
    :try_start_27
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_46

    .line 891
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v13, v14}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 892
    if-eqz v8, :cond_f0

    .line 893
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    move v13, v11

    .line 894
    goto :goto_26

    .line 896
    :cond_46
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_65

    .line 897
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v13, v14}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 898
    if-eqz v8, :cond_f0

    .line 899
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    move v13, v11

    .line 900
    goto :goto_26

    .line 902
    :cond_65
    const/16 v13, 0x2be

    move/from16 v0, p3

    if-ne v0, v13, :cond_84

    .line 903
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v13, v14}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 904
    if-eqz v8, :cond_f0

    .line 905
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    move v13, v11

    .line 906
    goto :goto_26

    .line 909
    :cond_84
    const-string v13, "SEAMS"

    const-string v14, "addAppToContainer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v14}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 910
    .local v4, "containerType":I
    if-gez v4, :cond_b5

    .line 911
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unauthorized call to addAppToContainer for package name ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "). "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const/4 v13, -0x2

    goto/16 :goto_26

    .line 914
    :cond_b5
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-static {v4, v13}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 915
    if-eqz v8, :cond_f0

    .line 916
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_ca} :catch_ce

    move-result v11

    move v13, v11

    .line 917
    goto/16 :goto_26

    .line 920
    .end local v4    # "containerType":I
    :catch_ce
    move-exception v5

    .line 921
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in methodaddAppToContainer, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 924
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_f0
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string v15, "addAppToContainer POLICY_FAILED is returned "

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const/4 v13, -0x1

    goto/16 :goto_26
.end method

.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 2828
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2829
    const/4 v0, -0x2

    .line 2831
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    goto :goto_9
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 7
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 2793
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2794
    const/4 v0, -0x2

    .line 2796
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/ResourceManager;->addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    goto :goto_9
.end method

.method public clearSBABlacklist(II)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2842
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2844
    const/4 v0, -0x2

    .line 2846
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->clearSBABlacklist(II)I

    move-result v0

    goto :goto_9
.end method

.method public clearWhitelist(II)I
    .registers 5
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2807
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2808
    const/4 v0, -0x2

    .line 2810
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->clearWhitelist(II)I

    move-result v0

    goto :goto_9
.end method

.method public createSEContainer()I
    .registers 11

    .prologue
    .line 1062
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1063
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1064
    .local v4, "pid":I
    const/4 v1, 0x0

    .line 1065
    .local v1, "callpkgName":Ljava/lang/String;
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 1066
    const/4 v3, 0x0

    .line 1067
    .local v3, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v0, 0x0

    .line 1068
    .local v0, "bbcFlag":Z
    invoke-virtual {p0}, isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1069
    invoke-virtual {p0}, getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1070
    const/4 v0, 0x1

    .line 1074
    :cond_1e
    sget-object v6, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_36

    .line 1075
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string/jumbo v8, "createSEContainer: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    const/4 v6, -0x2

    .line 1097
    :goto_35
    return v6

    .line 1080
    :cond_36
    if-eqz v0, :cond_46

    .line 1081
    const/4 v6, 0x3

    :try_start_39
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    .line 1089
    :goto_3f
    if-eqz v3, :cond_80

    .line 1090
    invoke-virtual {v3, v5, v4}, Lcom/android/server/SEAMSContainer;->createSEContainer(II)I

    move-result v6

    goto :goto_35

    .line 1083
    :cond_46
    const-string v6, "com.samsung.android.irm.service"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_56

    .line 1084
    const/4 v6, 0x4

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    goto :goto_3f

    .line 1086
    :cond_56
    const/4 v6, 0x2

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_5c} :catch_5e

    move-result-object v3

    goto :goto_3f

    .line 1092
    :catch_5e
    move-exception v2

    .line 1093
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in createSEContainer"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1096
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_80
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string/jumbo v8, "createSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const/4 v6, -0x1

    goto :goto_35
.end method

.method public deActivateDomain()I
    .registers 11

    .prologue
    const/4 v6, -0x2

    .line 1122
    const-string/jumbo v3, "deActivateDomain"

    .line 1123
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1124
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1127
    .local v4, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_23

    .line 1128
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "deActivateDomain: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    :cond_22
    :goto_22
    return v6

    .line 1134
    :cond_23
    :try_start_23
    const-string v7, "SEAMS"

    const-string/jumbo v8, "deActivateDomain"

    invoke-virtual {p0, v4, v5, v7, v8}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1135
    .local v0, "containerType":I
    if-ltz v0, :cond_22

    .line 1139
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v6}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1140
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_5d

    .line 1141
    invoke-virtual {v2, v5}, Lcom/android/server/SEAMSContainer;->deActivateDomain(I)I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_39} :catch_3b

    move-result v6

    goto :goto_22

    .line 1142
    .end local v0    # "containerType":I
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    :catch_3b
    move-exception v1

    .line 1143
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in method:deActivateDomain, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1146
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5d
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string/jumbo v8, "deActivateDomain, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const/4 v6, -0x1

    goto :goto_22
.end method

.method public getAMSLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1277
    const/4 v1, 0x0

    .line 1278
    .local v1, "amslog":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1279
    .local v7, "refContainerString":Ljava/lang/String;
    const-string/jumbo v6, "getAMSLog"

    .line 1282
    .local v6, "method":Ljava/lang/String;
    sget-object v10, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, p1, v10, v11}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_1d

    .line 1283
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getAMSLog: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    const/4 v10, 0x0

    .line 1314
    :goto_1c
    return-object v10

    .line 1287
    :cond_1d
    const-string v7, "all"

    .line 1291
    :try_start_1f
    const-string v0, "/data/misc/audit/ams.log"

    .line 1292
    .local v0, "ams_logfile":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1293
    .local v3, "file":Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v10, v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1294
    .local v4, "fileContents":Ljava/lang/StringBuilder;
    new-instance v9, Ljava/util/Scanner;

    invoke-direct {v9, v3}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1295
    .local v9, "scanner":Ljava/util/Scanner;
    const-string/jumbo v10, "line.separator"

    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1296
    .local v5, "lineSeparator":Ljava/lang/String;
    :cond_3c
    :goto_3c
    invoke-virtual {v9}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v10

    if-eqz v10, :cond_82

    .line 1297
    invoke-virtual {v9}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v8

    .line 1298
    .local v8, "scannedLine":Ljava/lang/String;
    const-string v10, "Allowed"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_76

    .line 1299
    invoke-direct {p0, v7, v4, v8, v5}, processAllowedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_51} :catch_52

    goto :goto_3c

    .line 1309
    .end local v0    # "ams_logfile":Ljava/lang/String;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fileContents":Ljava/lang/StringBuilder;
    .end local v5    # "lineSeparator":Ljava/lang/String;
    .end local v8    # "scannedLine":Ljava/lang/String;
    .end local v9    # "scanner":Ljava/util/Scanner;
    :catch_52
    move-exception v2

    .line 1310
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in method:getAMSLog, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1311
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :goto_74
    move-object v10, v1

    .line 1314
    goto :goto_1c

    .line 1301
    .restart local v0    # "ams_logfile":Ljava/lang/String;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v4    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v5    # "lineSeparator":Ljava/lang/String;
    .restart local v8    # "scannedLine":Ljava/lang/String;
    .restart local v9    # "scanner":Ljava/util/Scanner;
    :cond_76
    :try_start_76
    const-string v10, "Denied"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3c

    .line 1302
    invoke-static {v7, v4, v8, v5, v9}, processDeniedLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V

    goto :goto_3c

    .line 1307
    .end local v8    # "scannedLine":Ljava/lang/String;
    :cond_82
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1308
    invoke-virtual {v9}, Ljava/util/Scanner;->close()V
    :try_end_89
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_89} :catch_52

    goto :goto_74
.end method

.method public getAMSLogLevel(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1332
    const-string/jumbo v2, "getAMSLogLevel"

    .line 1336
    .local v2, "method":Ljava/lang/String;
    sget-object v4, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1337
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string/jumbo v6, "getAMSLogLevel: License validation failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1338
    const/4 v0, -0x2

    .line 1354
    :cond_1a
    :goto_1a
    return v0

    .line 1342
    :cond_1b
    const/4 v0, -0x1

    .line 1344
    .local v0, "amsLogLevel":I
    const/4 v3, 0x0

    .line 1345
    .local v3, "val":Ljava/lang/String;
    :try_start_1d
    const-string/jumbo v4, "persist.security.ams.verbose"

    const-string v5, "1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1346
    if-eqz v3, :cond_1a

    .line 1347
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_2b} :catch_2d

    move-result v0

    goto :goto_1a

    .line 1350
    :catch_2d
    move-exception v1

    .line 1351
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getAMSLogLevel: Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a
.end method

.method public getAMSMode(Landroid/app/enterprise/ContextInfo;)I
    .registers 11
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1370
    const-string/jumbo v2, "getAMSMode"

    .line 1374
    .local v2, "method":Ljava/lang/String;
    sget-object v6, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-direct {p0, p1, v6, v4}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_1b

    .line 1375
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string/jumbo v6, "getAMSMode: License validation failed"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    const/4 v4, -0x2

    .line 1391
    :cond_1a
    :goto_1a
    return v4

    .line 1380
    :cond_1b
    const/4 v3, 0x0

    .line 1381
    .local v3, "val":Ljava/lang/String;
    :try_start_1c
    const-string/jumbo v6, "persist.security.ams.enforcing"

    const-string v7, "0"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1382
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_28} :catch_39

    move-result v0

    .line 1383
    .local v0, "amsMode":I
    and-int/lit8 v6, v0, 0x1

    if-nez v6, :cond_1a

    .line 1390
    .end local v0    # "amsMode":I
    :goto_2d
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    const-string/jumbo v7, "getAMSMode: FALSE is returned"

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 1391
    goto :goto_1a

    .line 1386
    :catch_39
    move-exception v1

    .line 1387
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in method:getAMSMode, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d
.end method

.method public getAVCLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1406
    const/4 v1, 0x0

    .line 1407
    .local v1, "refContainerString":Ljava/lang/String;
    const-string/jumbo v10, "getAVCLog"

    .line 1411
    .local v10, "method":Ljava/lang/String;
    sget-object v0, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v0, v0, v11

    const/4 v11, 0x1

    invoke-direct {p0, p1, v0, v11}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 1412
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getAVCLog: License validation failed"

    invoke-virtual {v0, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const/4 v7, 0x0

    .line 1437
    :goto_1b
    return-object v7

    .line 1416
    :cond_1c
    const-string v1, "all"

    .line 1417
    const/4 v7, 0x0

    .line 1419
    .local v7, "avclog":Ljava/lang/String;
    :try_start_1f
    const-string v6, "/data/misc/audit/audit.log"

    .line 1420
    .local v6, "avc_logfile":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1421
    .local v9, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v12

    long-to-int v0, v12

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1422
    .local v2, "fileContents":Ljava/lang/StringBuilder;
    new-instance v5, Ljava/util/Scanner;

    invoke-direct {v5, v9}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1423
    .local v5, "scanner":Ljava/util/Scanner;
    const-string/jumbo v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1424
    .local v4, "lineSeparator":Ljava/lang/String;
    :cond_3c
    :goto_3c
    invoke-virtual {v5}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1425
    invoke-virtual {v5}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v3

    .line 1426
    .local v3, "scannedLine":Ljava/lang/String;
    const-string v0, "avc"

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3c

    move-object v0, p0

    .line 1427
    invoke-direct/range {v0 .. v5}, processAVCLine(Ljava/lang/String;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/util/Scanner;)V
    :try_end_52
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_52} :catch_53

    goto :goto_3c

    .line 1432
    .end local v2    # "fileContents":Ljava/lang/StringBuilder;
    .end local v3    # "scannedLine":Ljava/lang/String;
    .end local v4    # "lineSeparator":Ljava/lang/String;
    .end local v5    # "scanner":Ljava/util/Scanner;
    .end local v6    # "avc_logfile":Ljava/lang/String;
    .end local v9    # "file":Ljava/io/File;
    :catch_53
    move-exception v8

    .line 1433
    .local v8, "e":Ljava/io/FileNotFoundException;
    sget-object v0, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception in method:getAVCLog, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1b

    .line 1430
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v4    # "lineSeparator":Ljava/lang/String;
    .restart local v5    # "scanner":Ljava/util/Scanner;
    .restart local v6    # "avc_logfile":Ljava/lang/String;
    .restart local v9    # "file":Ljava/io/File;
    :cond_76
    :try_start_76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1431
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_76 .. :try_end_7d} :catch_53

    goto :goto_1b
.end method

.method public getActivationStatus()I
    .registers 11

    .prologue
    const/4 v6, -0x2

    .line 1235
    const-string/jumbo v3, "getActivationStatus"

    .line 1236
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1237
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1240
    .local v4, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v4, v7, v8}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_23

    .line 1241
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "getActivationStatus: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    :goto_22
    return v6

    .line 1247
    :cond_23
    :try_start_23
    const-string v7, "SEAMS"

    const-string/jumbo v8, "getActivationStatus"

    invoke-virtual {p0, v4, v5, v7, v8}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1249
    .local v0, "containerType":I
    if-gez v0, :cond_66

    .line 1250
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string v9, "Unauthorized call to getActivationStatus. "

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_37} :catch_38

    goto :goto_22

    .line 1256
    .end local v0    # "containerType":I
    :catch_38
    move-exception v1

    .line 1257
    .local v1, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " Exception in method:getActivationStatus, "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1260
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_5a
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string/jumbo v8, "getActivationStatus, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1261
    const/4 v6, -0x1

    goto :goto_22

    .line 1253
    .restart local v0    # "containerType":I
    :cond_66
    :try_start_66
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v0, v6}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1254
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_5a

    .line 1255
    invoke-virtual {v2}, Lcom/android/server/SEAMSContainer;->getActivationStatus()I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_71} :catch_38

    move-result v6

    goto :goto_22
.end method

.method public getAllSEContainerCategory()Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3071
    const-string/jumbo v5, "getAllSEContainerCategory"

    .line 3072
    .local v5, "method":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3074
    .local v8, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getAllSEContainerCategory begin"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3077
    const/4 v10, 0x2

    :try_start_13
    new-array v9, v10, [Ljava/lang/String;

    .line 3078
    .local v9, "sColumns":[Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "containerID"

    aput-object v11, v9, v10

    .line 3079
    const/4 v10, 0x1

    const-string/jumbo v11, "mode"

    aput-object v11, v9, v10

    .line 3080
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SeamsClipboardTable"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v9, v12}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v7

    .line 3082
    .local v7, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getAllSEContainerCategory, got the results for database entries"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3083
    if-eqz v7, :cond_95

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_95

    .line 3085
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_94

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 3086
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v10, "containerID"

    invoke-virtual {v1, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3087
    .local v0, "cat":I
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAllSEContainerCategory, cat:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3088
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_77} :catch_78

    goto :goto_3f

    .line 3112
    .end local v0    # "cat":I
    .end local v1    # "cv":Landroid/content/ContentValues;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9    # "sColumns":[Ljava/lang/String;
    :catch_78
    move-exception v3

    .line 3113
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAllSEContainerCategory() failed with exception:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3115
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_94
    return-object v8

    .line 3092
    .restart local v7    # "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v9    # "sColumns":[Ljava/lang/String;
    :cond_95
    :try_start_95
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getAllSEContainerCategory, calling getSEContainerIDsForSystem"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3093
    iget-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    if-nez v10, :cond_ae

    .line 3094
    const-string/jumbo v10, "package"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageManagerService;

    iput-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 3096
    :cond_ae
    iget-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v10}, Lcom/android/server/pm/PackageManagerService;->getSEContainerIDsForSystem()Ljava/util/List;

    move-result-object v8

    .line 3097
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3098
    .local v2, "cvInsert":Landroid/content/ContentValues;
    if-eqz v8, :cond_94

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_94

    .line 3099
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :goto_c5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_94

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3100
    .restart local v0    # "cat":I
    const-string v10, "containerID"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3101
    const-string/jumbo v10, "mode"

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3103
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SeamsClipboardTable"

    invoke-virtual {v10, v11, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    .line 3104
    .local v6, "res":Z
    if-nez v6, :cond_fb

    .line 3106
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SeamsClipboardTable"

    invoke-virtual {v10, v11, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    .line 3108
    :cond_fb
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "getAllSEContainerCategory, added entry to database for cat:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_116
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_116} :catch_78

    goto :goto_c5
.end method

.method public getBBCFlag()Z
    .registers 2

    .prologue
    .line 2872
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->getBBCFlag()Z

    move-result v0

    return v0
.end method

.method public getDataType(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1680
    const-string/jumbo v6, "getDataType"

    .line 1684
    .local v6, "method":Ljava/lang/String;
    sget-object v8, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v9}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 1685
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDataType: License validation failed"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1713
    :goto_1b
    return-object v1

    .line 1688
    :cond_1c
    const/4 v1, 0x0

    .line 1689
    .local v1, "datatype":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1691
    .local v4, "ident":J
    if-gez p3, :cond_2f

    .line 1692
    :try_start_23
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDataTypeuserId is less than 0."

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1693
    goto :goto_1b

    .line 1697
    :cond_2f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1698
    .local v3, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v8, 0x80

    invoke-interface {v3, p2, v8, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1700
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_47

    .line 1701
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDataTypeappInfo is null."

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1702
    goto :goto_1b

    .line 1704
    :cond_47
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getFileType(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4f} :catch_54

    move-result-object v1

    .line 1712
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "mPM":Landroid/content/pm/IPackageManager;
    :goto_50
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    .line 1708
    :catch_54
    move-exception v2

    .line 1709
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    const/4 v1, 0x0

    goto :goto_50
.end method

.method public getDomain(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 1732
    const-string/jumbo v6, "getDomain"

    .line 1736
    .local v6, "method":Ljava/lang/String;
    sget-object v8, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v8, v8, v9

    const/4 v9, 0x1

    invoke-direct {p0, p1, v8, v9}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 1737
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDomain: License validation failed"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1766
    :goto_1b
    return-object v1

    .line 1741
    :cond_1c
    const/4 v1, 0x0

    .line 1742
    .local v1, "domain":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 1745
    .local v4, "ident":J
    if-gez p3, :cond_2f

    .line 1746
    :try_start_23
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDomain, userId is less than 0."

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1747
    goto :goto_1b

    .line 1751
    :cond_2f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1752
    .local v3, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v8, 0x80

    invoke-interface {v3, p2, v8, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1754
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_47

    .line 1755
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMService"

    const-string/jumbo v10, "getDomain, appInfo is null"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v7

    .line 1756
    goto :goto_1b

    .line 1758
    :cond_47
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, p2, v9}, Landroid/os/SELinux;->getDomain(ILjava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4f} :catch_54

    move-result-object v1

    .line 1765
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "mPM":Landroid/content/pm/IPackageManager;
    :goto_50
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1b

    .line 1761
    :catch_54
    move-exception v2

    .line 1762
    .local v2, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception Error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1763
    const/4 v1, 0x0

    goto :goto_50
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 16
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    const/4 v8, 0x0

    .line 1840
    const-string/jumbo v5, "getPackageNamesFromSEContainer"

    .line 1841
    .local v5, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1842
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1843
    .local v6, "pid":I
    const/4 v4, 0x0

    .line 1844
    .local v4, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v1, 0x0

    .line 1845
    .local v1, "callpkgName":Ljava/lang/String;
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9, v6, v7}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 1846
    const/4 v0, 0x0

    .line 1847
    .local v0, "bbcFlag":Z
    invoke-virtual {p0}, isBBCAgent()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 1848
    invoke-virtual {p0}, getBBCFlag()Z

    move-result v9

    if-eqz v9, :cond_22

    .line 1849
    const/4 v0, 0x1

    .line 1854
    :cond_22
    sget-object v9, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, v7, v6, v9, v10}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_39

    .line 1855
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "getPackageNamesFromSEContainer, License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1887
    :goto_38
    return-object v8

    .line 1860
    :cond_39
    const/16 v9, 0x66

    if-ne p1, v9, :cond_55

    .line 1861
    :try_start_3d
    const-string v9, "SEAMS"

    const-string/jumbo v10, "getPackageNamesFromSEContainer"

    invoke-virtual {p0, v6, v7, v9, v10}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1862
    .local v2, "containerType":I
    if-lez v2, :cond_9f

    .line 1863
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v9}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1864
    if-eqz v4, :cond_9f

    .line 1865
    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v8

    goto :goto_38

    .line 1869
    .end local v2    # "containerType":I
    :cond_55
    if-eqz v0, :cond_65

    .line 1870
    const/4 v9, 0x3

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v9, v10}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1878
    :goto_5e
    if-eqz v4, :cond_9f

    .line 1879
    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getPackageNamesFromSEContainer(II)[Ljava/lang/String;

    move-result-object v8

    goto :goto_38

    .line 1872
    :cond_65
    const-string v9, "com.samsung.android.irm.service"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 1873
    const/4 v9, 0x4

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v9, v10}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    goto :goto_5e

    .line 1875
    :cond_75
    const/4 v9, 0x2

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v9, v10}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7b} :catch_7d

    move-result-object v4

    goto :goto_5e

    .line 1882
    :catch_7d
    move-exception v3

    .line 1883
    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in method:getPackageNamesFromSEContainer, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1884
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1886
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9f
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "getPackageNamesFromSEContainer, null is returned"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2850
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2851
    const/4 v0, 0x0

    .line 2853
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->getPackagesFromSBABlacklist(II)[Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .registers 4
    .param p1, "resourceType"    # I

    .prologue
    .line 2814
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2815
    const/4 v0, 0x0

    .line 2817
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/ResourceManager;->getPackagesFromSBAList(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 2779
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2780
    const/4 v0, 0x0

    .line 2782
    :goto_9
    return-object v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->getPackagesFromWhitelist(II)[Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method public getPkgNamesFromContainer(IZ)Ljava/util/List;
    .registers 17
    .param p1, "CONTAINER_TYPE"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2876
    const-string/jumbo v3, "getPkgNamesFromContainer"

    .line 2877
    .local v3, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 2878
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2879
    .local v5, "pid":I
    const/4 v4, 0x0

    .line 2881
    .local v4, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "SEAMS"

    const-string/jumbo v11, "getPkgNamesFromContainer"

    invoke-virtual {p0, v5, v9, v10, v11}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_19

    .line 2882
    const/4 v10, 0x0

    .line 2913
    :goto_18
    return-object v10

    .line 2884
    :cond_19
    if-eqz p2, :cond_ba

    .line 2885
    const/4 v10, 0x3

    if-ne p1, v10, :cond_24

    .line 2886
    const/4 v10, 0x3

    invoke-static {v10}, Lcom/android/server/pm/SELinuxMMAC;->getAllPackageNamesFromSEContainer(I)Ljava/util/List;

    move-result-object v10

    goto :goto_18

    .line 2887
    :cond_24
    const/4 v10, 0x1

    if-ne p1, v10, :cond_b7

    .line 2888
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getPkgNamesFromContainer for GOOD"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2889
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2890
    .restart local v4    # "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    const/16 v11, 0x66

    const/4 v12, 0x1

    iget v13, p0, GOOD_SECURED_APPTYPE:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->getPackageNamesFromSEContainerID(III)[Ljava/lang/String;

    move-result-object v7

    .line 2891
    .local v7, "pkgArray1":[Ljava/lang/String;
    if-eqz v7, :cond_6b

    .line 2892
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_46
    if-ge v1, v2, :cond_75

    aget-object v6, v0, v1

    .line 2893
    .local v6, "pkg":Ljava/lang/String;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "list of pkgs inside Good as secured:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2894
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2892
    add-int/lit8 v1, v1, 0x1

    goto :goto_46

    .line 2897
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_6b
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "pkgArray1 is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2899
    :cond_75
    iget-object v10, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    const/16 v11, 0x66

    const/4 v12, 0x1

    iget v13, p0, GOOD_TRUSTED_APPTYPE:I

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/server/pm/PackageManagerService;->getContainerAllowPackageNamesFromSEContainer(III)[Ljava/lang/String;

    move-result-object v8

    .line 2900
    .local v8, "pkgArray2":[Ljava/lang/String;
    if-eqz v8, :cond_aa

    .line 2901
    move-object v0, v8

    .restart local v0    # "arr$":[Ljava/lang/String;
    array-length v2, v0

    .restart local v2    # "len$":I
    const/4 v1, 0x0

    .restart local v1    # "i$":I
    :goto_85
    if-ge v1, v2, :cond_b4

    aget-object v6, v0, v1

    .line 2902
    .restart local v6    # "pkg":Ljava/lang/String;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "list of pkgs inside Good as trusted:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2903
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2901
    add-int/lit8 v1, v1, 0x1

    goto :goto_85

    .line 2906
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_aa
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "pkgArray2 is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    move-object v10, v4

    .line 2908
    goto/16 :goto_18

    .line 2910
    .end local v7    # "pkgArray1":[Ljava/lang/String;
    .end local v8    # "pkgArray2":[Ljava/lang/String;
    :cond_b7
    const/4 v10, 0x0

    goto/16 :goto_18

    .line 2913
    :cond_ba
    const/4 v10, 0x0

    goto/16 :goto_18
.end method

.method public getSEAMSLog(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 15
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 1452
    const-string/jumbo v4, "getSEAMSLog"

    .line 1453
    .local v4, "method":Ljava/lang/String;
    const/4 v8, 0x0

    .line 1454
    .local v8, "sklog":Ljava/lang/String;
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "getSEAMSLog_begin"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1456
    sget-object v9, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, p1, v9, v10}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_26

    .line 1458
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "getSEAMSLog: License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const/4 v9, 0x0

    .line 1478
    :goto_25
    return-object v9

    .line 1462
    :cond_26
    :try_start_26
    const-string v7, "/data/misc/audit/sk.log"

    .line 1463
    .local v7, "sk_logfile":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1464
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v9, v10

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1465
    .local v2, "fileContents":Ljava/lang/StringBuilder;
    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v1}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    .line 1466
    .local v6, "scanner":Ljava/util/Scanner;
    const-string/jumbo v9, "line.separator"

    invoke-static {v9}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1467
    .local v3, "lineSeparator":Ljava/lang/String;
    :goto_43
    invoke-virtual {v6}, Ljava/util/Scanner;->hasNextLine()Z

    move-result v9

    if-eqz v9, :cond_8f

    .line 1468
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    .line 1469
    .local v5, "scannedLine":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_61
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_61} :catch_62

    goto :goto_43

    .line 1473
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileContents":Ljava/lang/StringBuilder;
    .end local v3    # "lineSeparator":Ljava/lang/String;
    .end local v5    # "scannedLine":Ljava/lang/String;
    .end local v6    # "scanner":Ljava/util/Scanner;
    .end local v7    # "sk_logfile":Ljava/lang/String;
    :catch_62
    move-exception v0

    .line 1474
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in method:getSEAMSLog, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1475
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1477
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :goto_84
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "Returning SEAMS Log."

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v8

    .line 1478
    goto :goto_25

    .line 1471
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "fileContents":Ljava/lang/StringBuilder;
    .restart local v3    # "lineSeparator":Ljava/lang/String;
    .restart local v6    # "scanner":Ljava/util/Scanner;
    .restart local v7    # "sk_logfile":Ljava/lang/String;
    :cond_8f
    :try_start_8f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1472
    invoke-virtual {v6}, Ljava/util/Scanner;->close()V
    :try_end_96
    .catch Ljava/io/FileNotFoundException; {:try_start_8f .. :try_end_96} :catch_62

    goto :goto_84
.end method

.method public getSEContainerClipboardMode(I)I
    .registers 16
    .param p1, "containerID"    # I

    .prologue
    .line 3018
    const-string/jumbo v6, "getSEContainerClipboardMode"

    .line 3020
    .local v6, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3021
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 3022
    .local v7, "pid":I
    const/4 v8, 0x0

    .line 3023
    .local v8, "ret":Z
    const-wide/16 v2, 0x0

    .line 3024
    .local v2, "ident":J
    const/4 v4, 0x0

    .line 3027
    .local v4, "instanceCon":Lcom/android/server/SEAMSContainer;
    sget-object v10, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    invoke-direct {p0, v9, v7, v10, v11}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_27

    .line 3028
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "getSEContainerClipboardMode: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3029
    const/4 v10, -0x2

    .line 3065
    :goto_26
    return v10

    .line 3033
    :cond_27
    sget v10, SELF_PID:I

    if-eq v7, v10, :cond_84

    .line 3034
    const/4 v10, 0x2

    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-static {v10, v11}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 3035
    if-eqz v4, :cond_78

    .line 3036
    invoke-virtual {v4}, Lcom/android/server/SEAMSContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v5

    .line 3037
    .local v5, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    if-eqz v5, :cond_6c

    .line 3038
    iget-object v10, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    invoke-static {v10, v11, p1}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v10

    if-nez v10, :cond_8d

    .line 3039
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "containerID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is not owned by caller:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3040
    const/4 v10, -0x1

    goto :goto_26

    .line 3043
    :cond_6c
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "mdmID is null"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3044
    const/4 v10, -0x1

    goto :goto_26

    .line 3047
    .end local v5    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_78
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "unable to get instance"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3048
    const/4 v10, -0x1

    goto :goto_26

    .line 3051
    :cond_84
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string v12, "caller is  system_server..proceed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3053
    :cond_8d
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 3054
    .local v1, "cvWhere":Landroid/content/ContentValues;
    const-string v10, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v1, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3056
    iget-object v10, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "SeamsClipboardTable"

    const-string/jumbo v12, "mode"

    invoke-virtual {v10, v11, v12, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 3058
    .local v0, "cvOld":Landroid/content/ContentValues;
    if-eqz v0, :cond_105

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v10

    if-eqz v10, :cond_105

    .line 3059
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "CHecking if entry already exists:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v0}, Landroid/content/ContentValues;->size()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3060
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "the clipboard status for container:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " is:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, "mode"

    invoke-virtual {v0, v13}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3061
    const-string/jumbo v10, "mode"

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto/16 :goto_26

    .line 3063
    :cond_105
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "cvOld is null or size is 0"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3064
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "the clipboard status for container:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " does not exist"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 3065
    const/4 v10, -0x1

    goto/16 :goto_26
.end method

.method public getSEContainerIDs()[I
    .registers 16

    .prologue
    const/4 v10, 0x0

    const/4 v13, 0x1

    .line 1915
    const-string/jumbo v7, "getSEContainerIDs"

    .line 1916
    .local v7, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 1917
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v8

    .line 1918
    .local v8, "pid":I
    const/4 v6, 0x0

    .line 1919
    .local v6, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v1, 0x0

    .line 1920
    .local v1, "callpkgName":Ljava/lang/String;
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-static {v11, v8, v9}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 1921
    const/4 v0, 0x0

    .line 1922
    .local v0, "bbcFlag":Z
    invoke-virtual {p0}, isBBCAgent()Z

    move-result v11

    if-eqz v11, :cond_23

    .line 1923
    invoke-virtual {p0}, getBBCFlag()Z

    move-result v11

    if-eqz v11, :cond_23

    .line 1924
    const/4 v0, 0x1

    .line 1929
    :cond_23
    sget-object v11, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    invoke-direct {p0, v9, v8, v11, v13}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_39

    .line 1930
    sget-object v11, mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    const-string/jumbo v13, "getSEContainerIDs, License validation failed"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    :goto_38
    return-object v10

    .line 1933
    :cond_39
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 1935
    .local v2, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    if-eqz v0, :cond_7c

    .line 1936
    const/4 v11, 0x3

    :try_start_41
    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-static {v11, v12}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v6

    .line 1944
    :goto_47
    if-eqz v6, :cond_c9

    .line 1945
    invoke-virtual {v6}, Lcom/android/server/SEAMSContainer;->getSEContainerIDs()Ljava/util/HashSet;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4c} :catch_94

    move-result-object v2

    move-object v3, v2

    .line 1947
    .end local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .local v3, "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_4e
    :try_start_4e
    const-string v11, "SEAMS"

    const-string/jumbo v12, "getSEContainerIDs"

    invoke-virtual {p0, v8, v9, v11, v12}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1948
    .local v4, "containerType":I
    if-lez v4, :cond_c7

    .line 1949
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v11}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v6

    .line 1950
    if-eqz v6, :cond_c7

    .line 1951
    invoke-virtual {v6}, Lcom/android/server/SEAMSContainer;->getActivationStatus()I

    move-result v11

    if-ne v11, v13, :cond_c7

    .line 1952
    if-nez v3, :cond_c5

    .line 1953
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_6e} :catch_c2

    .line 1955
    .end local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :goto_6e
    const/16 v11, 0x66

    :try_start_70
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1959
    :goto_77
    invoke-static {v2}, hashset_to_int_array(Ljava/util/HashSet;)[I

    move-result-object v10

    goto :goto_38

    .line 1938
    .end local v4    # "containerType":I
    :cond_7c
    const-string v11, "com.samsung.android.irm.service"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8c

    .line 1939
    const/4 v11, 0x4

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-static {v11, v12}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v6

    goto :goto_47

    .line 1941
    :cond_8c
    const/4 v11, 0x2

    iget-object v12, p0, mContext:Landroid/content/Context;

    invoke-static {v11, v12}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_92} :catch_94

    move-result-object v6

    goto :goto_47

    .line 1960
    :catch_94
    move-exception v5

    .line 1961
    .local v5, "e":Ljava/lang/Exception;
    :goto_95
    sget-object v11, mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Exception in getSEContainerIDs:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1962
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1964
    sget-object v11, mSKLog:Lcom/android/server/SKLogger;

    const-string v12, "SEAMService"

    const-string/jumbo v13, "getSEContainerIDs, null is returned"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_38

    .line 1960
    .end local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :catch_c2
    move-exception v5

    move-object v2, v3

    .end local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_95

    .end local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v4    # "containerType":I
    :cond_c5
    move-object v2, v3

    .end local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_6e

    .end local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    :cond_c7
    move-object v2, v3

    .end local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_77

    .end local v4    # "containerType":I
    :cond_c9
    move-object v3, v2

    .end local v2    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v3    # "categorys":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    goto :goto_4e
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 16
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 1512
    const-string/jumbo v5, "getSEContainerIDsFromPackageName"

    .line 1513
    .local v5, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1514
    .local v7, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1515
    .local v6, "pid":I
    const/4 v4, 0x0

    .line 1516
    .local v4, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v1, 0x0

    .line 1517
    .local v1, "callpkgname":Ljava/lang/String;
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v9, v6, v7}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 1518
    const/4 v0, 0x0

    .line 1519
    .local v0, "bbcFlag":Z
    invoke-virtual {p0}, isBBCAgent()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1520
    invoke-virtual {p0}, getBBCFlag()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 1521
    const/4 v0, 0x1

    .line 1526
    :cond_24
    sget-object v9, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    invoke-direct {p0, v7, v6, v9, v11}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_39

    .line 1527
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1559
    :goto_38
    return-object v8

    .line 1532
    :cond_39
    if-eq p2, v11, :cond_3d

    if-ne p2, v12, :cond_55

    .line 1533
    :cond_3d
    :try_start_3d
    const-string v9, "SEAMS"

    const-string/jumbo v10, "getSEContainerIDsFromPackageName"

    invoke-virtual {p0, v6, v7, v9, v10}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 1534
    .local v2, "containerType":I
    if-lez v2, :cond_9f

    .line 1535
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v9}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1536
    if-eqz v4, :cond_9f

    .line 1537
    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v8

    goto :goto_38

    .line 1541
    .end local v2    # "containerType":I
    :cond_55
    if-eqz v0, :cond_65

    .line 1542
    const/4 v9, 0x3

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v9, v10}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    .line 1550
    :goto_5e
    if-eqz v4, :cond_9f

    .line 1551
    invoke-virtual {v4, p1, p2}, Lcom/android/server/SEAMSContainer;->getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I

    move-result-object v8

    goto :goto_38

    .line 1544
    :cond_65
    const-string v9, "com.samsung.android.irm.service"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_75

    .line 1545
    const/4 v9, 0x4

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v9, v10}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v4

    goto :goto_5e

    .line 1547
    :cond_75
    const/4 v9, 0x2

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-static {v9, v10}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_7b} :catch_7d

    move-result-object v4

    goto :goto_5e

    .line 1554
    :catch_7d
    move-exception v3

    .line 1555
    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Exception in method:getSEContainerIDsFromPackageName, "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1558
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_9f
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "getSEContainerIDsFromPackageName, null is returned"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_38
.end method

.method public getSELinuxMode(Landroid/app/enterprise/ContextInfo;)I
    .registers 8
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2059
    const-string/jumbo v1, "getSELinuxMode"

    .line 2062
    .local v1, "method":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_b

    move-result v2

    if-eqz v2, :cond_2d

    .line 2063
    const/4 v2, 0x1

    .line 2069
    :goto_a
    return v2

    .line 2064
    :catch_b
    move-exception v0

    .line 2065
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in method:getSELinuxMode, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2066
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2068
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string/jumbo v4, "getSELinuxMode, FALSE is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2069
    const/4 v2, 0x0

    goto :goto_a
.end method

.method public getSepolicyVersion(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    .line 2081
    const-string/jumbo v1, "getSepolicyVersion"

    .line 2084
    .local v1, "method":Ljava/lang/String;
    const/4 v2, 0x0

    .line 2086
    .local v2, "sepolicyVersion":Ljava/lang/String;
    :try_start_4
    invoke-static {}, Landroid/os/SELinux;->getSEPolicyVersion()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_a

    move-result-object v2

    move-object v3, v2

    .line 2091
    :goto_9
    return-object v3

    .line 2089
    :catch_a
    move-exception v0

    .line 2090
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception in method:getSepolicyVersion, "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2091
    const/4 v3, 0x0

    goto :goto_9
.end method

.method public getSignatureFromCertificate([B)Ljava/lang/String;
    .registers 13
    .param p1, "certificate"    # [B

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 2112
    const-string/jumbo v1, "getSignatureFromCertificate"

    .line 2115
    .local v1, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2116
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 2118
    .local v2, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v7, v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v5, v2, v7, v8}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_23

    .line 2119
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "getSignatureFromCertificate: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2137
    :goto_22
    return-object v6

    .line 2125
    :cond_23
    :try_start_23
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, p1}, Ljava/lang/String;-><init>([B)V

    .line 2126
    .local v4, "signatureString":Ljava/lang/String;
    const-string v7, "-----BEGIN CERTIFICATE-----"

    const-string v8, ""

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-----END CERTIFICATE-----"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 2130
    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 2132
    .local v3, "signatureBytes":[B
    invoke-direct {p0, v3}, encodeBase16([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_44} :catch_46

    move-result-object v6

    goto :goto_22

    .line 2133
    .end local v3    # "signatureBytes":[B
    .end local v4    # "signatureString":Ljava/lang/String;
    :catch_46
    move-exception v0

    .line 2134
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in byte array operations when getting signature."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2136
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "getSignatureFromCertificate: null is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_22
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2256
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 2257
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 2258
    .local v3, "pid":I
    const/4 v0, 0x0

    .line 2259
    .local v0, "bbcFlag":Z
    const/4 v2, 0x0

    .line 2260
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v1, 0x0

    .line 2261
    .local v1, "callpkgName":Ljava/lang/String;
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v3, v5}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 2262
    const/4 v4, 0x0

    .line 2264
    .local v4, "ret":Ljava/lang/String;
    if-nez p1, :cond_20

    .line 2265
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string/jumbo v8, "getSignatureFromMac: packageName is null"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2266
    const/4 v6, 0x0

    .line 2290
    :goto_1f
    return-object v6

    .line 2269
    :cond_20
    invoke-virtual {p0}, isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 2270
    invoke-virtual {p0}, getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_2d

    .line 2271
    const/4 v0, 0x1

    .line 2275
    :cond_2d
    if-eqz v0, :cond_3c

    .line 2276
    const/4 v6, 0x3

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 2277
    invoke-virtual {v2, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_3a
    move-object v6, v4

    .line 2290
    goto :goto_1f

    .line 2280
    :cond_3c
    const-string v6, "com.samsung.android.irm.service"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 2281
    const/4 v6, 0x4

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 2282
    invoke-virtual {v2, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3a

    .line 2285
    :cond_50
    const/4 v6, 0x2

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 2286
    invoke-virtual {v2, p1}, Lcom/android/server/SEAMSContainer;->getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3a
.end method

.method public getSignatureFromPackage(Ljava/lang/String;)Ljava/lang/String;
    .registers 18
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2157
    const-string/jumbo v5, "getSignatureFromPackage"

    .line 2159
    .local v5, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2160
    .local v11, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2162
    .local v7, "pid":I
    const/4 v2, 0x0

    .line 2163
    .local v2, "currentUserId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2164
    const/4 v1, 0x0

    .line 2167
    .local v1, "bbcFlag":Z
    sget-object v12, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7, v12, v13}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_2b

    .line 2168
    sget-object v12, mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage: License validation failed"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    const/4 v9, 0x0

    .line 2232
    :goto_2a
    return-object v9

    .line 2171
    :cond_2b
    if-nez p1, :cond_39

    .line 2172
    sget-object v12, mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2173
    const/4 v9, 0x0

    goto :goto_2a

    .line 2176
    :cond_39
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    .line 2177
    .local v8, "pm":Landroid/content/pm/IPackageManager;
    const/4 v6, 0x0

    .line 2179
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v8, :cond_f6

    .line 2180
    const/16 v12, 0x40

    :try_start_42
    move-object/from16 v0, p1

    invoke-interface {v8, v0, v12, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2183
    if-eqz v6, :cond_68

    .line 2184
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2185
    .local v10, "s":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 2186
    .local v9, "returnSignature":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4e
    array-length v12, v10

    if-ge v4, v12, :cond_f6

    .line 2187
    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_65

    .line 2188
    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    .line 2190
    goto :goto_2a

    .line 2186
    :cond_65
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 2194
    .end local v4    # "i":I
    .end local v9    # "returnSignature":Ljava/lang/String;
    .end local v10    # "s":[Landroid/content/pm/Signature;
    :cond_68
    invoke-virtual/range {p0 .. p0}, isBBCAgent()Z

    move-result v12

    if-eqz v12, :cond_75

    .line 2195
    invoke-virtual/range {p0 .. p0}, getBBCFlag()Z

    move-result v12

    if-eqz v12, :cond_75

    .line 2196
    const/4 v1, 0x1

    .line 2199
    :cond_75
    if-eqz v1, :cond_c7

    .line 2200
    move-object/from16 v0, p0

    iget-object v12, v0, mPersona:Landroid/os/PersonaManager;

    if-eqz v12, :cond_ba

    .line 2201
    move-object/from16 v0, p0

    iget-object v12, v0, mPersona:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/PersonaManager;->getBbcEnabled()I

    move-result v2

    .line 2202
    const/16 v12, 0x40

    move-object/from16 v0, p1

    invoke-interface {v8, v0, v12, v2}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 2203
    if-eqz v6, :cond_ad

    .line 2204
    iget-object v10, v6, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 2205
    .restart local v10    # "s":[Landroid/content/pm/Signature;
    const/4 v9, 0x0

    .line 2206
    .restart local v9    # "returnSignature":Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_93
    array-length v12, v10

    if-ge v4, v12, :cond_f6

    .line 2207
    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_aa

    .line 2208
    aget-object v12, v10, v4

    invoke-virtual {v12}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v9

    .line 2210
    goto :goto_2a

    .line 2206
    :cond_aa
    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    .line 2214
    .end local v4    # "i":I
    .end local v9    # "returnSignature":Ljava/lang/String;
    .end local v10    # "s":[Landroid/content/pm/Signature;
    :cond_ad
    sget-object v12, mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, pi is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2215
    const/4 v9, 0x0

    goto/16 :goto_2a

    .line 2218
    :cond_ba
    sget-object v12, mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, mPersona is null"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    const/4 v9, 0x0

    goto/16 :goto_2a

    .line 2222
    :cond_c7
    sget-object v12, mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, bbcFlag is false"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_d1} :catch_d4

    .line 2223
    const/4 v9, 0x0

    goto/16 :goto_2a

    .line 2227
    :catch_d4
    move-exception v3

    .line 2228
    .local v3, "e1":Ljava/lang/Exception;
    sget-object v12, mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception in method:getSignatureFromPackage, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2229
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 2231
    .end local v3    # "e1":Ljava/lang/Exception;
    :cond_f6
    sget-object v12, mSKLog:Lcom/android/server/SKLogger;

    const-string v13, "SEAMService"

    const-string/jumbo v14, "getSignatureFromPackage, null is returned"

    invoke-virtual {v12, v13, v14}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2232
    const/4 v9, 0x0

    goto/16 :goto_2a
.end method

.method public hasKnoxContainers()I
    .registers 11

    .prologue
    .line 2318
    const/4 v5, 0x0

    .line 2319
    .local v5, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2321
    .local v2, "ident":J
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2323
    .local v4, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    :try_start_a
    iget-object v6, p0, mPersona:Landroid/os/PersonaManager;

    if-nez v6, :cond_1d

    .line 2325
    iget-object v6, p0, mContext:Landroid/content/Context;

    iget-object v7, p0, mContext:Landroid/content/Context;

    const-string/jumbo v7, "persona"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PersonaManager;

    iput-object v6, p0, mPersona:Landroid/os/PersonaManager;

    .line 2328
    :cond_1d
    iget-object v6, p0, mPersona:Landroid/os/PersonaManager;

    if-eqz v6, :cond_6f

    .line 2330
    iget-object v6, p0, mPersona:Landroid/os/PersonaManager;

    invoke-virtual {v6}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v4

    .line 2331
    if-eqz v4, :cond_6f

    .line 2332
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2a
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_6f

    .line 2333
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    iget v6, v6, Landroid/content/pm/PersonaInfo;->id:I

    const/16 v7, 0x64

    if-lt v6, v7, :cond_49

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PersonaInfo;

    iget v6, v6, Landroid/content/pm/PersonaInfo;->id:I
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_44} :catch_4c

    const/16 v7, 0xc2

    if-gt v6, v7, :cond_49

    .line 2335
    const/4 v5, 0x1

    .line 2332
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    .line 2343
    .end local v1    # "i":I
    :catch_4c
    move-exception v0

    .line 2344
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "hasKnoxContainers - Exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2345
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2347
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_6f
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2349
    return v5
.end method

.method public hasSEContainers()I
    .registers 8

    .prologue
    .line 2376
    const/4 v1, 0x0

    .line 2378
    .local v1, "result":I
    :try_start_1
    invoke-static {}, Lcom/android/server/pm/SELinuxMMAC;->hasSEContainers()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2379
    const/4 v1, 0x1

    .line 2381
    :cond_8
    const/4 v2, 0x0

    .line 2382
    .local v2, "val":Ljava/lang/String;
    const-string/jumbo v3, "persist.security.good.enable"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2383
    if-eqz v2, :cond_1d

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1e

    move-result v3

    if-eqz v3, :cond_1d

    .line 2384
    const/4 v1, 0x1

    .line 2391
    .end local v2    # "val":Ljava/lang/String;
    :cond_1d
    :goto_1d
    return v1

    .line 2386
    :catch_1e
    move-exception v0

    .line 2387
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "hasSEContainers - Exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2388
    const/4 v1, -0x1

    goto :goto_1d
.end method

.method public isAuthorized(IILjava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "service"    # Ljava/lang/String;
    .param p4, "method"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 2410
    sget-boolean v2, bootCompleted:Z

    if-nez v2, :cond_a

    sget v2, SELF_PID:I

    if-ne v2, p1, :cond_a

    .line 2422
    :cond_9
    :goto_9
    return v0

    .line 2414
    :cond_a
    invoke-static {}, Lcom/android/server/ServiceKeeper;->getServiceKeeper()Lcom/android/server/ServiceKeeper;

    move-result-object v1

    .line 2415
    .local v1, "sk":Lcom/android/server/ServiceKeeper;
    invoke-static {}, Lcom/android/server/ServiceKeeper;->isTableActive()Z

    move-result v2

    if-nez v2, :cond_18

    sget v2, SELF_PID:I

    if-eq v2, p1, :cond_9

    .line 2419
    :cond_18
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2, p3, p4}, Lcom/android/server/ServiceKeeper;->isAuthorized(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 2422
    .local v0, "result":I
    goto :goto_9
.end method

.method public isBBCAgent()Z
    .registers 2

    .prologue
    .line 2857
    iget-object v0, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->isBBCAgent()Z

    move-result v0

    return v0
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceType"    # I

    .prologue
    .line 2821
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2822
    const/4 v0, -0x2

    .line 2824
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/ResourceManager;->isSBAApp(Ljava/lang/String;I)I

    move-result v0

    goto :goto_9
.end method

.method public isSEAndroidLogDumpStateInclude(Landroid/app/enterprise/ContextInfo;)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2031
    const-string/jumbo v1, "isSEAndroidLogDumpStateInclude"

    .line 2034
    .local v1, "method":Ljava/lang/String;
    sget-object v5, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-direct {p0, p1, v5, v3}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1b

    .line 2035
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string/jumbo v5, "isSEAndroidLogDumpStateInclude: License validation failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2036
    const/4 v3, -0x2

    .line 2048
    :cond_1a
    :goto_1a
    return v3

    .line 2040
    :cond_1b
    :try_start_1b
    const-string/jumbo v5, "persist.security.mdm.SElogs"

    const-string v6, "1"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2041
    .local v2, "val":Ljava/lang/String;
    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_29} :catch_38

    move-result v5

    if-nez v5, :cond_1a

    .line 2047
    .end local v2    # "val":Ljava/lang/String;
    :goto_2c
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    const-string/jumbo v6, "isSEAndroidLogDumpStateInclude, FALSE is returned"

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 2048
    goto :goto_1a

    .line 2043
    :catch_38
    move-exception v0

    .line 2044
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v5, "SEAMService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception in method:isSEAndroidLogDumpStateInclude, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method public isSEPolicyAutoUpdateEnabled(Landroid/app/enterprise/ContextInfo;)I
    .registers 16
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 1577
    const/4 v7, -0x1

    .line 1578
    .local v7, "ret":I
    const/4 v8, 0x0

    .line 1579
    .local v8, "settingValue":I
    const-string/jumbo v4, "isSEPolicyAutoUpdateEnabled"

    .line 1583
    .local v4, "method":Ljava/lang/String;
    sget-object v11, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v11, v11, v5

    invoke-direct {p0, p1, v11, v10}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v11

    if-nez v11, :cond_1d

    .line 1584
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "isSEPolicyAutoUpdateEnabled: License validation failed"

    invoke-virtual {v10, v11, v12}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1585
    const/4 v10, -0x2

    .line 1622
    :goto_1c
    return v10

    .line 1587
    :cond_1d
    iget-object v11, p0, mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v11}, Landroid/app/enterprise/EnterpriseDeviceManager;->getEnterpriseSdkVer()Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    move-result-object v0

    .line 1588
    .local v0, "currentVersion":Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;
    sget-object v11, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->ENTERPRISE_SDK_VERSION_5_6:Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;

    invoke-virtual {v0, v11}, Landroid/app/enterprise/EnterpriseDeviceManager$EnterpriseSdkVersion;->compareTo(Ljava/lang/Enum;)I

    move-result v11

    if-gez v11, :cond_82

    .line 1589
    const-wide/16 v2, 0x0

    .line 1592
    .local v2, "ident":J
    :try_start_2d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1593
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    const-string v12, "android"

    const-string v13, "com.sec.android.app.msa"

    invoke-interface {v11, v12, v13}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_40

    move v5, v10

    .line 1596
    .local v5, "msaInstalled":Z
    :cond_40
    invoke-virtual {p0, p1}, getSELinuxMode(Landroid/app/enterprise/ContextInfo;)I

    move-result v11

    if-ne v11, v10, :cond_59

    .line 1597
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v11, "security_update_db"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_53} :catch_69
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_53} :catch_76

    move-result v7

    .line 1610
    .end local v5    # "msaInstalled":Z
    :cond_54
    :goto_54
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v2    # "ident":J
    :goto_57
    move v10, v7

    .line 1622
    goto :goto_1c

    .line 1599
    .restart local v2    # "ident":J
    .restart local v5    # "msaInstalled":Z
    :cond_59
    if-eqz v5, :cond_54

    .line 1600
    :try_start_5b
    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "cr_msa_auto_update"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_67} :catch_69
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_67} :catch_76

    move-result v7

    goto :goto_54

    .line 1603
    .end local v5    # "msaInstalled":Z
    :catch_69
    move-exception v6

    .line 1604
    .local v6, "re":Landroid/os/RemoteException;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string/jumbo v12, "remote exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1605
    const/4 v7, -0x1

    .line 1609
    goto :goto_54

    .line 1606
    .end local v6    # "re":Landroid/os/RemoteException;
    :catch_76
    move-exception v1

    .line 1607
    .local v1, "e":Ljava/lang/Exception;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string v12, "Exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1608
    const/4 v7, -0x1

    goto :goto_54

    .line 1613
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "ident":J
    :cond_82
    :try_start_82
    const-string/jumbo v10, "spd_control_policy"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lcom/sec/enterprise/spd/ISPDControlPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/spd/ISPDControlPolicy;

    move-result-object v9

    .line 1615
    .local v9, "spdControlPolicy":Lcom/sec/enterprise/spd/ISPDControlPolicy;
    invoke-interface {v9}, Lcom/sec/enterprise/spd/ISPDControlPolicy;->getAutoSecurityPolicyUpdateMode()I

    move-result v8

    .line 1616
    rem-int/lit8 v7, v8, 0x2
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_93} :catch_94

    goto :goto_57

    .line 1617
    .end local v9    # "spdControlPolicy":Lcom/sec/enterprise/spd/ISPDControlPolicy;
    :catch_94
    move-exception v6

    .line 1618
    .restart local v6    # "re":Landroid/os/RemoteException;
    sget-object v10, mSKLog:Lcom/android/server/SKLogger;

    const-string v11, "SEAMService"

    const-string v12, "Exception in method:isSEPolicyAutoUpdateEnabled"

    invoke-virtual {v10, v11, v12, v6}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1619
    const/4 v7, -0x1

    goto :goto_57
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    .line 2786
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2787
    const/4 v0, -0x2

    .line 2789
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->isWhitelistApp(ILjava/lang/String;I)I

    move-result v0

    goto :goto_9
.end method

.method public loadContainerSetting(Ljava/lang/String;)I
    .registers 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2452
    const-string/jumbo v4, "loadContainerSetting"

    .line 2453
    .local v4, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2454
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 2456
    .local v5, "pid":I
    sget-object v7, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v7, v7, v8

    invoke-direct {p0, v6, v5, v7, v9}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_23

    .line 2457
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "loadContainerSetting: License validation failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2458
    const/4 v7, -0x2

    .line 2479
    :goto_22
    return v7

    .line 2463
    :cond_23
    const/4 v7, 0x1

    :try_start_24
    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-static {v7, v8}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 2464
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    if-eqz v2, :cond_6c

    .line 2465
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 2466
    .local v3, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v7, 0x80

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-interface {v3, p1, v7, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2468
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_43

    .line 2469
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, p1, v7, v8}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v7

    goto :goto_22

    .line 2471
    :cond_43
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v2, p1, v7, v8}, Lcom/android/server/SEAMSContainer;->loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_48} :catch_4a

    move-result v7

    goto :goto_22

    .line 2474
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "instanceCon":Lcom/android/server/SEAMSContainer;
    .end local v3    # "mPM":Landroid/content/pm/IPackageManager;
    :catch_4a
    move-exception v1

    .line 2475
    .local v1, "e":Ljava/lang/Exception;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in method:loadContainerSetting, "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2476
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2478
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6c
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMService"

    const-string/jumbo v9, "loadContainerSetting: POLICY_FAILED is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    const/4 v7, -0x1

    goto :goto_22
.end method

.method public relabelAppDir(Ljava/lang/String;)I
    .registers 15
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2502
    const-string/jumbo v6, "relabelAppDir"

    .line 2503
    .local v6, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2504
    .local v8, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    .line 2506
    .local v7, "pid":I
    sget-object v9, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v10, 0x0

    aget-object v9, v9, v10

    const/4 v10, 0x1

    invoke-direct {p0, v8, v7, v9, v10}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_23

    .line 2507
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "relabelAppDir: License validation failed"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2508
    const/4 v9, -0x2

    .line 2562
    :goto_22
    return v9

    .line 2511
    :cond_23
    if-nez p1, :cond_31

    .line 2512
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "packageName is null"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    const/4 v9, 0x0

    goto :goto_22

    .line 2516
    :cond_31
    const/4 v4, 0x0

    .line 2517
    .local v4, "hasApp":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 2518
    .local v2, "currentUid":I
    const/4 v1, 0x0

    .line 2519
    .local v1, "bbcFlag":Z
    invoke-virtual {p0}, isBBCAgent()Z

    move-result v9

    if-eqz v9, :cond_47

    .line 2520
    invoke-virtual {p0}, getBBCFlag()Z

    move-result v9

    if-eqz v9, :cond_47

    .line 2521
    const/4 v1, 0x1

    .line 2525
    :cond_47
    if-eqz v1, :cond_4f

    .line 2526
    iget-object v9, p0, mPersona:Landroid/os/PersonaManager;

    invoke-static {}, Landroid/os/PersonaManager;->getBbcEnabled()I

    move-result v2

    .line 2531
    :cond_4f
    :try_start_4f
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 2532
    .local v5, "mPM":Landroid/content/pm/IPackageManager;
    const/16 v9, 0x80

    invoke-interface {v5, p1, v9, v2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2533
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v9, "package"

    invoke-static {v9}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageManagerService;

    iput-object v9, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 2534
    if-nez v0, :cond_88

    .line 2535
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "AppInfo of package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", is NULL, return false"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2536
    const/4 v9, 0x0

    goto :goto_22

    .line 2538
    :cond_88
    const-string v9, "/data/system"

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 2539
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The package has /data/system/ datadir, dataDir:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " and cannot be relabeled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2540
    const/4 v9, 0x0

    goto/16 :goto_22

    .line 2542
    :cond_b7
    iget v9, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, v9, :cond_bd

    .line 2543
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2545
    :cond_bd
    if-eqz v1, :cond_106

    .line 2546
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BBC case, relabelAppDir with packageName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", seinfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2547
    iget-object v9, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v9, p1, v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->relabelAppDir(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v9

    if-nez v9, :cond_15d

    .line 2548
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string v11, "BBC case, mPMS.relabelAppDir returned false"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    const/4 v9, 0x0

    goto/16 :goto_22

    .line 2552
    :cond_106
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "non-BBC (Good/generic) case, relabelAppDir with packageName:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", seinfo:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2553
    iget-object v9, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    const/4 v11, 0x1

    invoke-virtual {v9, p1, v10, v8, v11}, Lcom/android/server/pm/PackageManagerService;->relabelAppDir(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result v9

    if-nez v9, :cond_15d

    .line 2554
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "non-BBC case, mPMS.relabelAppDir returned false"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14c
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_14c} :catch_14f

    .line 2555
    const/4 v9, 0x0

    goto/16 :goto_22

    .line 2558
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "mPM":Landroid/content/pm/IPackageManager;
    :catch_14f
    move-exception v3

    .line 2559
    .local v3, "e":Ljava/lang/Exception;
    sget-object v9, mSKLog:Lcom/android/server/SKLogger;

    const-string v10, "SEAMService"

    const-string/jumbo v11, "relabelAppDir cannot get app list"

    invoke-virtual {v9, v10, v11}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2560
    const/4 v9, 0x0

    goto/16 :goto_22

    .line 2562
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "mPM":Landroid/content/pm/IPackageManager;
    :cond_15d
    const/4 v9, 0x1

    goto/16 :goto_22
.end method

.method public relabelData(Landroid/app/enterprise/ContextInfo;)I
    .registers 7
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2580
    const-string/jumbo v0, "relabelData"

    .line 2583
    .local v0, "method":Ljava/lang/String;
    sget-object v1, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {p0, p1, v1, v3}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 2584
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMService"

    const-string/jumbo v3, "relabelData: License validation failed"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    const/4 v1, -0x2

    .line 2597
    :goto_1a
    return v1

    .line 2590
    :cond_1b
    const-string/jumbo v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    iput-object v1, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    .line 2592
    iget-object v1, p0, mPMS:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->relabelData()Z

    move-result v1

    if-nez v1, :cond_3a

    .line 2593
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string/jumbo v4, "mPMS.relabelData returned false"

    invoke-virtual {v1, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 2594
    goto :goto_1a

    :cond_3a
    move v1, v3

    .line 2597
    goto :goto_1a
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 22
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 2637
    const-string/jumbo v9, "removeAppFromContainer"

    .line 2638
    .local v9, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2639
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2640
    .local v10, "pid":I
    const-wide/16 v6, 0x0

    .line 2643
    .local v6, "ident":J
    sget-object v13, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_27

    .line 2644
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string/jumbo v15, "removeAppFromContainer: License validation failed"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2645
    const/4 v11, -0x2

    .line 2698
    :goto_26
    return v11

    .line 2658
    :cond_27
    const/4 v8, 0x0

    .line 2661
    .local v8, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v11, 0x0

    .line 2662
    .local v11, "ret":I
    :try_start_29
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_47

    .line 2663
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v13, v14}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2664
    if-eqz v8, :cond_ef

    .line 2665
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    .line 2666
    goto :goto_26

    .line 2668
    :cond_47
    const/16 v13, 0x2be

    move/from16 v0, p3

    if-ne v0, v13, :cond_65

    .line 2669
    const/4 v13, 0x4

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v13, v14}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2670
    if-eqz v8, :cond_ef

    .line 2671
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    .line 2672
    goto :goto_26

    .line 2674
    :cond_65
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v13

    if-eqz v13, :cond_83

    .line 2675
    const/4 v13, 0x3

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v13, v14}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2676
    if-eqz v8, :cond_ef

    .line 2677
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I

    move-result v11

    .line 2678
    goto :goto_26

    .line 2681
    :cond_83
    const-string v13, "SEAMS"

    const-string/jumbo v14, "removeAppFromContainer"

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v12, v13, v14}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 2682
    .local v4, "containerType":I
    if-gez v4, :cond_b5

    .line 2683
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unauthorized call to removeAppFromContainer for package name ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    const/4 v11, -0x2

    goto/16 :goto_26

    .line 2687
    :cond_b5
    move-object/from16 v0, p0

    iget-object v13, v0, mContext:Landroid/content/Context;

    invoke-static {v4, v13}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v8

    .line 2688
    if-eqz v8, :cond_ef

    .line 2689
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    invoke-virtual {v8, v0, v1, v2, v3}, Lcom/android/server/SEAMSContainer;->removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    :try_end_ca
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_ca} :catch_cd

    move-result v11

    .line 2690
    goto/16 :goto_26

    .line 2693
    .end local v4    # "containerType":I
    :catch_cd
    move-exception v5

    .line 2694
    .local v5, "e":Ljava/lang/Exception;
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in method:removeAppFromContainer, "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2695
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 2697
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_ef
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string/jumbo v15, "removeAppFromContainer: POLICY_FAILED is returned"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2698
    const/4 v11, -0x1

    goto/16 :goto_26
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    .line 2835
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2836
    const/4 v0, -0x2

    .line 2838
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromSBABlacklist(ILjava/lang/String;I)I

    move-result v0

    goto :goto_9
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .registers 6
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    .line 2800
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_a

    .line 2801
    const/4 v0, -0x2

    .line 2803
    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, getResourceManager(Landroid/content/Context;)Lcom/android/server/ResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/ResourceManager;->removeAppFromWhitelist(ILjava/lang/String;I)I

    move-result v0

    goto :goto_9
.end method

.method public removeSEContainer(I)I
    .registers 12
    .param p1, "containerID"    # I

    .prologue
    .line 1180
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1181
    .local v5, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 1182
    .local v4, "pid":I
    const/4 v3, 0x0

    .line 1183
    .local v3, "instanceCon":Lcom/android/server/SEAMSContainer;
    const/4 v1, 0x0

    .line 1184
    .local v1, "callpkgName":Ljava/lang/String;
    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v4, v5}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 1185
    const/4 v0, 0x0

    .line 1186
    .local v0, "bbcFlag":Z
    invoke-virtual {p0}, isBBCAgent()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1187
    invoke-virtual {p0}, getBBCFlag()Z

    move-result v6

    if-eqz v6, :cond_1e

    .line 1188
    const/4 v0, 0x1

    .line 1193
    :cond_1e
    sget-object v6, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    const/4 v7, 0x1

    invoke-direct {p0, v5, v4, v6, v7}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_35

    .line 1194
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string v8, "activateDomain: License validation failed"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1195
    const/4 v6, -0x2

    .line 1217
    :goto_34
    return v6

    .line 1199
    :cond_35
    if-eqz v0, :cond_45

    .line 1200
    const/4 v6, 0x3

    :try_start_38
    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    .line 1209
    :goto_3e
    if-eqz v3, :cond_7f

    .line 1210
    invoke-virtual {v3, v5, v4, p1}, Lcom/android/server/SEAMSContainer;->removeSEContainer(III)I

    move-result v6

    goto :goto_34

    .line 1202
    :cond_45
    const-string v6, "com.samsung.android.irm.service"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    .line 1203
    const/4 v6, 0x4

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v3

    goto :goto_3e

    .line 1205
    :cond_55
    const/4 v6, 0x2

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-static {v6, v7}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_5b} :catch_5d

    move-result-object v3

    goto :goto_3e

    .line 1212
    :catch_5d
    move-exception v2

    .line 1213
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Exception in removeSEContainer:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1216
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_7f
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "SEAMService"

    const-string/jumbo v8, "removeSEContainer, POLICY_FAILED is returned"

    invoke-virtual {v6, v7, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1217
    const/4 v6, -0x1

    goto :goto_34
.end method

.method public setAMSLogLevel(Landroid/app/enterprise/ContextInfo;I)I
    .registers 10
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "FLAG"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 2715
    const-string/jumbo v1, "setAMSLogLevel"

    .line 2719
    .local v1, "method":Ljava/lang/String;
    :try_start_5
    sget-object v4, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x1

    invoke-direct {p0, p1, v4, v5}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 2720
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string/jumbo v5, "setAMSLogLevel: License validation failed"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2721
    const/4 v2, -0x2

    .line 2738
    :goto_1c
    return v2

    .line 2724
    :cond_1d
    if-ltz p2, :cond_22

    const/4 v4, 0x2

    if-le p2, v4, :cond_2d

    .line 2726
    :cond_22
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "Flag with a wrong value"

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2727
    goto :goto_1c

    .line 2732
    :cond_2d
    const-string/jumbo v4, "persist.security.ams.verbose"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    goto :goto_1c

    .line 2736
    :catch_38
    move-exception v0

    .line 2737
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setAMSLogLevel failed"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 2738
    goto :goto_1c
.end method

.method public setBBCFlag(Z)I
    .registers 7
    .param p1, "value"    # Z

    .prologue
    .line 2861
    const-string/jumbo v0, "setBBCFlag"

    .line 2862
    .local v0, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 2863
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 2864
    .local v1, "pid":I
    const-string v3, "SEAMS"

    const-string/jumbo v4, "setBBCFlag"

    invoke-virtual {p0, v1, v2, v3, v4}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_18

    .line 2865
    const/4 v3, -0x1

    .line 2868
    :goto_17
    return v3

    .line 2867
    :cond_18
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->setBBCFlag(Z)I

    .line 2868
    const/4 v3, 0x0

    goto :goto_17
.end method

.method public setSEAndroidLogDumpStateInclude(Landroid/app/enterprise/ContextInfo;Z)I
    .registers 9
    .param p1, "cxtInfo"    # Landroid/app/enterprise/ContextInfo;
    .param p2, "include"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2752
    const-string/jumbo v1, "setSEAndroidLogDumpStateInclude"

    .line 2754
    .local v1, "method":Ljava/lang/String;
    sget-object v3, SEAMS_PERMS:[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    invoke-direct {p0, p1, v3, v4}, checkSEAMSPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 2755
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string/jumbo v4, "setSEAndroidLogDumpStateInclude: License validation failed"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    const/4 v2, -0x2

    .line 2770
    :goto_1a
    return v2

    .line 2760
    :cond_1b
    if-eqz p2, :cond_54

    .line 2761
    :try_start_1d
    const-string/jumbo v3, "persist.security.mdm.SElogs"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_25} :catch_26

    goto :goto_1a

    .line 2765
    :catch_26
    move-exception v0

    .line 2766
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in method:setSEAndroidLogDumpStateInclude, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2769
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMService"

    const-string/jumbo v4, "setSEAndroidLogDumpStateInclude: POLICY_FAILED is returned"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2770
    const/4 v2, -0x1

    goto :goto_1a

    .line 2763
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_54
    :try_start_54
    const-string/jumbo v3, "persist.security.mdm.SElogs"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_5c} :catch_26

    goto :goto_1a
.end method

.method public setSEContainerClipboardMode(II)I
    .registers 20
    .param p1, "containerID"    # I
    .param p2, "mode"    # I

    .prologue
    .line 2938
    const-string/jumbo v9, "setSEContainerClipboardMode"

    .line 2940
    .local v9, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 2941
    .local v12, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 2942
    .local v10, "pid":I
    const/4 v11, 0x0

    .line 2943
    .local v11, "ret":Z
    const-wide/16 v6, 0x0

    .line 2944
    .local v6, "ident":J
    const/4 v5, 0x0

    .line 2947
    .local v5, "instanceCon":Lcom/android/server/SEAMSContainer;
    sget-object v13, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v10, v13, v14}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v13

    if-nez v13, :cond_29

    .line 2948
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string/jumbo v15, "setSEContainerClipboardMode: License validation failed"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2949
    const/4 v13, -0x2

    .line 2994
    :goto_28
    return v13

    .line 2951
    :cond_29
    if-ltz p2, :cond_30

    const/4 v13, 0x1

    move/from16 v0, p2

    if-le v0, v13, :cond_4f

    .line 2952
    :cond_30
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mode:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    const/4 v13, -0x1

    goto :goto_28

    .line 2956
    :cond_4f
    const/4 v13, 0x2

    move-object/from16 v0, p0

    iget-object v14, v0, mContext:Landroid/content/Context;

    invoke-static {v13, v14}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v5

    .line 2957
    if-eqz v5, :cond_96

    .line 2958
    invoke-virtual {v5}, Lcom/android/server/SEAMSContainer;->getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;

    move-result-object v8

    .line 2959
    .local v8, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    iget-object v13, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    iget-object v14, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    move/from16 v0, p1

    invoke-static {v13, v14, v0}, Lcom/android/server/pm/SELinuxMMAC;->isContainerCreatedbyCaller(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_a2

    .line 2960
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "containerID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " is not owned by caller:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v8, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2961
    const/4 v13, -0x1

    goto :goto_28

    .line 2964
    .end local v8    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_96
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string/jumbo v15, "unable to get instance"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2965
    const/4 v13, -0x1

    goto :goto_28

    .line 2969
    .restart local v8    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_a2
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2970
    .local v4, "cvWhere":Landroid/content/ContentValues;
    const-string v13, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2972
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2973
    .local v2, "cv":Landroid/content/ContentValues;
    const-string v13, "containerID"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2974
    const-string/jumbo v13, "mode"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2978
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SeamsClipboardTable"

    const-string/jumbo v15, "mode"

    invoke-virtual {v13, v14, v15, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v3

    .line 2980
    .local v3, "cvOld":Landroid/content/ContentValues;
    if-eqz v3, :cond_126

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v13

    if-eqz v13, :cond_126

    .line 2981
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CHecking if entry already exists:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2983
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SeamsClipboardTable"

    invoke-virtual {v13, v14, v2, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v11

    .line 2993
    :cond_105
    :goto_105
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "setSecontainerClipboardMode: ret = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2994
    const/4 v13, 0x1

    if-ne v11, v13, :cond_146

    const/4 v13, 0x0

    goto/16 :goto_28

    .line 2985
    :cond_126
    sget-object v13, mSKLog:Lcom/android/server/SKLogger;

    const-string v14, "SEAMService"

    const-string v15, "CvOld null or size 0"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 2987
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SeamsClipboardTable"

    invoke-virtual {v13, v14, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    .line 2988
    if-nez v11, :cond_105

    .line 2990
    move-object/from16 v0, p0

    iget-object v13, v0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v14, "SeamsClipboardTable"

    invoke-virtual {v13, v14, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    goto :goto_105

    .line 2994
    :cond_146
    const/4 v13, -0x1

    goto/16 :goto_28
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .registers 24
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "allowcategory"    # I
    .param p5, "appType"    # I
    .param p6, "removeFlag"    # Z

    .prologue
    .line 975
    const-string/jumbo v11, "updateAppToContainer"

    .line 977
    .local v11, "method":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .line 978
    .local v16, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 979
    .local v14, "pid":I
    const/4 v15, 0x0

    .line 980
    .local v15, "ret":I
    const-wide/16 v12, 0x0

    .line 981
    .local v12, "ident":J
    const/4 v2, 0x0

    .line 984
    .local v2, "instanceCon":Lcom/android/server/SEAMSContainer;
    sget-object v3, SEAMS_PERMS:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v14, v3, v4}, checkSEAMSPermission(IILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2b

    .line 985
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string/jumbo v5, "updateAppToContainer: License validation failed"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const/4 v3, -0x2

    .line 1029
    :goto_2a
    return v3

    .line 994
    :cond_2b
    :try_start_2b
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isMyContainerID(I)Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 995
    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-static {v3, v4}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 996
    if-eqz v2, :cond_f2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 997
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I

    move-result v15

    move v3, v15

    .line 998
    goto :goto_2a

    .line 1000
    :cond_4e
    invoke-static/range {p3 .. p3}, Lcom/android/server/pm/SELinuxMMAC;->isBBCContainerID(I)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 1001
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-static {v3, v4}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1002
    if-eqz v2, :cond_f2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1003
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I

    move-result v15

    move v3, v15

    .line 1004
    goto :goto_2a

    .line 1006
    :cond_71
    const/16 v3, 0x2be

    move/from16 v0, p3

    if-ne v0, v3, :cond_94

    .line 1007
    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    invoke-static {v3, v4}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1008
    if-eqz v2, :cond_f2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1009
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I

    move-result v15

    move v3, v15

    .line 1010
    goto :goto_2a

    .line 1013
    :cond_94
    const-string v3, "SEAMS"

    const-string/jumbo v4, "updateAppToContainer"

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v14, v1, v3, v4}, isAuthorized(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1014
    .local v9, "containerType":I
    if-gez v9, :cond_c8

    .line 1015
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unauthorized call to updateAppToContainer for package name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "). "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    const/4 v3, -0x2

    goto/16 :goto_2a

    .line 1018
    :cond_c8
    move-object/from16 v0, p0

    iget-object v3, v0, mContext:Landroid/content/Context;

    invoke-static {v9, v3}, getInstance(ILandroid/content/Context;)Lcom/android/server/SEAMSContainer;

    move-result-object v2

    .line 1019
    if-eqz v2, :cond_f2

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    .line 1020
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/SEAMSContainer;->updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_e1} :catch_e5

    move-result v15

    move v3, v15

    .line 1021
    goto/16 :goto_2a

    .line 1024
    .end local v9    # "containerType":I
    :catch_e5
    move-exception v10

    .line 1025
    .local v10, "e":Ljava/lang/Exception;
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string v5, "Exception in methodupdateAppToContainer"

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 1028
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_f2
    sget-object v3, mSKLog:Lcom/android/server/SKLogger;

    const-string v4, "SEAMService"

    const-string/jumbo v5, "updateAppToContainer POLICY_FAILED is returned "

    invoke-virtual {v3, v4, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const/4 v3, -0x1

    goto/16 :goto_2a
.end method
