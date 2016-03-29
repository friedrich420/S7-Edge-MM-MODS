.class Lcom/android/settings/applock/AppLockTypeFragment$2;
.super Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;
.source "AppLockTypeFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applock/AppLockTypeFragment;->identifyFinger(Landroid/os/Bundle;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applock/AppLockTypeFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applock/AppLockTypeFragment;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-direct {p0}, Lcom/samsung/android/fingerprint/IFingerprintClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 5
    .param p1, "evt"    # Lcom/samsung/android/fingerprint/FingerprintEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 357
    move-object v1, p1

    .line 358
    .local v1, "event":Lcom/samsung/android/fingerprint/FingerprintEvent;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    invoke-virtual {v4}, Lcom/android/settings/applock/AppLockTypeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    # setter for: Lcom/android/settings/applock/AppLockTypeFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2, v3}, Lcom/android/settings/applock/AppLockTypeFragment;->access$002(Lcom/android/settings/applock/AppLockTypeFragment;Landroid/os/Handler;)Landroid/os/Handler;

    .line 360
    iget-object v2, p0, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    # getter for: Lcom/android/settings/applock/AppLockTypeFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/applock/AppLockTypeFragment;->access$000(Lcom/android/settings/applock/AppLockTypeFragment;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/android/settings/applock/AppLockTypeFragment$2;->this$0:Lcom/android/settings/applock/AppLockTypeFragment;

    # getter for: Lcom/android/settings/applock/AppLockTypeFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/settings/applock/AppLockTypeFragment;->access$000(Lcom/android/settings/applock/AppLockTypeFragment;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applock/AppLockTypeFragment$2$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/applock/AppLockTypeFragment$2$1;-><init>(Lcom/android/settings/applock/AppLockTypeFragment$2;Lcom/samsung/android/fingerprint/FingerprintEvent;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    :cond_0
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "AppPageLockTypeFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFingerprintEvent: Error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
