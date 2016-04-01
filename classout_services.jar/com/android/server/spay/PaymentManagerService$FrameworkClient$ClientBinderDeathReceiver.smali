.class Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;
.super Ljava/lang/Object;
.source "PaymentManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ClientBinderDeathReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    .prologue
    .line 78
    invoke-direct {p0}, deleteClient()V

    return-void
.end method

.method private deleteClient()V
    .registers 7

    .prologue
    .line 89
    const-string v4, "PaymentManagerService"

    const-string v5, "Error: Client stopped. Clearing Databstructures "

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, p0, this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v4, v4, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    iget-object v4, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 91
    .local v3, "s":Ljava/lang/Integer;
    iget-object v4, p0, this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v4, v4, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    iget-object v4, v4, Landroid/spay/PaymentTZServiceCommnInfo;->mTAs:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/spay/TAController;

    .line 93
    .local v0, "controller":Lcom/android/server/spay/TAController;
    :try_start_2d
    invoke-virtual {v0}, Lcom/android/server/spay/TAController;->unloadTA()V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_15

    .line 94
    :catch_31
    move-exception v1

    .line 96
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_15

    .line 99
    .end local v0    # "controller":Lcom/android/server/spay/TAController;
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "s":Ljava/lang/Integer;
    :cond_36
    iget-object v4, p0, this$1:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    iget-object v4, v4, Lcom/android/server/spay/PaymentManagerService$FrameworkClient;->this$0:Lcom/android/server/spay/PaymentManagerService;

    const/4 v5, 0x0

    # setter for: Lcom/android/server/spay/PaymentManagerService;->mRegisteredFWKClient:Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
    invoke-static {v4, v5}, Lcom/android/server/spay/PaymentManagerService;->access$002(Lcom/android/server/spay/PaymentManagerService;Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)Lcom/android/server/spay/PaymentManagerService$FrameworkClient;

    .line 100
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 84
    const-string v0, "PaymentManagerService"

    const-string v1, "Error: Framework App dead, unloading loaded TAs"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, deleteClient()V

    .line 86
    return-void
.end method
