.class Lcom/android/server/policy/PhoneWindowManager$12;
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
    .line 2985
    iput-object p1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2988
    const-string v1, "android.app.action.DEBUG_RECONFIGURE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2989
    const-string v1, "PWM_DEBUG"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    move-object v0, v1

    check-cast v0, [Z

    .line 2990
    .local v0, "pwm_debug":[Z
    iget-object v1, p0, this$0:Lcom/android/server/policy/PhoneWindowManager;

    # invokes: Lcom/android/server/policy/PhoneWindowManager;->reconfigureDebug([Z)V
    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3600(Lcom/android/server/policy/PhoneWindowManager;[Z)V

    .line 2992
    .end local v0    # "pwm_debug":[Z
    :cond_1c
    return-void
.end method
