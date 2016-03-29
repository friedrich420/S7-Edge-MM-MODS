.class Lcom/android/settings/net/DataUsageAppRestrict$10;
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
    .line 668
    iput-object p1, p0, Lcom/android/settings/net/DataUsageAppRestrict$10;->this$0:Lcom/android/settings/net/DataUsageAppRestrict;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 671
    const-string v0, "DataUsageAppRestrict"

    const-string v1, "Receive() com.android.server.net.action.ALLOW_BACKGROUND"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    # getter for: Lcom/android/settings/net/DataUsageAppRestrict;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {}, Lcom/android/settings/net/DataUsageAppRestrict;->access$500()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 675
    return-void
.end method
