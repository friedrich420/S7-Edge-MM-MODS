.class abstract Lcom/android/server/MountService$ObbAction;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ObbAction"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x3


# instance fields
.field mObbState:Lcom/android/server/MountService$ObbState;

.field private mRetries:I

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$ObbState;)V
    .registers 3
    .param p2, "obbState"    # Lcom/android/server/MountService$ObbState;

    .prologue
    .line 3666
    iput-object p1, p0, this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3667
    iput-object p2, p0, mObbState:Lcom/android/server/MountService$ObbState;

    .line 3668
    return-void
.end method


# virtual methods
.method public execute(Lcom/android/server/MountService$ObbActionHandler;)V
    .registers 7
    .param p1, "handler"    # Lcom/android/server/MountService$ObbActionHandler;

    .prologue
    const/4 v4, 0x3

    .line 3673
    :try_start_1
    const-string v1, "MountService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting to execute action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    iget v1, p0, mRetries:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mRetries:I

    .line 3675
    iget v1, p0, mRetries:I

    if-le v1, v4, :cond_3c

    .line 3676
    const-string v1, "MountService"

    const-string v2, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    iget-object v1, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    .line 3678
    invoke-virtual {p0}, handleError()V

    .line 3696
    :goto_3b
    return-void

    .line 3681
    :cond_3c
    invoke-virtual {p0}, handleExecute()V

    .line 3683
    const-string v1, "MountService"

    const-string v2, "Posting install MCS_UNBIND"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3684
    iget-object v1, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_50} :catch_51
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_50} :catch_64

    goto :goto_3b

    .line 3686
    :catch_51
    move-exception v0

    .line 3688
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MountService"

    const-string v2, "Posting install MCS_RECONNECT"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    iget-object v1, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto :goto_3b

    .line 3690
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_64
    move-exception v0

    .line 3692
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v2, "Error handling OBB action"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3693
    invoke-virtual {p0}, handleError()V

    .line 3694
    iget-object v1, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mObbActionHandler:Lcom/android/server/MountService$ObbActionHandler;
    invoke-static {v1}, Lcom/android/server/MountService;->access$400(Lcom/android/server/MountService;)Lcom/android/server/MountService$ObbActionHandler;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/server/MountService$ObbActionHandler;->sendEmptyMessage(I)Z

    goto :goto_3b
.end method

.method protected getObbInfo()Landroid/content/res/ObbInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3704
    :try_start_0
    iget-object v2, p0, this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContainerService:Lcom/android/internal/app/IMediaContainerService;
    invoke-static {v2}, Lcom/android/server/MountService;->access$2300(Lcom/android/server/MountService;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v2

    iget-object v3, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v3, v3, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/android/internal/app/IMediaContainerService;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_2d

    move-result-object v1

    .line 3710
    .local v1, "obbInfo":Landroid/content/res/ObbInfo;
    :goto_e
    if-nez v1, :cond_4c

    .line 3711
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t read OBB file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3705
    .end local v1    # "obbInfo":Landroid/content/res/ObbInfo;
    :catch_2d
    move-exception v0

    .line 3706
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "MountService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t call DefaultContainerService to fetch OBB info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v4, v4, Lcom/android/server/MountService$ObbState;->ownerPath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3708
    const/4 v1, 0x0

    .restart local v1    # "obbInfo":Landroid/content/res/ObbInfo;
    goto :goto_e

    .line 3713
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4c
    return-object v1
.end method

.method abstract handleError()V
.end method

.method abstract handleExecute()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected sendNewStatusOrIgnore(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 3717
    iget-object v1, p0, mObbState:Lcom/android/server/MountService$ObbState;

    if-eqz v1, :cond_a

    iget-object v1, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    if-nez v1, :cond_b

    .line 3726
    :cond_a
    :goto_a
    return-void

    .line 3722
    :cond_b
    :try_start_b
    iget-object v1, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v1, v1, Lcom/android/server/MountService$ObbState;->token:Landroid/os/storage/IObbActionListener;

    iget-object v2, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget-object v2, v2, Lcom/android/server/MountService$ObbState;->rawPath:Ljava/lang/String;

    iget-object v3, p0, mObbState:Lcom/android/server/MountService$ObbState;

    iget v3, v3, Lcom/android/server/MountService$ObbState;->nonce:I

    invoke-interface {v1, v2, v3, p1}, Landroid/os/storage/IObbActionListener;->onObbResult(Ljava/lang/String;II)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1a} :catch_1b

    goto :goto_a

    .line 3723
    :catch_1b
    move-exception v0

    .line 3724
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MountService"

    const-string v2, "MountServiceListener went away while calling onObbStateChanged"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a
.end method
