.class final Lcom/android/server/tv/TvInputManagerService$ServiceCallback;
.super Landroid/media/tv/ITvInputServiceCallback$Stub;
.source "TvInputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvInputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceCallback"
.end annotation


# instance fields
.field private final mComponent:Landroid/content/ComponentName;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/tv/TvInputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)V
    .registers 4
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I

    .prologue
    .line 2056
    iput-object p1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    invoke-direct {p0}, Landroid/media/tv/ITvInputServiceCallback$Stub;-><init>()V

    .line 2057
    iput-object p2, p0, mComponent:Landroid/content/ComponentName;

    .line 2058
    iput p3, p0, mUserId:I

    .line 2059
    return-void
.end method

.method private addTvInputLocked(Landroid/media/tv/TvInputInfo;)V
    .registers 6
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .prologue
    .line 2075
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v2, p0, mComponent:Landroid/content/ComponentName;

    iget v3, p0, mUserId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$6500(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v0

    .line 2076
    .local v0, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->inputList:Ljava/util/List;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2077
    iget-object v1, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v2, p0, mUserId:I

    const/4 v3, 0x0

    # invokes: Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 2078
    return-void
.end method

.method private ensureHardwarePermission()V
    .registers 3

    .prologue
    .line 2062
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$4200(Lcom/android/server/tv/TvInputManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.TV_INPUT_HARDWARE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_16

    .line 2064
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "The caller does not have hardware permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2066
    :cond_16
    return-void
.end method

.method private ensureValidInput(Landroid/media/tv/TvInputInfo;)V
    .registers 4
    .param p1, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .prologue
    .line 2069
    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object v0, p0, mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/media/tv/TvInputInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2070
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid TvInputInfo"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2072
    :cond_1a
    return-void
.end method


# virtual methods
.method public addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 5
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .prologue
    .line 2082
    invoke-direct {p0}, ensureHardwarePermission()V

    .line 2083
    invoke-direct {p0, p2}, ensureValidInput(Landroid/media/tv/TvInputInfo;)V

    .line 2084
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2085
    :try_start_d
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V

    .line 2086
    invoke-direct {p0, p2}, addTvInputLocked(Landroid/media/tv/TvInputInfo;)V

    .line 2087
    monitor-exit v1

    .line 2088
    return-void

    .line 2087
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .prologue
    .line 2092
    invoke-direct {p0}, ensureHardwarePermission()V

    .line 2093
    invoke-direct {p0, p2}, ensureValidInput(Landroid/media/tv/TvInputInfo;)V

    .line 2094
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2095
    :try_start_d
    iget-object v0, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v0}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/tv/TvInputHardwareManager;->addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V

    .line 2096
    invoke-direct {p0, p2}, addTvInputLocked(Landroid/media/tv/TvInputInfo;)V

    .line 2097
    monitor-exit v1

    .line 2098
    return-void

    .line 2097
    :catchall_1b
    move-exception v0

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_1b

    throw v0
.end method

.method public removeTvInput(Ljava/lang/String;)V
    .registers 9
    .param p1, "inputId"    # Ljava/lang/String;

    .prologue
    .line 2102
    invoke-direct {p0}, ensureHardwarePermission()V

    .line 2103
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$200(Lcom/android/server/tv/TvInputManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 2104
    :try_start_a
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget-object v5, p0, mComponent:Landroid/content/ComponentName;

    iget v6, p0, mUserId:I

    # invokes: Lcom/android/server/tv/TvInputManagerService;->getServiceStateLocked(Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;
    invoke-static {v3, v5, v6}, Lcom/android/server/tv/TvInputManagerService;->access$6500(Lcom/android/server/tv/TvInputManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/TvInputManagerService$ServiceState;

    move-result-object v2

    .line 2105
    .local v2, "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    const/4 v1, 0x0

    .line 2106
    .local v1, "removed":Z
    # getter for: Lcom/android/server/tv/TvInputManagerService$ServiceState;->inputList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/tv/TvInputManagerService$ServiceState;->access$1200(Lcom/android/server/tv/TvInputManagerService$ServiceState;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2107
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/TvInputInfo;>;"
    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/tv/TvInputInfo;

    invoke-virtual {v3}, Landroid/media/tv/TvInputInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 2109
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 2110
    const/4 v1, 0x1

    .line 2114
    :cond_37
    if-eqz v1, :cond_4c

    .line 2115
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    iget v5, p0, mUserId:I

    const/4 v6, 0x0

    # invokes: Lcom/android/server/tv/TvInputManagerService;->buildTvInputListLocked(I[Ljava/lang/String;)V
    invoke-static {v3, v5, v6}, Lcom/android/server/tv/TvInputManagerService;->access$300(Lcom/android/server/tv/TvInputManagerService;I[Ljava/lang/String;)V

    .line 2116
    iget-object v3, p0, this$0:Lcom/android/server/tv/TvInputManagerService;

    # getter for: Lcom/android/server/tv/TvInputManagerService;->mTvInputHardwareManager:Lcom/android/server/tv/TvInputHardwareManager;
    invoke-static {v3}, Lcom/android/server/tv/TvInputManagerService;->access$5300(Lcom/android/server/tv/TvInputManagerService;)Lcom/android/server/tv/TvInputHardwareManager;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/tv/TvInputHardwareManager;->removeTvInput(Ljava/lang/String;)V

    .line 2120
    :goto_4a
    monitor-exit v4

    .line 2121
    return-void

    .line 2118
    :cond_4c
    const-string v3, "TvInputManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "failed to remove input "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4a

    .line 2120
    .end local v0    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/tv/TvInputInfo;>;"
    .end local v1    # "removed":Z
    .end local v2    # "serviceState":Lcom/android/server/tv/TvInputManagerService$ServiceState;
    :catchall_66
    move-exception v3

    monitor-exit v4
    :try_end_68
    .catchall {:try_start_a .. :try_end_68} :catchall_66

    throw v3
.end method
