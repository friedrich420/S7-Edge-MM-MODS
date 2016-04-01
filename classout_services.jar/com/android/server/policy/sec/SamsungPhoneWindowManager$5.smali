.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$5;
.super Landroid/content/BroadcastReceiver;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/sec/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;)V
    .registers 2

    .prologue
    .line 533
    iput-object p1, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 535
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v3, "edm.intent.action.internal.kioskmode.REFRESH_HWKEY_CACHE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 538
    :try_start_d
    const-string/jumbo v3, "kioskmode"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/kioskmode/IKioskMode$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/kioskmode/IKioskMode;

    move-result-object v2

    .line 540
    .local v2, "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    if-eqz v2, :cond_2a

    .line 541
    iget-object v3, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    invoke-interface {v2}, Landroid/app/enterprise/kioskmode/IKioskMode;->getBlockedHwKeysCache()Ljava/util/Map;

    move-result-object v4

    # setter for: Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mBlockedHwKeys:Ljava/util/Map;
    invoke-static {v3, v4}, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->access$002(Lcom/android/server/policy/sec/SamsungPhoneWindowManager;Ljava/util/Map;)Ljava/util/Map;

    .line 542
    const-string v3, "SamsungWindowManager"

    const-string v4, "Blocked hw keys cache is being refreshed."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2a} :catch_2b

    .line 548
    .end local v2    # "kioskService":Landroid/app/enterprise/kioskmode/IKioskMode;
    :cond_2a
    :goto_2a
    return-void

    .line 544
    :catch_2b
    move-exception v1

    .line 545
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "SamsungWindowManager"

    const-string v4, "Exception while getting kiosk mode service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2a
.end method
