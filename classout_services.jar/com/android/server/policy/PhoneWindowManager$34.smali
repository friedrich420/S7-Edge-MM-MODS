.class Lcom/android/server/policy/PhoneWindowManager$34;
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
    .line 9861
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 9864
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 9865
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->bIsCharging:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4102(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 9869
    :cond_12
    :goto_12
    return-void

    .line 9866
    :cond_13
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 9867
    iget-object v0, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->bIsCharging:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$4102(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_12
.end method
