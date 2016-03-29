.class Lcom/android/settings/usefulfeature/UsefulFeatureHub$1;
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
    .line 114
    iput-object p1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 117
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mMotionType:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$100(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "palm_swipe_switch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # getter for: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$000(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/usefulfeature/UsefulFeatureHub$1;->this$0:Lcom/android/settings/usefulfeature/UsefulFeatureHub;

    # invokes: Lcom/android/settings/usefulfeature/UsefulFeatureHub;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v2}, Lcom/android/settings/usefulfeature/UsefulFeatureHub;->access$200(Lcom/android/settings/usefulfeature/UsefulFeatureHub;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_swipe"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 119
    :cond_1
    return-void
.end method
