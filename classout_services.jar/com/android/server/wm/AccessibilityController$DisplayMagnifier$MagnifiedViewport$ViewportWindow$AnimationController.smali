.class final Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow$AnimationController;
.super Landroid/os/Handler;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AnimationController"
.end annotation


# static fields
.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field private static final MSG_FRAME_SHOWN_STATE_CHANGED:I = 0x1

.field private static final PROPERTY_NAME_ALPHA:Ljava/lang/String; = "alpha"


# instance fields
.field private final mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

.field final synthetic this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 9
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 896
    iput-object p1, p0, this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    .line 897
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 898
    const-string v1, "alpha"

    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_32

    invoke-static {p1, v1, v4}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    .line 901
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 902
    .local v0, "interpolator":Landroid/view/animation/Interpolator;
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x10e0002

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    .line 905
    .local v2, "longAnimationDuration":J
    iget-object v1, p0, mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 906
    iget-object v1, p0, mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 907
    return-void

    .line 898
    nop

    :array_32
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 916
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_4a

    .line 941
    :goto_7
    return-void

    .line 918
    :pswitch_8
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_22

    move v1, v2

    .line 919
    .local v1, "shown":Z
    :goto_d
    iget v4, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v2, :cond_24

    move v0, v2

    .line 921
    .local v0, "animate":Z
    :goto_12
    if-eqz v0, :cond_34

    .line 922
    iget-object v2, p0, mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 923
    iget-object v2, p0, mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_7

    .end local v0    # "animate":Z
    .end local v1    # "shown":Z
    :cond_22
    move v1, v3

    .line 918
    goto :goto_d

    .restart local v1    # "shown":Z
    :cond_24
    move v0, v3

    .line 919
    goto :goto_12

    .line 925
    .restart local v0    # "animate":Z
    :cond_26
    if-eqz v1, :cond_2e

    .line 926
    iget-object v2, p0, mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_7

    .line 928
    :cond_2e
    iget-object v2, p0, mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_7

    .line 932
    :cond_34
    iget-object v2, p0, mShowHideFrameAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 933
    if-eqz v1, :cond_43

    .line 934
    iget-object v2, p0, this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    goto :goto_7

    .line 936
    :cond_43
    iget-object v2, p0, this$2:Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AccessibilityController$DisplayMagnifier$MagnifiedViewport$ViewportWindow;->setAlpha(I)V

    goto :goto_7

    .line 916
    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onFrameShownStateChanged(ZZ)V
    .registers 6
    .param p1, "shown"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 910
    if-eqz p1, :cond_10

    move v2, v1

    :goto_5
    if-eqz p2, :cond_8

    move v0, v1

    :cond_8
    invoke-virtual {p0, v1, v2, v0}, obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 912
    return-void

    :cond_10
    move v2, v0

    .line 910
    goto :goto_5
.end method
