.class Lcom/android/server/policy/sec/SamsungPhoneWindowManager$4;
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
    .line 515
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
    const/4 v2, 0x1

    .line 517
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 518
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 519
    invoke-static {p1}, Lcom/android/server/policy/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 520
    iget-object v3, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v3}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->getPenState()I

    move-result v1

    .line 521
    .local v1, "penState":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_5b

    .line 522
    iget-object v3, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    const-string/jumbo v4, "penInsert"

    if-ne v1, v2, :cond_5c

    :goto_27
    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 523
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    const-string/jumbo v3, "isScreenOn"

    iget-object v4, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isScreenOn()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 524
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    const-string/jumbo v3, "isKeyguardLocked"

    iget-object v4, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v4, v4, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v4}, Lcom/android/server/policy/PhoneWindowManager;->isKeyguardLocked()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 525
    iget-object v2, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, this$0:Lcom/android/server/policy/sec/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/sec/SamsungPhoneWindowManager;->mPenInsertedIntentUserSwitch:Landroid/content/Intent;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 529
    .end local v1    # "penState":I
    :cond_5b
    return-void

    .line 522
    .restart local v1    # "penState":I
    :cond_5c
    const/4 v2, 0x0

    goto :goto_27
.end method
