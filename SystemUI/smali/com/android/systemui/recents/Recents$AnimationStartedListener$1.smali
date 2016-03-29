.class Lcom/android/systemui/recents/Recents$AnimationStartedListener$1;
.super Landroid/content/BroadcastReceiver;
.source "Recents.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/Recents$AnimationStartedListener;->onAnimationStarted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/recents/Recents$AnimationStartedListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/Recents$AnimationStartedListener;)V
    .locals 0

    .prologue
    .line 1671
    iput-object p1, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener$1;->this$1:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1674
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents$AnimationStartedListener$1;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener$1;->this$1:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mStartAnimationTriggered:Z

    .line 1677
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener$1;->this$1:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/recents/Recents$AnimationStartedListener;->mNumOfStartedAnimation:I
    invoke-static {v0, v1}, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->access$102(Lcom/android/systemui/recents/Recents$AnimationStartedListener;I)I

    .line 1689
    :goto_0
    return-void

    .line 1683
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recents/Recents$AnimationStartedListener$1;->this$1:Lcom/android/systemui/recents/Recents$AnimationStartedListener;

    iget-object v0, v0, Lcom/android/systemui/recents/Recents$AnimationStartedListener;->this$0:Lcom/android/systemui/recents/Recents;

    iget-object v0, v0, Lcom/android/systemui/recents/Recents;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/recents/Recents$AnimationStartedListener$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recents/Recents$AnimationStartedListener$1$1;-><init>(Lcom/android/systemui/recents/Recents$AnimationStartedListener$1;)V

    const-wide/16 v2, 0x19

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
