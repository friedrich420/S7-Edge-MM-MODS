.class final Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AccessibilityContentObserver"
.end annotation


# instance fields
.field private final mAccessibilityEnabledUri:Landroid/net/Uri;

.field private final mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

.field private final mDisplayDaltonizerUri:Landroid/net/Uri;

.field private final mDisplayInversionEnabledUri:Landroid/net/Uri;

.field private final mDisplayMagnificationEnabledUri:Landroid/net/Uri;

.field private final mEnabledAccessibilityServicesUri:Landroid/net/Uri;

.field private final mEnhancedWebAccessibilityUri:Landroid/net/Uri;

.field private final mHWkeysDoubleTapEnabledUri:Landroid/net/Uri;

.field private final mHighTextContrastUri:Landroid/net/Uri;

.field private final mOverlayMagnificationEnabledUri:Landroid/net/Uri;

.field private final mProvisionedUri:Landroid/net/Uri;

.field private final mSTalkBackSettingsEnabledUri:Landroid/net/Uri;

.field private final mScreenCurtainEnabledUri:Landroid/net/Uri;

.field private final mSideSyncUri:Landroid/net/Uri;

.field private final mTouchExplorationEnabledUri:Landroid/net/Uri;

.field private final mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

.field private final mUniversalSwitchScreenAsSwitchUri:Landroid/net/Uri;

.field private final mUniversalSwitchUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .registers 4
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 5670
    iput-object p1, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5671
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 5611
    const-string v0, "accessibility_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mAccessibilityEnabledUri:Landroid/net/Uri;

    .line 5614
    const-string/jumbo v0, "touch_exploration_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mTouchExplorationEnabledUri:Landroid/net/Uri;

    .line 5617
    const-string v0, "accessibility_display_magnification_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    .line 5620
    const-string/jumbo v0, "enabled_accessibility_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    .line 5623
    const-string/jumbo v0, "touch_exploration_granted_accessibility_services"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    .line 5626
    const-string v0, "accessibility_script_injection"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    .line 5629
    const-string v0, "accessibility_display_inversion_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mDisplayInversionEnabledUri:Landroid/net/Uri;

    .line 5632
    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    .line 5635
    const-string v0, "accessibility_display_daltonizer"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mDisplayDaltonizerUri:Landroid/net/Uri;

    .line 5638
    const-string/jumbo v0, "high_text_contrast_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mHighTextContrastUri:Landroid/net/Uri;

    .line 5642
    const-string v0, "accessibility_magnifier"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mOverlayMagnificationEnabledUri:Landroid/net/Uri;

    .line 5645
    const-string/jumbo v0, "sidesync_source_connect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mSideSyncUri:Landroid/net/Uri;

    .line 5649
    const-string/jumbo v0, "lcd_curtain"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mScreenCurtainEnabledUri:Landroid/net/Uri;

    .line 5652
    const-string/jumbo v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mProvisionedUri:Landroid/net/Uri;

    .line 5656
    const-string v0, "accessibility_hwkey_doubletap_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mHWkeysDoubleTapEnabledUri:Landroid/net/Uri;

    .line 5660
    const-string/jumbo v0, "enabled_accessibility_s_talkback"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mSTalkBackSettingsEnabledUri:Landroid/net/Uri;

    .line 5664
    const-string v0, "accessibility_universal_switch_screen_as_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mUniversalSwitchScreenAsSwitchUri:Landroid/net/Uri;

    .line 5667
    const-string/jumbo v0, "universal_switch_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, mUniversalSwitchUri:Landroid/net/Uri;

    .line 5672
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 13
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x1

    const/4 v4, 0x0

    .line 5722
    iget-object v5, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 5725
    :try_start_9
    iget-object v6, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->getCurrentUserStateLocked()Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$900(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityManagerService$UserState;

    move-result-object v3

    .line 5728
    .local v3, "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v6

    if-eqz v6, :cond_17

    .line 5729
    monitor-exit v5

    .line 5838
    :goto_16
    return-void

    .line 5732
    :cond_17
    iget-object v6, p0, mAccessibilityEnabledUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 5733
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readAccessibilityEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5734
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5837
    :cond_2c
    :goto_2c
    monitor-exit v5

    goto :goto_16

    .end local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :catchall_2e
    move-exception v4

    monitor-exit v5
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw v4

    .line 5736
    .restart local v3    # "userState":Lcom/android/server/accessibility/AccessibilityManagerService$UserState;
    :cond_31
    :try_start_31
    iget-object v6, p0, mTouchExplorationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 5737
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5738
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_2c

    .line 5740
    :cond_47
    iget-object v6, p0, mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 5741
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readDisplayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5742
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_2c

    .line 5744
    :cond_5d
    iget-object v6, p0, mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_88

    .line 5745
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5746
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5747
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->checkTalkbackEnable()Z
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6400(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v4

    if-nez v4, :cond_2c

    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v4

    if-ne v4, v0, :cond_2c

    .line 5748
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->setScreenCurtain()V

    goto :goto_2c

    .line 5751
    :cond_88
    iget-object v6, p0, mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 5752
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6500(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5753
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto :goto_2c

    .line 5755
    :cond_9e
    iget-object v6, p0, mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b5

    .line 5756
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readEnhancedWebAccessibilityEnabledChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6600(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5757
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_2c

    .line 5760
    :cond_b5
    iget-object v6, p0, mOverlayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_dd

    .line 5761
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_c4
    .catchall {:try_start_31 .. :try_end_c4} :catchall_2e

    .line 5763
    :try_start_c4
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-nez v4, :cond_d7

    .line 5764
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readOverlayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_d7

    .line 5765
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5768
    :cond_d7
    monitor-exit v6

    goto/16 :goto_2c

    :catchall_da
    move-exception v4

    monitor-exit v6
    :try_end_dc
    .catchall {:try_start_c4 .. :try_end_dc} :catchall_da

    :try_start_dc
    throw v4

    .line 5769
    :cond_dd
    iget-object v6, p0, mSideSyncUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_121

    .line 5770
    iget-object v6, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "sidesync_source_connect"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_10a

    move v2, v0

    .line 5771
    .local v2, "sideSyncConnected":Z
    :goto_fa
    if-eqz v2, :cond_10c

    iget-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsOverlayMagnificationEnabled:Z

    if-eqz v4, :cond_10c

    .line 5772
    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mIsOverlayMagnificationEnabled:Z

    .line 5773
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_2c

    .end local v2    # "sideSyncConnected":Z
    :cond_10a
    move v2, v4

    .line 5770
    goto :goto_fa

    .line 5775
    .restart local v2    # "sideSyncConnected":Z
    :cond_10c
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-nez v4, :cond_2c

    .line 5776
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readOverlayMagnificationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6700(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5777
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_2c

    .line 5782
    .end local v2    # "sideSyncConnected":Z
    :cond_121
    iget-object v6, p0, mScreenCurtainEnabledUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_152

    .line 5783
    iget-object v6, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "lcd_curtain"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v0, :cond_150

    move v1, v0

    .line 5784
    .local v1, "screenCurtainEnabled":Z
    :goto_13f
    if-nez v1, :cond_2c

    .line 5785
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCurtainModeIsRunning:Z
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1500(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result v4

    if-ne v4, v0, :cond_2c

    .line 5786
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->setScreenCurtain()V

    goto/16 :goto_2c

    .end local v1    # "screenCurtainEnabled":Z
    :cond_150
    move v1, v4

    .line 5783
    goto :goto_13f

    .line 5789
    :cond_152
    iget-object v6, p0, mProvisionedUri:Landroid/net/Uri;

    invoke-virtual {v6, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18c

    .line 5790
    iget-object v6, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "device_provisioned"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v0, :cond_18a

    .line 5791
    .local v0, "provisioned":Z
    :goto_16e
    if-eqz v0, :cond_2c

    .line 5792
    const-string v4, "AccessibilityManagerService"

    const-string v6, "Setup wizard Done. provisioned : true"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5793
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 5794
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6800(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/speech/tts/TextToSpeech;

    move-result-object v4

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    goto/16 :goto_2c

    .end local v0    # "provisioned":Z
    :cond_18a
    move v0, v4

    .line 5790
    goto :goto_16e

    .line 5797
    :cond_18c
    iget-object v4, p0, mDisplayInversionEnabledUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a4

    iget-object v4, p0, mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a4

    iget-object v4, p0, mDisplayDaltonizerUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b3

    .line 5800
    :cond_1a4
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$6900(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5801
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->updateDisplayColorAdjustmentSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$7000(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_2c

    .line 5803
    :cond_1b3
    iget-object v4, p0, mHighTextContrastUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1ca

    .line 5804
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$7100(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5805
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    goto/16 :goto_2c

    .line 5807
    :cond_1ca
    iget-object v4, p0, mHWkeysDoubleTapEnabledUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f2

    .line 5808
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1d9
    .catchall {:try_start_dc .. :try_end_1d9} :catchall_2e

    .line 5810
    :try_start_1d9
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-nez v4, :cond_1ec

    .line 5811
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readHWkeysDoubleTapEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$7200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_1ec

    .line 5812
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5815
    :cond_1ec
    monitor-exit v6

    goto/16 :goto_2c

    :catchall_1ef
    move-exception v4

    monitor-exit v6
    :try_end_1f1
    .catchall {:try_start_1d9 .. :try_end_1f1} :catchall_1ef

    :try_start_1f1
    throw v4

    .line 5816
    :cond_1f2
    iget-object v4, p0, mSTalkBackSettingsEnabledUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21a

    .line 5817
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_201
    .catchall {:try_start_1f1 .. :try_end_201} :catchall_2e

    .line 5819
    :try_start_201
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-nez v4, :cond_214

    .line 5820
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readSTalkBackSettingsEnabled(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$7300(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_214

    .line 5821
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5824
    :cond_214
    monitor-exit v6

    goto/16 :goto_2c

    :catchall_217
    move-exception v4

    monitor-exit v6
    :try_end_219
    .catchall {:try_start_201 .. :try_end_219} :catchall_217

    :try_start_219
    throw v4

    .line 5826
    :cond_21a
    iget-object v4, p0, mUniversalSwitchUri:Landroid/net/Uri;

    invoke-virtual {v4, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    .line 5827
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$700(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_229
    .catchall {:try_start_219 .. :try_end_229} :catchall_2e

    .line 5828
    :try_start_229
    const-string v4, "AccessibilityManagerService"

    const-string v7, "UniversalSwitch state is changed"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5829
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->mUiAutomationService:Lcom/android/server/accessibility/AccessibilityManagerService$Service;
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService$UserState;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Lcom/android/server/accessibility/AccessibilityManagerService$Service;

    move-result-object v4

    if-nez v4, :cond_243

    .line 5830
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->readUnivervalSwitchEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$7400(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)Z

    move-result v4

    if-eqz v4, :cond_243

    .line 5831
    iget-object v4, p0, this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->onUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V
    invoke-static {v4, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1200(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityManagerService$UserState;)V

    .line 5834
    :cond_243
    monitor-exit v6

    goto/16 :goto_2c

    :catchall_246
    move-exception v4

    monitor-exit v6
    :try_end_248
    .catchall {:try_start_229 .. :try_end_248} :catchall_246

    :try_start_248
    throw v4
    :try_end_249
    .catchall {:try_start_248 .. :try_end_249} :catchall_2e
.end method

.method public register(Landroid/content/ContentResolver;)V
    .registers 5
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 5675
    iget-object v0, p0, mAccessibilityEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5677
    iget-object v0, p0, mTouchExplorationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5679
    iget-object v0, p0, mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5681
    iget-object v0, p0, mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5683
    iget-object v0, p0, mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5686
    iget-object v0, p0, mEnhancedWebAccessibilityUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5688
    iget-object v0, p0, mDisplayInversionEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5690
    iget-object v0, p0, mDisplayDaltonizerEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5692
    iget-object v0, p0, mDisplayDaltonizerUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5694
    iget-object v0, p0, mHighTextContrastUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5697
    iget-object v0, p0, mOverlayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5699
    iget-object v0, p0, mSideSyncUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5702
    iget-object v0, p0, mScreenCurtainEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5704
    iget-object v0, p0, mProvisionedUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5707
    iget-object v0, p0, mHWkeysDoubleTapEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5710
    iget-object v0, p0, mSTalkBackSettingsEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5713
    iget-object v0, p0, mUniversalSwitchScreenAsSwitchUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5715
    iget-object v0, p0, mUniversalSwitchUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5718
    return-void
.end method
