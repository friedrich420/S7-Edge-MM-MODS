.class Lcom/android/server/policy/PhoneWindowManager$24;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .prologue
    .line 9625
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9628
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 9629
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mDockMode:I

    .line 9639
    :goto_17
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 9640
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1900(Lcom/android/server/policy/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 9641
    :try_start_24
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->updateOrientationListenerLp()V

    .line 9642
    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_41

    .line 9643
    return-void

    .line 9633
    :cond_2b
    :try_start_2b
    const-string/jumbo v1, "uimode"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/IUiModeManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IUiModeManager;

    move-result-object v0

    .line 9635
    .local v0, "uiModeService":Landroid/app/IUiModeManager;
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-interface {v0}, Landroid/app/IUiModeManager;->getCurrentModeType()I

    move-result v2

    iput v2, v1, Lcom/android/server/policy/PhoneWindowManager;->mUiMode:I
    :try_end_3e
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_3e} :catch_3f

    goto :goto_17

    .line 9636
    .end local v0    # "uiModeService":Landroid/app/IUiModeManager;
    :catch_3f
    move-exception v1

    goto :goto_17

    .line 9642
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    throw v1
.end method
