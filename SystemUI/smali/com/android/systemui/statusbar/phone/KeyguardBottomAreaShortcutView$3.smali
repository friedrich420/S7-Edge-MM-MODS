.class Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep(I)V
    .locals 6
    .param p1, "why"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 434
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1200(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "tap_to_icon"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v0, v1

    .line 436
    .local v0, "trayMode":Z
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 437
    const-string v3, "KeyguardBottomAreaShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onFinishedGoingToSleep : new traySquicleMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z
    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1302(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    .line 441
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->hasShortcutForLeft()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcutsIcon(I)V

    .line 443
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/shortcut/ShortcutManager;->hasShortcutForRight()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcutsIcon(I)V

    .line 446
    :cond_1
    return-void

    .end local v0    # "trayMode":Z
    :cond_2
    move v0, v2

    .line 434
    goto :goto_0
.end method

.method public onOpenThemeChanged()V
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcuts()V

    .line 419
    return-void
.end method

.method public onSimStateChanged(IILcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "slotId"    # I
    .param p3, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 422
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v0

    .line 423
    .local v0, "oldPermDisableState":Z
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isSupportSimPermDisabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1002(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    .line 425
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$1000(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 426
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcuts()V

    .line 428
    :cond_0
    return-void

    .line 423
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onStartedWakingUp()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isLeftShortcutForLiveIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcutsIcon(I)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/shortcut/ShortcutManager;->isRightShortcutForLiveIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcutsIcon(I)V

    .line 370
    :cond_1
    return-void
.end method

.method public onSystemSettingsChanged(Landroid/net/Uri;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 374
    const-string v3, "ultra_powersaving_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "emergency_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 376
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v1

    .line 377
    .local v1, "oldSavingMode":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$400(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isUltraPowerSavingMode()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_1
    const/4 v3, 0x1

    :goto_0
    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$302(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    .line 379
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v3

    if-ne v1, v3, :cond_4

    .line 414
    .end local v1    # "oldSavingMode":Z
    :cond_2
    :goto_1
    return-void

    .line 377
    .restart local v1    # "oldSavingMode":Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_0

    .line 383
    :cond_4
    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$300(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 384
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftAffordance()V

    .line 385
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    .line 386
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    goto :goto_1

    .line 389
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    new-instance v4, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;)V

    const-wide/16 v6, 0x7d0

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 396
    .end local v1    # "oldSavingMode":Z
    :cond_6
    const-string v3, "set_shortcuts_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 397
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v2

    .line 398
    .local v2, "oldShortcutVisibleForMDM":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$700(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$602(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    .line 399
    const-string v3, "KeyguardBottomAreaShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSystemSettingsChanged oldShortcutVisibleForMDM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mShortcutVisibleForMDM = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 404
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcuts()V

    goto/16 :goto_1

    .line 406
    .end local v2    # "oldShortcutVisibleForMDM":Z
    :cond_7
    const-string v3, "kids_home_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 407
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKidsModeEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v0

    .line 408
    .local v0, "oldKidsModeEnalbed":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$900(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->istKidsHomeModeEnabled()Z

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKidsModeEnabled:Z
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$802(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z

    .line 409
    const-string v3, "KeyguardBottomAreaShortcutView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSystemSettingsChanged kids_mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKidsModeEnabled:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKidsModeEnabled:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$800(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z

    move-result v3

    if-eq v0, v3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    # getter for: Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/shortcut/ShortcutManager;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->access$100(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/shortcut/ShortcutManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/shortcut/ShortcutManager;->updateShortcuts()V

    goto/16 :goto_1
.end method
