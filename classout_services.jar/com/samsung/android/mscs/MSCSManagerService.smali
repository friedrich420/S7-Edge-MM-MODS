.class public Lcom/samsung/android/mscs/MSCSManagerService;
.super Lcom/samsung/android/mscs/IMSCSManager$Stub;
.source "MSCSManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSCSManagerService"


# instance fields
.field private final DEBUG:Z

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mUseMdnieScenarioControlServiceConfig:Z

.field private mVGalleryEnable:Z

.field private mVideoEnable:Z

.field private mscsService:Lcom/samsung/android/mscs/MdnieScenarioControlService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/samsung/android/mscs/IMSCSManager$Stub;-><init>()V

    .line 39
    const-string/jumbo v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, DEBUG:Z

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, mscsService:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, mUseMdnieScenarioControlServiceConfig:Z

    .line 48
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 49
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, mUseMdnieScenarioControlServiceConfig:Z

    .line 50
    iget-boolean v0, p0, mUseMdnieScenarioControlServiceConfig:Z

    if-eqz v0, :cond_37

    .line 51
    new-instance v0, Lcom/samsung/android/mscs/MdnieScenarioControlService;

    invoke-direct {v0, p1}, Lcom/samsung/android/mscs/MdnieScenarioControlService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mscsService:Lcom/samsung/android/mscs/MdnieScenarioControlService;

    .line 52
    :cond_37
    return-void
.end method


# virtual methods
.method public getGalleryModeEnable()Z
    .registers 2

    .prologue
    .line 61
    iget-boolean v0, p0, mVGalleryEnable:Z

    return v0
.end method

.method public getVideoModeEnable()Z
    .registers 2

    .prologue
    .line 56
    iget-boolean v0, p0, mVideoEnable:Z

    return v0
.end method

.method public setGalleryModeEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 73
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_3
    iput-boolean p1, p0, mVGalleryEnable:Z

    .line 75
    monitor-exit v1

    .line 76
    return-void

    .line 75
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public setVideoModeEnable(Z)V
    .registers 4
    .param p1, "enable"    # Z

    .prologue
    .line 66
    iget-object v1, p0, mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 67
    :try_start_3
    iput-boolean p1, p0, mVideoEnable:Z

    .line 68
    monitor-exit v1

    .line 69
    return-void

    .line 68
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
