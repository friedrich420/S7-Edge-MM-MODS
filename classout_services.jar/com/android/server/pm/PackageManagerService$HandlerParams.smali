.class abstract Lcom/android/server/pm/PackageManagerService$HandlerParams;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandlerParams"
.end annotation


# static fields
.field private static final MAX_RETRIES:I = 0x4


# instance fields
.field private mRetries:I

.field private final mUser:Landroid/os/UserHandle;

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/UserHandle;)V
    .registers 4
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 15592
    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15587
    const/4 v0, 0x0

    iput v0, p0, mRetries:I

    .line 15593
    iput-object p2, p0, mUser:Landroid/os/UserHandle;

    .line 15594
    return-void
.end method


# virtual methods
.method getUser()Landroid/os/UserHandle;
    .registers 2

    .prologue
    .line 15597
    iget-object v0, p0, mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method abstract handleReturnCode()V
.end method

.method abstract handleServiceError()V
.end method

.method abstract handleStartCopy()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method final serviceError()V
    .registers 1

    .prologue
    .line 15625
    invoke-virtual {p0}, handleServiceError()V

    .line 15626
    invoke-virtual {p0}, handleReturnCode()V

    .line 15627
    return-void
.end method

.method final startCopy()Z
    .registers 5

    .prologue
    .line 15605
    :try_start_0
    iget v2, p0, mRetries:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, mRetries:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_1e

    .line 15606
    const-string v2, "PackageManager"

    const-string v3, "Failed to invoke remote methods on default container service. Giving up"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15607
    iget-object v2, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 15608
    invoke-virtual {p0}, handleServiceError()V

    .line 15609
    const/4 v1, 0x0

    .line 15620
    :goto_1d
    return v1

    .line 15611
    :cond_1e
    invoke-virtual {p0}, handleStartCopy()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_26

    .line 15612
    const/4 v1, 0x1

    .line 15619
    .local v1, "res":Z
    :goto_22
    invoke-virtual {p0}, handleReturnCode()V

    goto :goto_1d

    .line 15614
    .end local v1    # "res":Z
    :catch_26
    move-exception v0

    .line 15616
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, v2, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendEmptyMessage(I)Z

    .line 15617
    const/4 v1, 0x0

    .restart local v1    # "res":Z
    goto :goto_22
.end method
