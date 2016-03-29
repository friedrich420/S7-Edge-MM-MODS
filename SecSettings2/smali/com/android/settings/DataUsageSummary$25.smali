.class Lcom/android/settings/DataUsageSummary$25;
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
    .line 3465
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 3469
    const-string v0, "DataUsage/LPF"

    const-string v1, "manual check data"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3470
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v0}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v0

    if-le v0, v3, :cond_2

    .line 3471
    const-string v0, "DataUsage/LPF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set  Data Monitoring, the sim slot is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3472
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v0

    sput v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    .line 3473
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3474
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v0

    aget v0, v0, v4

    sput v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    .line 3483
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v0, v0, Lcom/android/settings/DataUsageSummary;->mDataUsedEditorFragment:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mVertifyTrafficHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$4800(Lcom/android/settings/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->show(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    .line 3484
    return-void

    .line 3477
    :cond_2
    const-string v0, "DataUsage/LPF"

    const-string v1, "set  Data Monitoring, only one SIM card"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3478
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v0

    sput v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    .line 3479
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 3480
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$25;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v0

    aget v0, v0, v4

    sput v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    goto :goto_0
.end method
