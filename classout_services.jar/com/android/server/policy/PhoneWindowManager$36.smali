.class Lcom/android/server/policy/PhoneWindowManager$36;
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
    .line 9956
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 9958
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 9959
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "org.codeaurora.intent.action.WIFI_DISPLAY_VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 9960
    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 9961
    .local v1, "state":I
    if-ne v1, v5, :cond_2e

    .line 9962
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v5, v2, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    .line 9966
    :goto_1c
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-string/jumbo v3, "wfd_UIBC_rot"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayCustomRotation:I

    .line 9968
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->updateRotation(Z)V

    .line 9970
    .end local v1    # "state":I
    :cond_2d
    return-void

    .line 9964
    .restart local v1    # "state":I
    :cond_2e
    iget-object v2, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    iput-boolean v3, v2, Lcom/android/server/policy/PhoneWindowManager;->mWifiDisplayConnected:Z

    goto :goto_1c
.end method
