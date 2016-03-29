.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBottomAreaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V
    .locals 0

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintHelp(ILjava/lang/String;Z)V
    .locals 6
    .param p1, "msgId"    # I
    .param p2, "helpString"    # Ljava/lang/String;
    .param p3, "isCountdownTimerRunning"    # Z

    .prologue
    .line 1034
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithFingerprintAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1038
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setTransientFpError(Z)V

    .line 1039
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    .line 1040
    if-nez p3, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1041
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->showHelpTextBounceAnimation()V

    .line 1044
    :cond_1
    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIsSecure:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1049
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 1051
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 1052
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleAttemptLockout(J)V

    .line 1057
    .end local v0    # "deadline":J
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTransientFpErrorClearRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1058
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mTransientFpErrorClearRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Ljava/lang/Runnable;

    move-result-object v3

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1054
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onFingerprintRunningStateChanged(Z)V
    .locals 1
    .param p1, "running"    # Z

    .prologue
    .line 1027
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setLockIconVisibility()V

    .line 1029
    return-void
.end method

.method public onFinishedGoingToSleep(I)V
    .locals 2
    .param p1, "why"    # I

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDeviceInteractive(Z)V

    .line 966
    return-void
.end method

.method public onKeyguardVisibilityChanged(Z)V
    .locals 1
    .param p1, "showing"    # Z

    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setLockIconVisibility()V

    .line 991
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 993
    return-void
.end method

.method public onOpenThemeChanged()V
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateIconColorOnWhiteWallpaper()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 1003
    return-void
.end method

.method public onRefreshCarrierInfo()V
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 1021
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScreenOn(Z)V

    .line 985
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 4

    .prologue
    .line 971
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 973
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mIsSecure:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwipeLockShowingBeforeTimeout:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 978
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->handleAttemptLockout(J)V

    .line 980
    :cond_0
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUsimTextAreaVisibility()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 1016
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setDeviceInteractive(Z)V

    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setLockIconVisibility()V

    .line 961
    return-void
.end method

.method public onStrongAuthStateChanged(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/LockIcon;->update()V

    .line 998
    return-void
.end method

.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1007
    const-string v0, "white_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateIconColorOnWhiteWallpaper()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 1010
    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 953
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 954
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView$10;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    # invokes: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateIconColorOnWhiteWallpaper()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    .line 955
    return-void
.end method
