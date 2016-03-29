.class Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;
.super Landroid/database/ContentObserver;
.source "UsefulFeatureHub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/usefulfeature/UsefulFeatureHub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;


# direct methods
.method constructor <init>(Lcom/android/settings/usefulfeature/UsefulFeatureHub;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 125
    iget-object v3, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v3}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$100(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "smart_capture"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$100(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "multi_window_setting_switch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 126
    iget-object v3, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$300(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "access_control_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 127
    .local v0, "onInteractionConrol":I
    if-ne v0, v1, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 135
    .end local v0    # "onInteractionConrol":I
    :cond_0
    :goto_0
    return-void

    .line 131
    .restart local v0    # "onInteractionConrol":I
    :cond_1
    iget-object v3, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v3}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 132
    iget-object v3, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v3}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v4}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$400(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$2;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$500(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
