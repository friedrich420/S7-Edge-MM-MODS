.class Lcom/android/server/audio/AudioService$SetModeDeathHandler;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetModeDeathHandler"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field private mMode:I

.field private mPid:I

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;I)V
    .registers 5
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 3227
    iput-object p1, p0, this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3225
    const/4 v0, 0x0

    iput v0, p0, mMode:I

    .line 3228
    iput-object p2, p0, mCb:Landroid/os/IBinder;

    .line 3229
    iput p3, p0, mPid:I

    .line 3230
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/audio/AudioService$SetModeDeathHandler;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/AudioService$SetModeDeathHandler;

    .prologue
    .line 3222
    iget v0, p0, mPid:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .registers 11

    .prologue
    .line 3233
    const/4 v3, 0x0

    .line 3234
    .local v3, "newModeOwnerPid":I
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$1500(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v5

    monitor-enter v5

    .line 3235
    :try_start_8
    const-string v4, "AudioService"

    const-string/jumbo v6, "setMode() client died"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3236
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # getter for: Lcom/android/server/audio/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/android/server/audio/AudioService;->access$1500(Lcom/android/server/audio/AudioService;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3237
    .local v2, "index":I
    if-gez v2, :cond_34

    .line 3238
    const-string v4, "AudioService"

    const-string/jumbo v6, "unregistered setMode() client died"

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3242
    :goto_24
    monitor-exit v5
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_42

    .line 3245
    if-eqz v3, :cond_33

    .line 3246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3247
    .local v0, "ident":J
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    # invokes: Lcom/android/server/audio/AudioService;->disconnectBluetoothSco(I)V
    invoke-static {v4, v3}, Lcom/android/server/audio/AudioService;->access$1700(Lcom/android/server/audio/AudioService;I)V

    .line 3248
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3250
    .end local v0    # "ident":J
    :cond_33
    return-void

    .line 3240
    :cond_34
    :try_start_34
    iget-object v4, p0, this$0:Lcom/android/server/audio/AudioService;

    const/4 v6, 0x0

    iget-object v7, p0, mCb:Landroid/os/IBinder;

    iget v8, p0, mPid:I

    const-string v9, "AudioService"

    # invokes: Lcom/android/server/audio/AudioService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    invoke-static {v4, v6, v7, v8, v9}, Lcom/android/server/audio/AudioService;->access$1600(Lcom/android/server/audio/AudioService;ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v3

    goto :goto_24

    .line 3242
    .end local v2    # "index":I
    :catchall_42
    move-exception v4

    monitor-exit v5
    :try_end_44
    .catchall {:try_start_34 .. :try_end_44} :catchall_42

    throw v4
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 3265
    iget-object v0, p0, mCb:Landroid/os/IBinder;

    return-object v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 3261
    iget v0, p0, mMode:I

    return v0
.end method

.method public getPid()I
    .registers 2

    .prologue
    .line 3253
    iget v0, p0, mPid:I

    return v0
.end method

.method public setMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 3257
    iput p1, p0, mMode:I

    .line 3258
    return-void
.end method
