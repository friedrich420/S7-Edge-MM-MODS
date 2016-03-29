.class public Lcom/android/systemui/qs/tiles/SilentModeTile;
.super Lcom/android/systemui/qs/QSTile;
.source "SilentModeTile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$MultiState;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mSoundProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/systemui/qs/tiles/SilentModeTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 2
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 46
    new-instance v0, Lcom/android/systemui/qs/tiles/SilentModeTile$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/tiles/SilentModeTile$1;-><init>(Lcom/android/systemui/qs/tiles/SilentModeTile;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    .line 80
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    sput v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mSoundProfile:I

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-object v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->TAG:Ljava/lang/String;

    const-string v1, "mAudioManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mSoundProfile:I

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 39
    sput p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mSoundProfile:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/tiles/SilentModeTile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/tiles/SilentModeTile;

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->refreshState()V

    return-void
.end method

.method private updateNextProfile()I
    .locals 4

    .prologue
    const/4 v2, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 167
    sget v3, Lcom/android/systemui/qs/tiles/SilentModeTile;->mSoundProfile:I

    if-ne v3, v1, :cond_0

    .line 168
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setSoundEffectEnabled(Z)V

    .line 175
    :goto_0
    return v0

    .line 170
    :cond_0
    sget v0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mSoundProfile:I

    if-ne v0, v2, :cond_1

    .line 171
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setSoundEffectEnabled(Z)V

    move v0, v1

    .line 172
    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->setSoundEffectEnabled(Z)V

    move v0, v2

    .line 175
    goto :goto_0
.end method


# virtual methods
.method protected composeChangeAnnouncement()Ljava/lang/String;
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget-object v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 163
    const/16 v0, 0x192

    return v0
.end method

.method public handleClick()V
    .locals 6

    .prologue
    .line 96
    sget-object v3, Lcom/android/systemui/qs/tiles/SilentModeTile;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleClick : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v2, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateNextProfile()I

    move-result v1

    .line 100
    .local v1, "soundProfile":I
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->getMetricsCategory()I

    move-result v3

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->updateNextProfile()I

    move-result v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 101
    sget-object v2, Lcom/android/systemui/qs/tiles/SilentModeTile;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " : setRingerModeInternal("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, "extra":Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 117
    const-string v0, "None"

    .line 119
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->APP_ID_QS:Ljava/lang/String;

    sget-object v4, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->QS_FEATURE_SOUNDMODE:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v0, v5}, Lcom/android/systemui/qs/QSDiagnosticLogHelper;->send(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :pswitch_0
    const-string v0, "Mute"

    .line 109
    goto :goto_1

    .line 111
    :pswitch_1
    const-string v0, "Vibrate"

    .line 112
    goto :goto_1

    .line 114
    :pswitch_2
    const-string v0, "Sound"

    .line 115
    goto :goto_1

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public handleLongClick()V
    .locals 3

    .prologue
    .line 125
    sget-object v1, Lcom/android/systemui/qs/tiles/SilentModeTile;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLongClick : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->isBlockedEdmSettingsChange(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$SoundSettingsActivity"

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/qs/tiles/SilentModeTile;->startActivityDismissingKeyguard(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V
    .locals 5
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$MultiState;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 133
    instance-of v2, p2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "arg":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 134
    .local v1, "value":I
    :goto_0
    const/4 v0, 0x2

    .line 135
    .local v0, "iconState":I
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->visible:Z

    .line 136
    iput-boolean v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->textTruncate:Z

    .line 138
    sget v2, Lcom/android/systemui/qs/tiles/SilentModeTile;->mSoundProfile:I

    packed-switch v2, :pswitch_data_0

    .line 158
    :goto_1
    iget-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/qs/tiles/SilentModeTile;->makeContentDescription(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->contentDescription:Ljava/lang/String;

    .line 159
    return-void

    .line 133
    .end local v0    # "iconState":I
    .end local v1    # "value":I
    .restart local p2    # "arg":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v2, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v1, v2, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    goto :goto_0

    .line 140
    .end local p2    # "arg":Ljava/lang/Object;
    .restart local v0    # "iconState":I
    .restart local v1    # "value":I
    :pswitch_0
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 141
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowMuteOnQsIcon:Z

    if-eqz v2, :cond_1

    move v2, v3

    :goto_2
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->bgValue:I

    .line 142
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d02b3

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 143
    const v2, 0x7f020380

    invoke-static {v2}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    :cond_1
    move v2, v4

    .line 141
    goto :goto_2

    .line 146
    :pswitch_1
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mShowMuteOnQsIcon:Z

    if-eqz v2, :cond_2

    move v2, v3

    :goto_3
    iput v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 147
    iput v4, p1, Lcom/android/systemui/qs/QSTile$MultiState;->bgValue:I

    .line 148
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d02b4

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 149
    const v2, 0x7f02037f

    invoke-static {v2}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    :cond_2
    move v2, v4

    .line 146
    goto :goto_3

    .line 152
    :pswitch_2
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    .line 153
    iput v3, p1, Lcom/android/systemui/qs/QSTile$MultiState;->bgValue:I

    .line 154
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    const v4, 0x7f0d02b2

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->label:Ljava/lang/String;

    .line 155
    const v2, 0x7f02037e

    invoke-static {v2}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSTile$MultiState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    goto :goto_1

    .line 138
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 39
    check-cast p1, Lcom/android/systemui/qs/QSTile$MultiState;

    .end local p1    # "x0":Lcom/android/systemui/qs/QSTile$State;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/SilentModeTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$MultiState;Ljava/lang/Object;)V

    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$MultiState;
    .locals 1

    .prologue
    .line 91
    new-instance v0, Lcom/android/systemui/qs/QSTile$MultiState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$MultiState;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/SilentModeTile;->newTileState()Lcom/android/systemui/qs/QSTile$MultiState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 3
    .param p1, "listening"    # Z

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 74
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

.method protected shouldAnnouncementBeDelayed()Z
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/SilentModeTile;->mState:Lcom/android/systemui/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/qs/QSTile$MultiState;

    iget v0, v0, Lcom/android/systemui/qs/QSTile$MultiState;->value:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
