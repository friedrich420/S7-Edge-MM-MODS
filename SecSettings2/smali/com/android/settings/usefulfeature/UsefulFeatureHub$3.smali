.class Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;
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
    .line 138
    iput-object p1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 141
    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$100(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "multi_window_setting_switch"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$600(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_window_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v0}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 149
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 147
    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v2}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$700(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$3;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionDBItem:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$500(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v2, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
