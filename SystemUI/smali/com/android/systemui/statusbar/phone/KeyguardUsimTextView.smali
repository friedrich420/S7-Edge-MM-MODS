.class public Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;
.super Landroid/widget/TextView;
.source "KeyguardUsimTextView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;


# instance fields
.field mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mPlayingShortcutAffordance:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

.field private mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mUseBlackTextOnWhiteWallpaper:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mPlayingShortcutAffordance:Z

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation$AlphaAffordanceAnimator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->changeTextColorOnWhiteWallpaper()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    return-object v0
.end method

.method private changeTextColorOnWhiteWallpaper()V
    .locals 4

    .prologue
    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardProperties;->isDownloadableThemeApplied(Landroid/content/Context;)Z

    move-result v0

    .line 181
    .local v0, "isThemeApplied":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/KeyguardSettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/KeyguardSettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUseBlackTextOnWhiteWallpaper:Z

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUseBlackTextOnWhiteWallpaper:Z

    const v3, 0x7f0a0035

    invoke-static {v1, p0, v0, v2, v3}, Lcom/android/keyguard/util/KeyguardStatusUtils;->changeBlackTextOnWhiteWallpaper(Landroid/content/Context;Landroid/widget/TextView;ZZI)V

    .line 184
    return-void
.end method

.method private getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "telephonyPlmn"    # Ljava/lang/CharSequence;
    .param p2, "telephonySpn"    # Ljava/lang/CharSequence;

    .prologue
    .line 165
    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    .line 175
    .end local p1    # "telephonyPlmn":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 167
    .restart local p1    # "telephonyPlmn":Ljava/lang/CharSequence;
    :cond_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 168
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 172
    :cond_2
    if-nez p1, :cond_3

    if-eqz p2, :cond_3

    move-object p1, p2

    .line 173
    goto :goto_0

    .line 175
    :cond_3
    const-string p1, ""

    goto :goto_0
.end method

.method private updateText()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 128
    .local v1, "simState":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    .line 130
    .local v0, "isAirplaneModeOn":Z
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setVisibility(I)V

    .line 133
    if-ne v1, v4, :cond_2

    .line 134
    const-string v4, "KeyguardUsimTextView"

    const-string v5, "TelephonyManager.SIM_STATE_ABSENT  "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v4

    if-nez v4, :cond_1

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040282

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d0079

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getCarrierString(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .end local v2    # "str":Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->changeTextColorOnWhiteWallpaper()V

    .line 161
    return-void

    .end local v0    # "isAirplaneModeOn":Z
    :cond_0
    move v0, v4

    .line 128
    goto :goto_0

    .line 140
    .restart local v0    # "isAirplaneModeOn":Z
    :cond_1
    const v3, 0x7f0d049c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setText(I)V

    goto :goto_1

    .line 143
    :cond_2
    const/4 v5, 0x7

    if-ne v1, v5, :cond_4

    .line 144
    const-string v5, "KeyguardUsimTextView"

    const-string v6, "mEmergencyCallText TelephonyManager.SIM_STATE_PERM_DISABLED  "

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0d049b

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-virtual {v5, v6, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 147
    .restart local v2    # "str":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 149
    .end local v2    # "str":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setVisibility(I)V

    goto :goto_1

    .line 151
    :cond_4
    const/4 v3, 0x5

    if-ne v1, v3, :cond_5

    invoke-static {}, Lcom/android/keyguard/util/KeyguardProperties;->isUseSKTSimText()Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "ril.simtype"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/16 v3, 0x13

    const-string v4, "ril.simtype"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v3, v4, :cond_5

    .line 155
    const v3, 0x7f0d049a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setText(I)V

    goto :goto_1

    .line 157
    :cond_5
    const-string v3, "KeyguardUsimTextView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mEmergencyCallText TelephonyManager ELSE!!!!!, simState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setVisibility(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 96
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 107
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText()V

    .line 109
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 102
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Landroid/widget/TextView;->onFinishInflate()V

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 118
    .local v0, "isEmergencyCallCapable":Z
    if-eqz v0, :cond_0

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->updateText()V

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 213
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mPlayingShortcutAffordance:Z

    if-nez v0, :cond_0

    .line 214
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 215
    :cond_0
    return-void
.end method

.method public setAlphaByAffordance(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 221
    invoke-super {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 222
    return-void
.end method

.method public setPlayingAlphaAnimation(Z)V
    .locals 0
    .param p1, "playing"    # Z

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mPlayingShortcutAffordance:Z

    .line 227
    return-void
.end method

.method public startHideHelpTextAnimation()V
    .locals 7

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    .line 202
    return-void
.end method

.method public startShortcutHintAnimation()V
    .locals 7

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const/4 v1, 0x0

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0x0

    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;)V

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    .line 194
    return-void
.end method

.method public startShowHelpTextAnimation()V
    .locals 7

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const-wide/16 v2, 0x96

    const-wide/16 v4, 0xc8

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->setViewAlpha(FJJLjava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public stopShortcutHintAnimation()V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardUsimTextView;->mTextAnimtion:Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAlphaAffordanceAnimation;->cancelAnimator()V

    .line 198
    return-void
.end method
