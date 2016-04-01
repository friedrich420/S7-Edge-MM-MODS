.class Lcom/android/server/spay/PaymentManagerService$FrameworkClient;
.super Ljava/lang/Object;
.source "PaymentManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/spay/PaymentManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FrameworkClient"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;
    }
.end annotation


# instance fields
.field mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

.field mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

.field final mPid:I

.field final mUid:I

.field final synthetic this$0:Lcom/android/server/spay/PaymentManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/spay/PaymentManagerService;Landroid/spay/PaymentTZServiceConfig;Landroid/spay/PaymentTZServiceCommnInfo;II)V
    .registers 10
    .param p2, "config"    # Landroid/spay/PaymentTZServiceConfig;
    .param p3, "tzSvcInfo"    # Landroid/spay/PaymentTZServiceCommnInfo;
    .param p4, "uid"    # I
    .param p5, "pid"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    iput-object p1, p0, this$0:Lcom/android/server/spay/PaymentManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object v1, p0, mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    .line 60
    iput-object v1, p0, mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    .line 67
    iput-object p3, p0, mCommnInfo:Landroid/spay/PaymentTZServiceCommnInfo;

    .line 68
    iput p4, p0, mUid:I

    .line 69
    iput p5, p0, mPid:I

    .line 70
    new-instance v1, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;-><init>(Lcom/android/server/spay/PaymentManagerService$FrameworkClient;)V

    iput-object v1, p0, mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    .line 72
    :try_start_17
    iget-object v1, p2, Landroid/spay/PaymentTZServiceConfig;->mClient:Landroid/os/IBinder;

    iget-object v2, p0, mBinderDeathReceiver:Lcom/android/server/spay/PaymentManagerService$FrameworkClient$ClientBinderDeathReceiver;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1f} :catch_20

    .line 76
    :goto_1f
    return-void

    .line 73
    :catch_20
    move-exception v0

    .line 74
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1f
.end method
