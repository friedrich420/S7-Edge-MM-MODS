.class public Landroid/widget/HoverPopupWindow$TouchablePopupContainer;
.super Landroid/widget/FrameLayout;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchablePopupContainer"
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x1

.field private static final TIMEOUT_DELAY:I = 0x1f4

.field private static final TIMEOUT_DELAY_LONG:I = 0x7d0


# instance fields
.field protected mContainerDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mIsHoverExitCalled:Z

.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 3054
    iput-object p1, p0, this$0:Landroid/widget/HoverPopupWindow;

    .line 3055
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 3046
    const/4 v0, 0x0

    iput-boolean v0, p0, mIsHoverExitCalled:Z

    .line 3047
    iput-object v1, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 3049
    iput-object v1, p0, mContainerDismissHandler:Landroid/os/Handler;

    .line 3058
    new-instance v0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;-><init>(Landroid/widget/HoverPopupWindow$TouchablePopupContainer;Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, mContainerDismissHandler:Landroid/os/Handler;

    .line 3072
    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3109
    .local v0, "action":I
    const/16 v2, 0xa

    if-ne v0, v2, :cond_38

    .line 3110
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {p0, v2, v3, v4}, pointInView(FFF)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 3112
    const/4 v2, 0x1

    iput-boolean v2, p0, mIsHoverExitCalled:Z

    .line 3113
    new-instance v2, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$3;

    invoke-direct {v2, p0}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$3;-><init>(Landroid/widget/HoverPopupWindow$TouchablePopupContainer;)V

    iput-object v2, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 3118
    iget-object v2, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v5}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 3130
    :cond_29
    :goto_29
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_2d
    return v1

    .line 3122
    :cond_2e
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3123
    .local v1, "superRet":Z
    iget-object v2, p0, this$0:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_2d

    .line 3126
    .end local v1    # "superRet":Z
    :cond_38
    const/4 v2, 0x7

    if-ne v0, v2, :cond_29

    iget-object v2, p0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mToolType:I
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2000(Landroid/widget/HoverPopupWindow;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_29

    .line 3127
    invoke-virtual {p0}, resetTimeout()V

    goto :goto_29
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 3078
    iget-boolean v1, p0, mIsHoverExitCalled:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_13

    .line 3080
    iget-object v1, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3081
    const/4 v1, 0x0

    iput-object v1, p0, mDismissPopupRunnable:Ljava/lang/Runnable;

    .line 3082
    const/4 v1, 0x0

    iput-boolean v1, p0, mIsHoverExitCalled:Z

    .line 3085
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 3087
    .local v0, "superRet":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_30

    iget-object v1, p0, this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z
    invoke-static {v1}, Landroid/widget/HoverPopupWindow;->access$1900(Landroid/widget/HoverPopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 3088
    new-instance v1, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$2;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$2;-><init>(Landroid/widget/HoverPopupWindow$TouchablePopupContainer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, postDelayed(Ljava/lang/Runnable;J)Z

    .line 3095
    :cond_30
    return v0
.end method

.method public resetTimeout()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 3134
    iget-object v0, p0, mContainerDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_38

    .line 3135
    iget-object v0, p0, mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3136
    iget-object v0, p0, mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 3139
    :cond_12
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_39

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "gt5note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string/jumbo v1, "noble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 3140
    :cond_2b
    iget-object v0, p0, mContainerDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3145
    :cond_38
    :goto_38
    return-void

    .line 3142
    :cond_39
    iget-object v0, p0, mContainerDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_38
.end method
