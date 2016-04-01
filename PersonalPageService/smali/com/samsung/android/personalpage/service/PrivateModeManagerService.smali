.class public Lcom/samsung/android/personalpage/service/PrivateModeManagerService;
.super Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
.source "PrivateModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final PERMISSION_START_PRIVATE_MODE:Ljava/lang/String; = "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

.field private static final SUPPORT_MULTIPLE_NORMAL_M2P:Z = false

.field private static final TAG:Ljava/lang/String; = "PrivateModeManagerService"

.field private static mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

.field private static mIsMountedPrivateStorage:Z


# instance fields
.field private mClientList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/personalpage/service/PrivateModeClient;",
            ">;"
        }
    .end annotation
.end field

.field private mClientName:Ljava/lang/String;

.field mDoNotShowCheck:Landroid/widget/CheckBox;

.field final mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

.field private mIsSuccessFileTransfer:Z

.field private final mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

.field private mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

.field mPrivateModeNormalDialog:Landroid/app/AlertDialog;

.field private mTokenMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/samsung/android/personalpage/service/PrivateModeClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->DEBUG:Z

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    .line 78
    sput-boolean v1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    return-void

    :cond_0
    move v0, v1

    .line 59
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 88
    invoke-direct {p0}, Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;-><init>()V

    .line 67
    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    .line 75
    iput-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsSuccessFileTransfer:Z

    .line 92
    new-instance v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    .line 89
    check-cast p1, Lcom/samsung/android/personalpage/service/PersonalPageService;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleCheckClients()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleVerifyUser()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleMountPirvateStorage()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->handleUnmountPirvateStorage()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)Lcom/samsung/android/personalpage/service/PersonalPageService;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PrivateModeManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestVerifyUser()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PrivateModeManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 56
    sput-boolean p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    return p0
.end method

.method private evtIdToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "evtId"    # I

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "evtString":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    .line 307
    const-string v0, "NULL"

    .line 311
    :goto_0
    return-object v0

    .line 292
    :sswitch_0
    const-string v0, "PREPARED"

    .line 293
    goto :goto_0

    .line 295
    :sswitch_1
    const-string v0, "MOUNTED"

    .line 296
    goto :goto_0

    .line 298
    :sswitch_2
    const-string v0, "UNMOUNTED"

    .line 299
    goto :goto_0

    .line 301
    :sswitch_3
    const-string v0, "CANCELLED"

    .line 302
    goto :goto_0

    .line 304
    :sswitch_4
    const-string v0, "ERROR_INTERNAL"

    .line 305
    goto :goto_0

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x15 -> :sswitch_4
    .end sparse-switch
.end method

.method private getDensity()I
    .locals 2

    .prologue
    .line 645
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 646
    .local v0, "density":I
    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const-class v1, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;

    invoke-direct {v0, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    .line 85
    :cond_0
    sget-object v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 82
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleCheckClients()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 175
    .local v0, "numClients":I
    const-string v1, "PrivateModeManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckClients: Clients Size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 178
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 179
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V

    .line 188
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v2, "pref_pp_normal_off_disclaimer_noti"

    invoke-virtual {v1, v2, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPreferenceBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->showPrivateModeNormalDialog(Z)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestUnmountPirvateStorage()V

    goto :goto_0
.end method

.method private declared-synchronized handleMountPirvateStorage()V
    .locals 3

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-eqz v0, :cond_1

    .line 220
    const-string v0, "PrivateModeManagerService"

    const-string v1, "handleMountPirvateStorage: already mounted"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 223
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPrivateModeStorageManager()Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    .line 225
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    if-nez v0, :cond_2

    .line 226
    const-string v0, "PrivateModeManagerService"

    const-string v1, "handleMountPirvateStorage: StorageManager is null"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    const/4 v1, 0x1

    sget-object v2, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mInstance:Lcom/samsung/android/privatemode/IPrivateModeManager$Stub;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->changeNormalPrivateModeStorage(ZLcom/samsung/android/privatemode/IPrivateModeManager$Stub;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 231
    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    .line 232
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 234
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->SendPrivateModeSurvery(Z)V

    goto :goto_0

    .line 237
    :cond_3
    const-string v0, "PrivateModeManagerService"

    const-string v1, "handleMountPirvateStorage: Failed to mount Private Storage"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private declared-synchronized handleUnmountPirvateStorage()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 248
    monitor-enter p0

    :try_start_0
    sget-boolean v2, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-nez v2, :cond_1

    .line 249
    const-string v0, "PrivateModeManagerService"

    const-string v1, "handleMountPirvateStorage: already unmounted"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 253
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getPrivateModeStorageManager()Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    .line 255
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    if-nez v2, :cond_3

    .line 256
    const-string v2, "PrivateModeManagerService"

    const-string v3, "handleUnmountPirvateStorage: StorageManager is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    move v0, v1

    .line 257
    goto :goto_1

    .line 261
    :cond_3
    :try_start_2
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpStorageMgr:Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/personalpage/service/PersonalPageStorageManager;->changePrivateModeStorage(Z)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 262
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    goto :goto_0

    .line 267
    :cond_4
    const-string v2, "PrivateModeManagerService"

    const-string v3, "handleUnmountPirvateStorage: Failed to Unmount Private Storage"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v2}, Lcom/samsung/android/personalpage/service/PersonalPageService;->isPrivateStorageAtLeastMounted()Z

    move-result v2

    if-eqz v2, :cond_5

    :goto_2
    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private handleVerifyUser()V
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 203
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->handleVerifyUser(Z)V

    .line 205
    :cond_0
    return-void
.end method

.method private requestCheckClients()V
    .locals 2

    .prologue
    const/16 v1, 0x200

    .line 169
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 170
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    .line 171
    return-void
.end method

.method private requestMountPirvateStorage()V
    .locals 2

    .prologue
    const/16 v1, 0x201

    .line 214
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    .line 216
    return-void
.end method

.method private requestShowDialog(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    const/16 v3, 0x204

    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v3}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 275
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 277
    return-void

    :cond_0
    move v0, v1

    .line 275
    goto :goto_0
.end method

.method private requestUnmountPirvateStorage()V
    .locals 2

    .prologue
    const/16 v1, 0x202

    .line 243
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    .line 245
    return-void
.end method

.method private requestVerifyUser()V
    .locals 2

    .prologue
    const/16 v1, 0x203

    .line 191
    sget-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-eqz v0, :cond_0

    .line 192
    const-string v0, "PrivateModeManagerService"

    const-string v1, "handleMountPirvateStorage: already verified"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 197
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v0, v1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private showPrivateModeNormalDialog(Z)V
    .locals 13
    .param p1, "status"    # Z

    .prologue
    const v12, 0x1040014

    const v11, 0x104000a

    const/high16 v10, 0x1000000

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 474
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-nez v5, :cond_0

    .line 475
    const-string v5, "PrivateModeManagerService"

    const-string v6, "showPrivateModeNormalDialog: personalPageService is NULL!!"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :goto_0
    return-void

    .line 479
    :cond_0
    const-string v5, "PrivateModeManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "showPrivatModeNormalDialog: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mIsMountedPrivateStorage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-boolean v7, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 481
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 483
    :cond_1
    if-eqz p1, :cond_2

    .line 484
    invoke-direct {p0, v8}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    .line 489
    :goto_1
    sget-boolean v5, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    if-nez v5, :cond_3

    .line 490
    if-nez p1, :cond_3

    .line 491
    const-string v5, "PrivateModeManagerService"

    const-string v6, "showPrivateModeNormalDialog: Cancel from Confirm window or Verify window"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    invoke-direct {p0, v9}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    goto :goto_0

    .line 486
    :cond_2
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->updatePrivateModeDB(I)V

    goto :goto_1

    .line 497
    :cond_3
    const/4 v2, 0x0

    .line 498
    .local v2, "dialogView":Landroid/view/View;
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 500
    .local v1, "dialogLayout":Landroid/view/LayoutInflater;
    if-nez v1, :cond_4

    .line 501
    const-string v5, "PrivateModeManagerService"

    const-string v6, "showPrivateModeNormalDialog: dialogLayout is null!!"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 505
    :cond_4
    if-eqz p1, :cond_5

    .line 506
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v5}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v5

    if-lt v5, v8, :cond_5

    .line 507
    const/high16 v5, 0x7f030000

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 511
    :cond_5
    if-nez v2, :cond_6

    .line 512
    const-string v5, "PrivateModeManagerService"

    const-string v6, "showPrivateModeNormalDialog: dialogView is null!!"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 516
    :cond_6
    const v5, 0x7f070001

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    .line 517
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getIsWhiteTheme()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 518
    const/high16 v5, 0x7f070000

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 519
    .local v4, "mTextView":Landroid/widget/TextView;
    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "ro.build.scafe"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "latte"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "ro.build.scafe.size"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "tall"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "ro.build.scafe.shot"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "half"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->getDensity()I

    move-result v5

    const/16 v6, 0xa0

    if-ne v5, v6, :cond_9

    .line 524
    const-string v5, "#252525"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 531
    .end local v4    # "mTextView":Landroid/widget/TextView;
    :cond_7
    :goto_2
    if-eqz p1, :cond_a

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v5}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v5

    if-le v5, v8, :cond_a

    .line 532
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 550
    :goto_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 551
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v5}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getLevelPrivatemode()I

    move-result v5

    if-lt v5, v8, :cond_d

    .line 552
    const-string v5, "com.sec.android.app.launcher"

    iget-object v6, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 553
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 560
    :goto_4
    if-nez p1, :cond_8

    .line 561
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 562
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v5}, Lcom/samsung/android/personalpage/service/PersonalPageService;->registerPersonalPageReceiver()V

    .line 564
    :cond_8
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 565
    if-eqz p1, :cond_e

    .line 566
    new-instance v5, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$2;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    invoke-virtual {v0, v11, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 598
    :goto_5
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    .line 599
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    new-instance v6, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;

    invoke-direct {v6, p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$5;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Z)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 626
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d8

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 627
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 628
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPrivateModeNormalDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 526
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .restart local v4    # "mTextView":Landroid/widget/TextView;
    :cond_9
    const-string v5, "#000000"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 535
    .end local v4    # "mTextView":Landroid/widget/TextView;
    :cond_a
    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-static {}, Lcom/samsung/android/personalpage/service/PersonalPageService;->getIsWhiteTheme()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 536
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    const-string v6, "#000000"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 539
    :cond_b
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mDoNotShowCheck:Landroid/widget/CheckBox;

    new-instance v6, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;

    invoke-direct {v6, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$1;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 545
    :catch_0
    move-exception v3

    .line 546
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 555
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_c
    const v5, 0x7f050024

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 558
    :cond_d
    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_4

    .line 581
    :cond_e
    const/high16 v5, 0x1040000

    new-instance v6, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$3;

    invoke-direct {v6, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$3;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 589
    new-instance v5, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;

    invoke-direct {v5, p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$4;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;)V

    invoke-virtual {v0, v11, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_5
.end method

.method private updatePrivateModeDB(I)V
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 632
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    invoke-virtual {v0, p1}, Lcom/samsung/android/personalpage/service/PersonalPageService;->updateSettingDB(I)V

    .line 634
    if-ne p1, v1, :cond_1

    .line 635
    invoke-static {v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    .line 636
    const-string v0, "sys.samsung.personalpage.mode"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    if-nez p1, :cond_0

    .line 638
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/personalpage/service/util/PersonalPageNotiManager;->setPrivateModeNotification(Z)V

    .line 639
    const-string v0, "sys.samsung.personalpage.mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected declared-synchronized KillAllClient()V
    .locals 2

    .prologue
    .line 693
    monitor-enter p0

    :try_start_0
    const-string v0, "PrivateModeManagerService"

    const-string v1, "KillAllClient"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->notifyEventToClient(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    monitor-exit p0

    return-void

    .line 693
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected clearNormalM2P()V
    .locals 1

    .prologue
    .line 698
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsMountedPrivateStorage:Z

    .line 699
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 651
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v3, v6}, Lcom/samsung/android/personalpage/service/PersonalPageService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 652
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump PrivateModeManagerService from from pid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ", uid="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " without permission "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    :goto_0
    return-void

    .line 660
    :cond_0
    const-string v3, "PrivateModeManagerService"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    const-string v3, "==========================================================================="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 662
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 664
    .local v4, "origId":J
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 665
    const-string v3, "  Active clients:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_3

    .line 667
    :cond_1
    const-string v3, "    None."

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 678
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 679
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 671
    :cond_3
    const/4 v2, 0x0

    .line 672
    .local v2, "index":I
    iget-object v3, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    .line 673
    .local v0, "c":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  * Client #"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ": "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 674
    invoke-virtual {v0, p2}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->dump(Ljava/io/PrintWriter;)V

    .line 675
    add-int/lit8 v2, v2, 0x1

    .line 676
    goto :goto_1
.end method

.method protected getNumOfRegisteredClient()I
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 684
    :cond_0
    const-string v0, "PrivateModeManagerService"

    const-string v1, "getNumOfRegisteredClient: 0"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    const/4 v0, 0x0

    .line 688
    :goto_0
    return v0

    .line 687
    :cond_1
    const-string v0, "PrivateModeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRegisteredClient: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected declared-synchronized notifyEventToClient(I)V
    .locals 5
    .param p1, "evtId"    # I

    .prologue
    .line 280
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    .line 281
    .local v0, "c":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    const-string v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyEventToClient, client : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", onStateChange : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->evtIdToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    invoke-virtual {v0, p1}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->onEvent(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 280
    .end local v0    # "c":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    .end local v1    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 284
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method onClientDied(Landroid/os/IBinder;Lcom/samsung/android/personalpage/service/PrivateModeClient;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "argClient"    # Lcom/samsung/android/personalpage/service/PrivateModeClient;

    .prologue
    .line 457
    const-string v0, "PrivateModeManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClientDied: token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " client="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    monitor-enter p0

    .line 465
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 466
    iget-object v0, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestCheckClients()V

    .line 469
    monitor-exit p0

    .line 470
    return-void

    .line 469
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method onVerifiedUser()V
    .locals 2

    .prologue
    .line 209
    const-string v0, "PrivateModeManagerService"

    const-string v1, "onVerifiedUser"

    invoke-static {v0, v1}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestMountPirvateStorage()V

    .line 211
    return-void
.end method

.method public registerClient(Lcom/samsung/android/privatemode/IPrivateModeClient;Landroid/os/Bundle;)Landroid/os/IBinder;
    .locals 8
    .param p1, "client"    # Lcom/samsung/android/privatemode/IPrivateModeClient;
    .param p2, "clientInfo"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x205

    const/4 v4, 0x0

    .line 316
    if-nez p1, :cond_0

    .line 317
    const-string v5, "PrivateModeManagerService"

    const-string v6, "registerClient: client is null"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 352
    :goto_0
    return-object v3

    .line 321
    :cond_0
    invoke-static {}, Lcom/samsung/android/privatemode/PrivateModeManager;->isM2PActivating()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 322
    const-string v5, "PrivateModeManagerService"

    const-string v6, "registerClient: M2P is Activating"

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v5, v7}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->removeMessages(I)V

    .line 324
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mH:Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;

    invoke-virtual {v5, v7}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService$H;->sendEmptyMessage(I)Z

    move-object v3, v4

    .line 325
    goto :goto_0

    .line 327
    :cond_1
    const-string v5, "package_name"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientName:Ljava/lang/String;

    .line 328
    invoke-interface {p1}, Lcom/samsung/android/privatemode/IPrivateModeClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    .line 329
    .local v3, "token":Landroid/os/IBinder;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 332
    .local v0, "pid":I
    const-string v5, "PrivateModeManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "registerClient: client="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " as token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " package_name="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v5, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v6, "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    monitor-enter p0

    .line 338
    const/4 v1, 0x0

    .line 339
    .local v1, "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 340
    const-string v4, "PrivateModeManagerService"

    const-string v5, "registerClient: client already registered"

    invoke-static {v4, v5}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestShowDialog(Z)V

    .line 351
    :goto_1
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 344
    :cond_2
    :try_start_1
    new-instance v2, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/samsung/android/personalpage/service/PrivateModeClient;-><init>(Lcom/samsung/android/personalpage/service/PrivateModeManagerService;Lcom/samsung/android/privatemode/IPrivateModeClient;ILandroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 345
    .end local v1    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    .local v2, "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :try_start_2
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    iget-object v4, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestShowDialog(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v1, v2

    .end local v2    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    .restart local v1    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    goto :goto_1

    .line 351
    .end local v1    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    .restart local v2    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    :catchall_1
    move-exception v4

    move-object v1, v2

    .end local v2    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    .restart local v1    # "pmClient":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    goto :goto_2
.end method

.method public unRegisterClient(Landroid/os/IBinder;Z)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 358
    iput-boolean p2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mIsSuccessFileTransfer:Z

    .line 359
    if-nez p1, :cond_0

    .line 360
    const-string v2, "PrivateModeManagerService"

    const-string v3, "unregisterClient: token is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :goto_0
    return v1

    .line 363
    :cond_0
    const-string v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterClient: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v3, "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    monitor-enter p0

    .line 369
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 370
    const-string v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterClient: client("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not registered!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    monitor-exit p0

    goto :goto_0

    .line 387
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 373
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    .line 374
    .local v0, "client":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->cleanUp()V

    .line 381
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 382
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 385
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestCheckClients()V

    .line 387
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 388
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public unregisterClient(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 393
    if-nez p1, :cond_0

    .line 394
    const-string v2, "PrivateModeManagerService"

    const-string v3, "unregisterClient: token is null"

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :goto_0
    return v1

    .line 397
    :cond_0
    const-string v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterClient: token="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mPpService:Lcom/samsung/android/personalpage/service/PersonalPageService;

    const-string v3, "com.sec.android.permission.LAUNCH_PERSONAL_PAGE_SERVICE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/personalpage/service/PersonalPageService;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    monitor-enter p0

    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 404
    const-string v2, "PrivateModeManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterClient: client("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") is not registered!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/personalpage/service/util/PersonalPageLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    monitor-exit p0

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 407
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/personalpage/service/PrivateModeClient;

    .line 408
    .local v0, "client":Lcom/samsung/android/personalpage/service/PrivateModeClient;
    invoke-virtual {v0}, Lcom/samsung/android/personalpage/service/PrivateModeClient;->cleanUp()V

    .line 415
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mTokenMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 416
    iget-object v1, p0, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->mClientList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/personalpage/service/PrivateModeManagerService;->requestCheckClients()V

    .line 419
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    const/4 v1, 0x1

    goto :goto_0
.end method
