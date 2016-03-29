.class Lcom/android/settings/net/DataUsageAppRestrict$9;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageAppRestrict.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/net/DataUsageAppRestrict;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/net/DataUsageAppRestrict;


# direct methods
.method constructor <init>(Lcom/android/settings/net/DataUsageAppRestrict;)V
    .locals 0

    .prologue
    .line 657
    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$9;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 659
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "action":Ljava/lang/String;
    const-string v1, "DataUsageAppRestrict"

    const-string v3, "Receive() android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    const-string v1, "android.settings.POWERSAVING_DATA_SERVICE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 662
    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {}, Lcom/android/settings/net/DataUsageAppRestrict;->access$500()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/net/DataUsageAppRestrict$9;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mPolicyManager:Landroid/net/NetworkPolicyManager;
    invoke-static {v1}, Lcom/android/settings/net/DataUsageAppRestrict;->access$000(Lcom/android/settings/net/DataUsageAppRestrict;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 663
    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->loadingDialog:Landroid/app/ProgressDialog;
    invoke-static {}, Lcom/android/settings/net/DataUsageAppRestrict;->access$400()Landroid/app/ProgressDialog;

    move-result-object v1

    if-nez v1, :cond_0

    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {}, Lcom/android/settings/net/DataUsageAppRestrict;->access$500()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 665
    :cond_0
    return-void

    .line 662
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
