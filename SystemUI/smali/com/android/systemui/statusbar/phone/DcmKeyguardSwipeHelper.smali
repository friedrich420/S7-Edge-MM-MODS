.class public Lcom/android/systemui/statusbar/phone/DcmKeyguardSwipeHelper;
.super Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;
.source "DcmKeyguardSwipeHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardSwipeHelper;-><init>()V

    .line 27
    const-string v0, "DcmKeyguardSwipeHelper"

    const-string v1, "Make Dummy DcmKeyguardSwipeHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method


# virtual methods
.method public animationRunning()Z
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    return v0
.end method

.method public isIntercept()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 30
    const/4 v0, 0x0

    return v0
.end method

.method public onUnlockExecuted()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public onUnlockViewPressed()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public onUnlockViewReleased()V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public onUnlockViewSwiped(Z)V
    .locals 0
    .param p1, "isSwiped"    # Z

    .prologue
    .line 50
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public restoreChildViewVI()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public setFullScreenMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 33
    return-void
.end method

.method public setIntercept(Z)V
    .locals 0
    .param p1, "intercepting"    # Z

    .prologue
    .line 36
    return-void
.end method

.method public setKeyguardAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V
    .locals 0
    .param p1, "helper"    # Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .prologue
    .line 38
    return-void
.end method

.method public startUnlockViewAnimation(JZ)V
    .locals 0
    .param p1, "duration"    # J
    .param p3, "unlockAfter"    # Z

    .prologue
    .line 35
    return-void
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method
