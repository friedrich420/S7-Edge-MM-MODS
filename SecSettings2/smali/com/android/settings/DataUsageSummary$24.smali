.class Lcom/android/settings/DataUsageSummary$24;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 3451
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$24;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3454
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3455
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings.networkmanager.NETWORKMANAGER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 3456
    const-string v1, "subscriberId"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$24;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$3400(Lcom/android/settings/DataUsageSummary;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$24;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v4, p0, Lcom/android/settings/DataUsageSummary$24;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mTabHost:Landroid/widget/TabHost;
    invoke-static {v4}, Lcom/android/settings/DataUsageSummary;->access$3100(Lcom/android/settings/DataUsageSummary;)Landroid/widget/TabHost;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/android/settings/DataUsageSummary;->getSubId(Ljava/lang/String;)I
    invoke-static {v3, v4}, Lcom/android/settings/DataUsageSummary;->access$5200(Lcom/android/settings/DataUsageSummary;Ljava/lang/String;)I

    move-result v3

    # invokes: Lcom/android/settings/DataUsageSummary;->getActiveSubscriberId(Landroid/content/Context;I)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$5300(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3457
    const-string v1, "slotIndex"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$24;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3458
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$24;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$24;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3459
    :cond_0
    const-string v1, "subId"

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$24;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3461
    :cond_1
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$24;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 3462
    return-void
.end method
