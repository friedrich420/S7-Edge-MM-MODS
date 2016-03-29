.class Lcom/android/settings/DataUsageSummary$34;
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
    .line 3643
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3646
    const/4 v0, 0x0

    .line 3647
    .local v0, "isUDSEnable":Z
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v3}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "udsState"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    .line 3649
    :goto_0
    if-eqz v0, :cond_1

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v2, "UDS"

    # invokes: Lcom/android/settings/DataUsageSummary;->getSubFeature(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->access$6100(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3650
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$34;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$ConfirmUDSRestrict;->show(Lcom/android/settings/DataUsageSummary;)V

    .line 3680
    :goto_1
    return-void

    :cond_0
    move v0, v2

    .line 3647
    goto :goto_0

    .line 3652
    :cond_1
    new-instance v1, Lcom/android/settings/DataUsageSummary$34$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DataUsageSummary$34$1;-><init>(Lcom/android/settings/DataUsageSummary$34;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method
