.class Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "CoverCircleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V
    .locals 0

    .prologue
    .line 169
    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverAppCovered(Z)V
    .locals 2
    .param p1, "covered"    # Z

    .prologue
    .line 171
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # getter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$100(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$202(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 173
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/high16 v1, -0x40800000    # -1.0f

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mMoveCircleRadius:F
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$302(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;F)F

    .line 174
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->invalidate()V

    .line 175
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->onUnlockViewReleased()V

    .line 176
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    const/4 v1, 0x1

    # setter for: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->mClearMoveCircle:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$102(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;Z)Z

    .line 178
    :cond_0
    return-void
.end method

.method public onEmergencyStateChanged()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->refreshChildView()V

    .line 182
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView$1;->this$0:Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;

    # invokes: Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->updateVisibility()V
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;->access$400(Lcom/sec/android/cover/sviewcover/effect/CoverCircleView;)V

    .line 183
    return-void
.end method
