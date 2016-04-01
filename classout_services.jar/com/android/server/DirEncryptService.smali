.class Lcom/android/server/DirEncryptService;
.super Landroid/os/storage/IDirEncryptService$Stub;
.source "DirEncryptService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
    }
.end annotation


# static fields
.field private static final DIR_ENCRYPTION:Z

.field private static final ENCRYPT_TAG:Ljava/lang/String; = "DirEncryptConnector"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final REQUESTER_DM:Ljava/lang/String; = "dm"

.field private static final REQUESTER_USER:Ljava/lang/String; = "user"

.field private static final REQUESTER_USER_ENC_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SDCARD_ENC_STATUS_ACTIVITY:Ljava/lang/String; = "android.app.action.SDCARD_ENCRYPTION_STATUS"

.field private static final TAG:Ljava/lang/String; = "DirEncryptService"


# instance fields
.field private final ENCRYPT:I

.field private final PRESCAN_FULL_ERR:I

.field private final RESPONSE_BASE:I

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConnector:Lcom/android/server/NativeDaemonConnector;

.field private mContext:Landroid/content/Context;

.field private mDep:Lcom/android/server/DirEncryptPrefs;

.field private mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReady:Z

.field private mSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 77
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, LOCAL_LOGE:Z

    .line 78
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, LOCAL_LOGD:Z

    .line 87
    const-string/jumbo v0, "ro.sec.fle.encryption"

    const-string/jumbo v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-direct {p0}, Landroid/os/storage/IDirEncryptService$Stub;-><init>()V

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, mReady:Z

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mSync:Ljava/lang/Object;

    .line 93
    iput-object v1, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 94
    iput-object v1, p0, mPm:Landroid/content/pm/PackageManager;

    .line 96
    iput-object v1, p0, mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 97
    iput-object v1, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    .line 100
    const/16 v0, 0x2a8

    iput v0, p0, RESPONSE_BASE:I

    .line 101
    const/16 v0, 0x2ab

    iput v0, p0, ENCRYPT:I

    .line 102
    const/16 v0, 0x2ae

    iput v0, p0, PRESCAN_FULL_ERR:I

    .line 209
    new-instance v0, Lcom/android/server/DirEncryptService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v0, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    const-string/jumbo v0, "ctor DirEncryptService....."

    invoke-static {v0}, logD(Ljava/lang/String;)V

    .line 174
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 175
    new-instance v0, Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 176
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptService;

    .prologue
    .line 75
    iget-object v0, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/DirEncryptService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/DirEncryptService;

    .prologue
    .line 75
    invoke-direct {p0}, moveDumpstate()Z

    move-result v0

    return v0
.end method

.method private authByUid(I)Z
    .registers 4
    .param p1, "uid"    # I

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 286
    .local v0, "myUID":I
    iget-object v1, p0, mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v1

    if-nez v1, :cond_e

    .line 287
    const/4 v1, 0x1

    .line 290
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method private checkSystemUid(I)Z
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 275
    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_b

    .line 276
    const-string v0, "Invalid uid. Only SYSTEM can use DirEncryptService Call."

    invoke-static {v0}, logE(Ljava/lang/String;)V

    .line 277
    const/4 v0, 0x0

    .line 280
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x1

    goto :goto_a
.end method

.method private findRequester(I)Ljava/lang/String;
    .registers 7
    .param p1, "uidApp"    # I

    .prologue
    .line 294
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 295
    .local v1, "myUID":I
    iget-object v3, p0, mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "callingPackageName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name uidApp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, logD(Ljava/lang/String;)V

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package name myUID  = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " uid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, logD(Ljava/lang/String;)V

    .line 300
    if-eqz v0, :cond_5e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_65

    .line 301
    :cond_5e
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 335
    :goto_64
    return-object v3

    .line 305
    :cond_65
    iget-object v3, p0, mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v1, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    if-eqz v3, :cond_75

    .line 306
    const-string v3, "REQUESTER_UNKNOWN..."

    invoke-static {v3}, logE(Ljava/lang/String;)V

    .line 307
    const-string v3, ""

    goto :goto_64

    .line 310
    :cond_75
    if-eq v1, p1, :cond_7e

    .line 311
    const-string v3, "REQUESTER_APP..."

    invoke-static {v3}, logD(Ljava/lang/String;)V

    move-object v3, v0

    .line 312
    goto :goto_64

    .line 315
    :cond_7e
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 316
    .local v2, "pid":I
    invoke-direct {p0, v2}, getCallingProcessPkg(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, logD(Ljava/lang/String;)V

    .line 318
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling pid package = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, logD(Ljava/lang/String;)V

    .line 320
    if-nez v0, :cond_bc

    .line 322
    const-string v3, "Calling package name is null..."

    invoke-static {v3}, logE(Ljava/lang/String;)V

    .line 323
    const-string v3, ""

    goto :goto_64

    .line 326
    :cond_bc
    const-string v3, "com.android.settings"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_cd

    .line 327
    const-string v3, "REQUESTER_USER..."

    invoke-static {v3}, logD(Ljava/lang/String;)V

    .line 328
    const-string/jumbo v3, "user"

    goto :goto_64

    .line 334
    :cond_cd
    const-string v3, "REQUESTER_DM..."

    invoke-static {v3}, logD(Ljava/lang/String;)V

    .line 335
    const-string/jumbo v3, "dm"

    goto :goto_64
.end method

.method private getCallingProcessPkg(I)Ljava/lang/String;
    .registers 8
    .param p1, "pid"    # I

    .prologue
    .line 258
    const/4 v4, 0x0

    .line 259
    .local v4, "result":Ljava/lang/String;
    const-string v5, "activity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    .line 261
    .local v0, "am":Lcom/android/server/am/ActivityManagerService;
    if-eqz v0, :cond_28

    .line 262
    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 263
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v3, :cond_28

    .line 264
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_15
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 265
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_15

    .line 266
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_15

    .line 271
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_28
    return-object v4
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-boolean v0, LOCAL_LOGD:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_9
    return-void
.end method

.method public static logE(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-boolean v0, LOCAL_LOGE:Z

    if-eqz v0, :cond_9

    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_9
    return-void
.end method

.method public static logI(Ljava/lang/String;)V
    .registers 2
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 122
    const-string v0, "DirEncryptService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void
.end method

.method private moveDumpstate()Z
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 224
    const-string/jumbo v1, "trigger_restart_min_framework"

    .line 225
    .local v1, "ENCRYPTING_STATE":Ljava/lang/String;
    const-string/jumbo v0, "trigger_restart_min_framework"

    .line 226
    .local v0, "ENCRYPTED_STATE":Ljava/lang/String;
    const-string/jumbo v8, "vold.decrypt"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    .local v2, "cryptState":Ljava/lang/String;
    const/4 v5, 0x0

    .line 229
    .local v5, "ret":Z
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    .line 231
    const/4 v5, 0x1

    :goto_16
    move v7, v5

    .line 254
    :goto_17
    return v7

    .line 232
    :cond_18
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    .line 234
    const/4 v5, 0x1

    goto :goto_16

    .line 236
    :cond_20
    const/4 v4, 0x0

    .line 237
    .local v4, "mountService":Landroid/os/storage/IMountService;
    const-string/jumbo v8, "mount"

    invoke-static {v8}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    .line 238
    .local v6, "service":Landroid/os/IBinder;
    if-eqz v6, :cond_33

    .line 239
    invoke-static {v6}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    .line 246
    :try_start_2e
    invoke-interface {v4}, Landroid/os/storage/IMountService;->moveDumpstates()I
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_31} :catch_39

    .line 247
    const/4 v5, 0x1

    goto :goto_16

    .line 241
    :cond_33
    const-string v8, "Can\'t get mount service"

    invoke-static {v8}, logD(Ljava/lang/String;)V

    goto :goto_17

    .line 248
    :catch_39
    move-exception v3

    .line 249
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_17
.end method


# virtual methods
.method public SetMountSDcardToHelper(Z)V
    .registers 6
    .param p1, "in"    # Z

    .prologue
    .line 641
    sget-boolean v1, DIR_ENCRYPTION:Z

    if-nez v1, :cond_5

    .line 654
    :goto_4
    return-void

    .line 645
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 646
    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 648
    .local v2, "token":J
    invoke-direct {p0, v0}, authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 649
    iget-object v1, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->SetMountSDcardToHelper(Z)V

    .line 653
    :goto_18
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .line 651
    :cond_1c
    const-string v1, "SetMountSDcardToHelper error: invalid uid"

    invoke-static {v1}, logE(Ljava/lang/String;)V

    goto :goto_18
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .registers 10
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 561
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Check the state of external SD card mount path = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 563
    sget-boolean v6, DIR_ENCRYPTION:Z

    if-nez v6, :cond_1d

    .line 564
    const/16 v2, 0xc8

    .line 597
    :goto_1c
    return v2

    .line 567
    :cond_1d
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 568
    .local v1, "requester":I
    invoke-direct {p0, v1}, authByUid(I)Z

    move-result v6

    if-eqz v6, :cond_2d

    invoke-direct {p0, v1}, checkSystemUid(I)Z

    move-result v6

    if-nez v6, :cond_35

    .line 569
    :cond_2d
    const-string v6, "Invalid requester"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 570
    const/16 v2, 0xcc

    goto :goto_1c

    .line 573
    :cond_35
    const/16 v2, 0xc9

    .line 574
    .local v2, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 576
    .local v4, "token":J
    new-instance v0, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 577
    .local v0, "dew":Landroid/dirEncryption/DirEncryptionWrapper;
    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object v3

    .line 579
    .local v3, "state":Ljava/lang/String;
    const-string/jumbo v6, "mounted"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a

    .line 580
    const/4 v2, 0x0

    .line 581
    const-string v6, "SD card mounted, need unmount..."

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 582
    iget-object v6, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 583
    iget-object v6, p0, mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 584
    const/16 v2, 0xd

    .line 596
    :goto_66
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1c

    .line 585
    :cond_6a
    const-string v6, "HiddenMount"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_89

    .line 586
    const-string v6, "SD card ready, need encrypt cycle..."

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 587
    iget-object v6, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v6}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 588
    iget-object v6, p0, mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 589
    const/16 v2, 0xd

    goto :goto_66

    .line 592
    :cond_89
    const-string v6, "SD card not mounted, so not applying policies this time"

    invoke-static {v6}, logD(Ljava/lang/String;)V

    .line 593
    const/16 v2, 0xca

    goto :goto_66
.end method

.method public getAdditionalSpaceRequired()I
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getAdditionalSpaceRequired()I

    move-result v0

    return v0
.end method

.method public getCurrentStatus()I
    .registers 2

    .prologue
    .line 510
    iget-object v0, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .registers 2

    .prologue
    .line 514
    iget-object v0, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->getLastError()I

    move-result v0

    return v0
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .registers 7

    .prologue
    .line 601
    const/4 v1, 0x0

    .line 603
    .local v1, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    sget-boolean v3, DIR_ENCRYPTION:Z

    if-nez v3, :cond_7

    move-object v2, v1

    .line 621
    .end local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v2, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :goto_6
    return-object v2

    .line 606
    .end local v2    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 607
    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 609
    .local v4, "token":J
    invoke-direct {p0, v0}, authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 610
    iget-object v3, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptPrefs;->haveEncPrefs()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 611
    const-string v3, "EncPrefs found"

    invoke-static {v3}, logD(Ljava/lang/String;)V

    .line 612
    iget-object v3, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v3}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v1

    .line 620
    :goto_28
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object v2, v1

    .line 621
    .end local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v2    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    goto :goto_6

    .line 614
    .end local v2    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v1    # "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_2d
    const-string v3, "EncPrefs not found"

    invoke-static {v3}, logE(Ljava/lang/String;)V

    goto :goto_28

    .line 617
    :cond_33
    const-string/jumbo v3, "getSDCardEncryptionPrefs error: invalid uid"

    invoke-static {v3}, logE(Ljava/lang/String;)V

    goto :goto_28
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .registers 5

    .prologue
    .line 472
    sget-boolean v1, DIR_ENCRYPTION:Z

    if-nez v1, :cond_6

    .line 473
    const/4 v0, 0x0

    .line 482
    :goto_5
    return v0

    .line 475
    :cond_6
    const/4 v0, 0x0

    .line 476
    .local v0, "result":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 478
    .local v2, "token":J
    const-string/jumbo v1, "isStorageCardEncryptionPoliciesApplied....."

    invoke-static {v1}, logD(Ljava/lang/String;)V

    .line 479
    iget-object v1, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v0

    .line 481
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_5
.end method

.method public onCheckHoldWakeLock(I)Z
    .registers 3
    .param p1, "code"    # I

    .prologue
    .line 133
    const-string v0, " onCheckHoldWakeLock ::"

    invoke-static {v0}, logD(Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public onDaemonConnected()V
    .registers 2

    .prologue
    .line 127
    const-string v0, " onDaemonConnected ::"

    invoke-static {v0}, logD(Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, mReady:Z

    .line 129
    return-void
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 12
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onEventcode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " raw: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " cooked "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, logD(Ljava/lang/String;)V

    .line 141
    const/16 v1, 0x2ae

    if-ne p1, v1, :cond_48

    .line 142
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "DirEncryptService"

    const-string v5, "Encrypting storage card failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_3d
    :goto_3d
    iget-object v1, p0, mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    new-instance v2, Lcom/android/server/DirEncryptService$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;ILjava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->post(Ljava/lang/Runnable;)Z

    .line 168
    return v0

    .line 144
    :cond_48
    const/16 v1, 0x2ab

    if-ne p1, v1, :cond_3d

    .line 145
    const/4 v1, 0x3

    aget-object v7, p3, v1

    .line 146
    .local v7, "status":Ljava/lang/String;
    const/4 v1, 0x2

    aget-object v1, p3, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 148
    .local v6, "reqEnc":I
    const-string/jumbo v1, "success"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7d

    .line 149
    if-ne v6, v0, :cond_6f

    .line 150
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "DirEncryptService"

    const-string v5, "Encrypting storage card succeeded"

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 153
    :cond_6f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "DirEncryptService"

    const-string v5, "Decrypting storage card succeeded"

    move v1, v0

    move v2, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3d

    .line 157
    :cond_7d
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const-string v4, "DirEncryptService"

    const-string v5, "Encrypting storage card failed"

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 341
    iget-object v0, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 342
    return-void
.end method

.method public revertSecureStorageForKnoxMigration(Ljava/lang/String;I)V
    .registers 9
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "container_id"    # I

    .prologue
    .line 658
    sget-boolean v1, DIR_ENCRYPTION:Z

    if-nez v1, :cond_5

    .line 672
    :goto_4
    return-void

    .line 662
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 663
    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 665
    .local v2, "token":J
    invoke-direct {p0, v0}, authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 666
    iget-object v1, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 667
    iget-object v1, p0, mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-virtual {v1, v4, p2, v5, p1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 671
    :goto_24
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .line 669
    :cond_28
    const-string/jumbo v1, "revertSecureStorageForKnoxMigration error: invalid uid"

    invoke-static {v1}, logE(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public setNeedToCreateKey(Z)V
    .registers 6
    .param p1, "in"    # Z

    .prologue
    .line 625
    sget-boolean v1, DIR_ENCRYPTION:Z

    if-nez v1, :cond_5

    .line 638
    :goto_4
    return-void

    .line 629
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 630
    .local v0, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 632
    .local v2, "token":J
    invoke-direct {p0, v0}, authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-direct {p0, v0}, checkSystemUid(I)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 633
    iget-object v1, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/DirEncryptServiceHelper;->setNeedToCreateKey(Z)V

    .line 637
    :goto_1e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_4

    .line 635
    :cond_22
    const-string/jumbo v1, "setNeedToCreateKey error: invalid uid"

    invoke-static {v1}, logE(Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public setNullSDCardPassword()I
    .registers 8

    .prologue
    const/4 v4, -0x1

    .line 527
    const/4 v1, 0x0

    .line 528
    .local v1, "instMountService":Landroid/os/storage/IMountService;
    const-string/jumbo v5, "mount"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 530
    .local v3, "service":Landroid/os/IBinder;
    if-nez v3, :cond_c

    .line 551
    :goto_b
    return v4

    .line 533
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 534
    .local v2, "requester":I
    invoke-direct {p0, v2}, authByUid(I)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-direct {p0, v2}, checkSystemUid(I)Z

    move-result v5

    if-nez v5, :cond_23

    .line 535
    :cond_1c
    const-string/jumbo v5, "setNullSDCardPassword error: invalid uid"

    invoke-static {v5}, logD(Ljava/lang/String;)V

    goto :goto_b

    .line 539
    :cond_23
    invoke-static {v3}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 541
    if-eqz v1, :cond_38

    .line 542
    :try_start_29
    const-string v5, ""

    invoke-interface {v1, v5}, Landroid/os/storage/IMountService;->setNullSDCardPassword(Ljava/lang/String;)I
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_2e} :catch_30

    move-result v4

    goto :goto_b

    .line 544
    :catch_30
    move-exception v0

    .line 545
    .local v0, "e":Landroid/os/RemoteException;
    const-string v5, "DirEncryptService"

    const-string v6, "Error while setting null password for sdcard."

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_38
    const-string v5, "Can\'t set nullpassword!"

    invoke-static {v5}, logE(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public setPassword(Ljava/lang/String;)I
    .registers 9
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 486
    sget-boolean v3, DIR_ENCRYPTION:Z

    if-nez v3, :cond_7

    .line 487
    const/16 v3, 0xc8

    .line 506
    :goto_6
    return v3

    .line 490
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 491
    .local v2, "requester":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 493
    .local v4, "token":J
    const/4 v0, 0x1

    .line 494
    .local v0, "allowRequest":Z
    iget-object v3, p0, mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 495
    .local v1, "callingPackageName":Ljava/lang/String;
    invoke-direct {p0, v2}, checkSystemUid(I)Z

    move-result v3

    if-nez v3, :cond_25

    const-string v3, ".*android.uid.systemui.*"

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 496
    const/4 v0, 0x0

    .line 499
    :cond_25
    const-string/jumbo v3, "setPassword....."

    invoke-static {v3}, logD(Ljava/lang/String;)V

    .line 500
    invoke-direct {p0, v2}, authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_43

    if-eqz v0, :cond_43

    .line 501
    iget-object v3, p0, mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, p1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 505
    :goto_3d
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 506
    const/16 v3, 0xd

    goto :goto_6

    .line 503
    :cond_43
    const-string/jumbo v3, "setPassword error: invalid uid"

    invoke-static {v3}, logE(Ljava/lang/String;)V

    goto :goto_3d
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .registers 22
    .param p1, "encType"    # I
    .param p2, "fullEnc"    # I
    .param p3, "excludeMediaFiles"    # I

    .prologue
    .line 349
    const/16 v15, 0xc8

    .line 350
    .local v15, "result":I
    sget-boolean v4, DIR_ENCRYPTION:Z

    if-nez v4, :cond_2a

    .line 352
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_1b

    .line 353
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Encrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_19
    move v4, v15

    .line 468
    :goto_1a
    return v4

    .line 356
    :cond_1b
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Decrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    .line 363
    :cond_2a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setStorageCardEncryption: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, logI(Ljava/lang/String;)V

    .line 365
    const/4 v4, 0x2

    move/from16 v0, p1

    if-eq v0, v4, :cond_87

    const/4 v4, 0x3

    move/from16 v0, p1

    if-eq v0, v4, :cond_87

    .line 367
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Decrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v4, v15

    .line 370
    goto :goto_1a

    .line 372
    :cond_87
    const/4 v4, 0x4

    move/from16 v0, p2

    if-eq v0, v4, :cond_b6

    const/4 v4, 0x5

    move/from16 v0, p2

    if-eq v0, v4, :cond_b6

    .line 374
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_a7

    .line 375
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Encrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_a4
    move v4, v15

    .line 382
    goto/16 :goto_1a

    .line 378
    :cond_a7
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Decrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    .line 384
    :cond_b6
    const/4 v4, 0x4

    move/from16 v0, p2

    if-ne v0, v4, :cond_d1

    const/4 v4, 0x2

    move/from16 v0, p1

    if-eq v0, v4, :cond_d1

    .line 386
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Decrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    move v4, v15

    .line 389
    goto/16 :goto_1a

    .line 391
    :cond_d1
    const/4 v4, 0x6

    move/from16 v0, p3

    if-eq v0, v4, :cond_100

    const/4 v4, 0x7

    move/from16 v0, p3

    if-eq v0, v4, :cond_100

    .line 393
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_f1

    .line 394
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Encrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :goto_ee
    move v4, v15

    .line 401
    goto/16 :goto_1a

    .line 397
    :cond_f1
    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    const-string v8, "DirEncryptService"

    const-string v9, "Decrypting storage card failed"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_ee

    .line 404
    :cond_100
    move-object/from16 v0, p0

    iget-object v5, v0, mSync:Ljava/lang/Object;

    monitor-enter v5

    .line 406
    :try_start_105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, findRequester(I)Ljava/lang/String;

    move-result-object v13

    .line 407
    .local v13, "requester":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    .line 408
    .local v14, "requesterid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 410
    .local v16, "token":J
    new-instance v11, Landroid/dirEncryption/SDCardEncryptionPolicies;

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v11, v0, v1, v2}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>(III)V

    .line 411
    .local v11, "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v4, v0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptPrefs;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v12

    .line 413
    .local v12, "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    move-object/from16 v0, p0

    iget-object v4, v0, mContext:Landroid/content/Context;

    const-string/jumbo v6, "device_policy"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 414
    .local v10, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Landroid/app/admin/DevicePolicyManager;->getRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_144

    .line 415
    const/4 v4, 0x2

    iput v4, v11, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    .line 416
    const/4 v4, 0x4

    iput v4, v11, Landroid/dirEncryption/SDCardEncryptionPolicies;->mFullEnc:I

    .line 419
    :cond_144
    invoke-virtual {v12, v11}, Landroid/dirEncryption/SDCardEncryptionPolicies;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1cb

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v4}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v4

    if-eqz v4, :cond_161

    .line 421
    const-string v4, "Cannot save the policy if SD card is being encrypted/decrypted"

    invoke-static {v4}, logI(Ljava/lang/String;)V

    .line 422
    const/16 v4, 0xf

    monitor-exit v5

    goto/16 :goto_1a

    .line 466
    .end local v10    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v11    # "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v12    # "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .end local v13    # "requester":Ljava/lang/String;
    .end local v14    # "requesterid":I
    .end local v16    # "token":J
    :catchall_15e
    move-exception v4

    monitor-exit v5
    :try_end_160
    .catchall {:try_start_105 .. :try_end_160} :catchall_15e

    throw v4

    .line 425
    .restart local v10    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v11    # "newPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v12    # "oldPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .restart local v13    # "requester":Ljava/lang/String;
    .restart local v14    # "requesterid":I
    .restart local v16    # "token":J
    :cond_161
    :try_start_161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Called by: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, logI(Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, authByUid(I)Z

    move-result v4

    if-eqz v4, :cond_1c2

    .line 427
    const-string/jumbo v4, "user"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a4

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4, v11}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v4

    if-eqz v4, :cond_1a1

    .line 430
    const/16 v15, 0x8

    .line 432
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    .line 464
    :goto_197
    invoke-direct/range {p0 .. p0}, moveDumpstate()Z

    .line 465
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    monitor-exit v5

    move v4, v15

    .line 468
    goto/16 :goto_1a

    .line 434
    :cond_1a1
    const/16 v15, 0x9

    goto :goto_197

    .line 442
    :cond_1a4
    iget v4, v11, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    const/4 v6, 0x2

    if-ne v4, v6, :cond_1bc

    .line 444
    move-object/from16 v0, p0

    iget-object v4, v0, mDep:Lcom/android/server/DirEncryptPrefs;

    invoke-virtual {v4, v11}, Lcom/android/server/DirEncryptPrefs;->savePrefs(Landroid/dirEncryption/SDCardEncryptionPolicies;)Z

    move-result v4

    if-eqz v4, :cond_1b9

    .line 445
    const/16 v15, 0x8

    .line 447
    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper$AppliedPolicies;->setPoliciesRemoved()Z

    goto :goto_197

    .line 449
    :cond_1b9
    const/16 v15, 0x9

    goto :goto_197

    .line 452
    :cond_1bc
    const-string v4, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    invoke-static {v4}, logI(Ljava/lang/String;)V

    goto :goto_197

    .line 456
    :cond_1c2
    const-string/jumbo v4, "setStorageCardEncryptionPolicy error: invalid uid"

    invoke-static {v4}, logE(Ljava/lang/String;)V

    .line 457
    const/16 v15, 0x9

    goto :goto_197

    .line 461
    :cond_1cb
    const-string v4, "Policy has already been saved."

    invoke-static {v4}, logI(Ljava/lang/String;)V
    :try_end_1d0
    .catchall {:try_start_161 .. :try_end_1d0} :catchall_15e

    .line 462
    const/16 v15, 0xa

    goto :goto_197
.end method

.method public systemReady()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 179
    const-string v0, "DirEncryptService"

    const-string v1, "Calling systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    sget-boolean v0, DIR_ENCRYPTION:Z

    if-nez v0, :cond_d

    .line 207
    :goto_c
    return-void

    .line 185
    :cond_d
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, mPm:Landroid/content/pm/PackageManager;

    .line 186
    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 189
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/DirEncryptPrefs;->getPreferences(Landroid/content/Context;)Lcom/android/server/DirEncryptPrefs;

    move-result-object v0

    iput-object v0, p0, mDep:Lcom/android/server/DirEncryptPrefs;

    .line 191
    :try_start_2b
    new-instance v0, Lcom/android/server/NativeDaemonConnector;

    const-string/jumbo v2, "dir_enc_report"

    const/16 v3, 0x1f4

    const-string v4, "DirEncryptConnector"

    const/16 v5, 0xa0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/NativeDaemonConnector;-><init>(Lcom/android/server/INativeDaemonConnectorCallbacks;Ljava/lang/String;ILjava/lang/String;ILandroid/os/PowerManager$WakeLock;)V

    iput-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    .line 192
    new-instance v8, Ljava/lang/Thread;

    iget-object v0, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    const-string v1, "DirEncryptConnector"

    invoke-direct {v8, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 193
    .local v8, "thread":Ljava/lang/Thread;
    invoke-virtual {v8}, Ljava/lang/Thread;->start()V

    .line 195
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DirEncryptService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    .line 196
    iget-object v0, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 197
    new-instance v0, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v1, p0, mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 199
    iget-object v0, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    iget-object v1, p0, mConnector:Lcom/android/server/NativeDaemonConnector;

    iget-object v2, p0, mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/DirEncryptServiceHelper;->setExecParams(Lcom/android/server/NativeDaemonConnector;Landroid/os/Handler;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_6d} :catch_73

    .line 206
    .end local v8    # "thread":Ljava/lang/Thread;
    :goto_6d
    iget-object v0, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->registerStorageEventListener()Z

    goto :goto_c

    .line 201
    :catch_73
    move-exception v7

    .line 202
    .local v7, "ex":Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NativeDaemonConnector exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, logE(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, mReady:Z

    goto :goto_6d
.end method

.method public unmountSDCardByAdmin()V
    .registers 2

    .prologue
    .line 522
    iget-object v0, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCardByAdmin()V

    .line 523
    return-void
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 345
    iget-object v0, p0, mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/DirEncryptServiceHelper;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V

    .line 346
    return-void
.end method
