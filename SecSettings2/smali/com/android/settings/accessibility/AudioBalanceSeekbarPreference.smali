.class public Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;
.super Landroid/preference/SeekBarPreference;
.source "AudioBalanceSeekbarPreference.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private initMessage:Ljava/lang/String;

.field private leftMessage:Ljava/lang/String;

.field private final mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentProgress:I

.field private mEarPlugs:Z

.field private mLeft:Landroid/widget/TextView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMediaPlayerisPrepared:Z

.field private mOldAudioBalance:I

.field private mPercentageOfBalance:I

.field private mRight:Landroid/widget/TextView;

.field private mSamsungAudioManager:Landroid/media/SamsungAudioManager;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private rightMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 90
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 54
    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    .line 60
    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 62
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    .line 63
    iput-boolean v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    .line 78
    new-instance v0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference$1;-><init>(Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 269
    new-instance v0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference$2;-><init>(Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 92
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Landroid/media/SamsungAudioManager;

    invoke-direct {v0, p1}, Landroid/media/SamsungAudioManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    .line 96
    :cond_0
    const v0, 0x7f040190

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->setLayoutResource(I)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 98
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e09b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->initMessage:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e09b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->leftMessage:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e09b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->rightMessage:Ljava/lang/String;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;)Landroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private getAudioBalanceFromDB(I)I
    .locals 4
    .param p1, "defaultValue"    # I

    .prologue
    .line 256
    move v0, p1

    .line 257
    .local v0, "audiobalance":I
    const-string v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioBalanceFromDB() defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_balance"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 259
    const-string v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioBalanceFromDB() defaultValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    return v0
.end method

.method private pauseMediaPlayer()V
    .locals 3

    .prologue
    .line 181
    const-string v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 185
    :cond_0
    return-void
.end method

.method private setAudioBalance(I)V
    .locals 3
    .param p1, "audiobalance"    # I

    .prologue
    .line 264
    const-string v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioBalance() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound_balance= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method private startMediaPlayer()V
    .locals 4

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    const-string v0, "AudioBalanceSeekbarPreference"

    const-string v1, "startMediaPlayer() requestAudioFocus : fail"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    const-string v0, "AudioBalanceSeekbarPreference"

    const-string v1, "startMediaPlayer() requestAudioFocus : success"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x64

    const/16 v4, 0x32

    .line 108
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 110
    invoke-direct {p0, v4}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    .line 111
    const-string v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindView() mOldAudioBalance : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    const v1, 0x102044d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    iput-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 114
    const v1, 0x7f0d0029

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f0d002a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->setDualColorSeekbar()V

    .line 119
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 120
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 121
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, p0}, Landroid/widget/SeekBar;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 125
    :cond_0
    iget v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    if-gt v1, v5, :cond_3

    .line 126
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 127
    iget v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    if-ne v1, v4, :cond_1

    .line 128
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->initMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 139
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "intentFilterVolume":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mVolumeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 145
    return-void

    .line 129
    .end local v0    # "intentFilterVolume":Landroid/content/IntentFilter;
    :cond_1
    iget v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    if-ge v1, v4, :cond_2

    .line 130
    iget v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    add-int/lit8 v1, v1, -0x32

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    .line 131
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->leftMessage:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 133
    :cond_2
    iget v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    rsub-int/lit8 v1, v1, 0x32

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    .line 134
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->rightMessage:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 137
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 336
    const/16 v2, 0x32

    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->getAudioBalanceFromDB(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    .line 337
    iget-boolean v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    if-eqz v2, :cond_6

    .line 338
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x15

    if-ne v2, v3, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 340
    iget v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    const/16 v3, 0xa

    if-lt v2, v3, :cond_1

    .line 341
    iget v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    add-int/lit8 v1, v1, -0xa

    iput v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    .line 342
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_0

    .line 347
    invoke-direct {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    .line 349
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 367
    :goto_1
    return v0

    .line 344
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 351
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x16

    if-ne v2, v3, :cond_5

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 352
    iget v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    const/16 v2, 0x5a

    if-gt v1, v2, :cond_4

    .line 353
    iget v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    .line 354
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mOldAudioBalance:I

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 358
    :goto_2
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    if-nez v1, :cond_3

    .line 359
    invoke-direct {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    .line 361
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_1

    .line 356
    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_2

    :cond_5
    move v0, v1

    .line 364
    goto :goto_1

    :cond_6
    move v0, v1

    .line 367
    goto :goto_1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "paramMediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 201
    const-string v0, "AudioBalanceSeekbarPreference"

    const-string v1, "onPrepared() mMediaPlayer"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    .line 203
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x32

    .line 206
    if-nez p3, :cond_1

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    if-eqz v0, :cond_0

    .line 209
    iput v3, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    .line 210
    iput p2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    .line 211
    const/16 v0, 0x64

    if-gt p2, v0, :cond_4

    .line 213
    if-eq p2, v1, :cond_2

    const/16 v0, 0x35

    if-gt p2, v0, :cond_2

    const/16 v0, 0x2f

    if-lt p2, v0, :cond_2

    .line 214
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0

    .line 218
    :cond_2
    iget v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-le v0, v1, :cond_5

    .line 219
    iget v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    add-int/lit8 v0, v0, -0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    .line 220
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->rightMessage:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 229
    :cond_3
    :goto_1
    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->setAudioBalance(I)V

    .line 230
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p3, :cond_4

    .line 231
    invoke-direct {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->startMediaPlayer()V

    .line 235
    :cond_4
    const-string v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volumn"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_5
    iget v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-ge v0, v1, :cond_6

    .line 222
    iget v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    rsub-int/lit8 v0, v0, 0x32

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    .line 223
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->leftMessage:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 224
    :cond_6
    iget v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-ne v0, v1, :cond_3

    .line 225
    iput v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mPercentageOfBalance:I

    .line 226
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->initMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 241
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    const/16 v1, 0x64

    .line 244
    iget v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mCurrentProgress:I

    if-gt v0, v1, :cond_0

    .line 245
    const-string v0, "AudioBalanceSeekbarPreference"

    const-string v1, "onStopTrackingTouch() : Current progress is below than MaxAudioBalance"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->setAudioBalance(I)V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sound_balance"

    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    return-void

    .line 247
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 248
    const-string v0, "AudioBalanceSeekbarPreference"

    const-string v1, "onStopTrackingTouch() : Current progress is over than MaxAudioBalance"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public prepareMediaPlayer()V
    .locals 5

    .prologue
    .line 151
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 160
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_1
    const-string v1, "AudioBalanceSeekbarPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareMediaPlayer() mMediaPlayer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void

    .line 158
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "localIOException":Ljava/io/IOException;
    const-string v1, "AudioBalanceSeekbarPreference"

    const-string v2, "Exception thrown during preparing sound."

    invoke-static {v1, v2, v0}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public releaseMediaPlayer()V
    .locals 3

    .prologue
    .line 188
    const-string v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseMediaPlayer() mMediaPlayer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 192
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mMediaPlayerisPrepared:Z

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 198
    :cond_1
    return-void
.end method

.method public setDualColorSeekbar()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 319
    const-string v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSafeMediaVolumeDeviceOn() return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v2}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    const-string v0, "AudioBalanceSeekbarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isWiredHeadsetOn() return : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSamsungAudioManager:Landroid/media/SamsungAudioManager;

    invoke-virtual {v0}, Landroid/media/SamsungAudioManager;->isSafeMediaVolumeDeviceOn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 323
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    .line 324
    iput-boolean v4, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    .line 330
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->invalidate()V

    .line 331
    return-void

    .line 326
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->pauseMediaPlayer()V

    .line 327
    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->setEnabled(Z)V

    .line 328
    iput-boolean v3, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mEarPlugs:Z

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const v1, 0x3ebd70a4    # 0.37f

    .line 302
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 303
    if-eqz p1, :cond_2

    .line 304
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 311
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 315
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->setEnabled(Z)V

    .line 316
    return-void

    .line 307
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/accessibility/AudioBalanceSeekbarPreference;->mRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method
