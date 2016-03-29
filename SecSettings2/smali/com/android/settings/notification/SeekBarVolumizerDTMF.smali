.class public Lcom/android/settings/notification/SeekBarVolumizerDTMF;
.super Ljava/lang/Object;
.source "SeekBarVolumizerDTMF.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SeekBarVolumizerDTMF$H;,
        Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mCallback:Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultUri:Landroid/net/Uri;

.field private mHandler:Landroid/os/Handler;

.field private mLastProgress:I

.field private mLastWaitingToneVolume:I

.field private mOriginalStreamVolume:I

.field private mRingtone:Landroid/media/Ringtone;

.field private mSeekBar:Landroid/widget/SeekBar;

.field private final mStreamType:I

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mVolumeBeforeMute:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/net/Uri;Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "streamType"    # I
    .param p3, "defaultUri"    # Landroid/net/Uri;
    .param p4, "callback"    # Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

    .prologue
    const/4 v2, 0x2

    const/4 v0, -0x1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    .line 63
    iput v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mVolumeBeforeMute:I

    .line 64
    iput v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 75
    iput-object p1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    .line 76
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    .line 78
    iput p2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    .line 79
    iput-object p4, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mOriginalStreamVolume:I

    .line 81
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "volume_waiting_tone"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    .line 83
    if-nez p3, :cond_0

    .line 84
    iget v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    if-ne v0, v2, :cond_1

    .line 85
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    .line 92
    :cond_0
    :goto_0
    iput-object p3, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mDefaultUri:Landroid/net/Uri;

    .line 93
    return-void

    .line 86
    :cond_1
    iget v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 87
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    goto :goto_0

    .line 89
    :cond_2
    sget-object p3, Landroid/provider/Settings$System;->DEFAULT_ALARM_ALERT_URI:Landroid/net/Uri;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/notification/SeekBarVolumizerDTMF;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/SeekBarVolumizerDTMF;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/notification/SeekBarVolumizerDTMF;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/SeekBarVolumizerDTMF;
    .param p1, "x1"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    return p1
.end method

.method private onInitSample()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mDefaultUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    iget v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/Ringtone;->setStreamType(I)V

    .line 130
    :cond_0
    return-void
.end method

.method private onStartSample()V
    .locals 1

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->isSamplePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;->onSampleStarting(Lcom/android/settings/notification/SeekBarVolumizerDTMF;)V

    .line 145
    :cond_0
    return-void
.end method

.method private onStopSample()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 158
    const-string v0, "SeekBarVolumizerDTMF"

    const-string v1, "onStopSample()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    return-void
.end method

.method private postStartSample()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    iget-object v2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->isSamplePlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x3e8

    :goto_1
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private stopToneGenerator()V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->stopTone()V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 105
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 120
    const-string v0, "SeekBarVolumizerDTMF"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid SeekBarVolumizer message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 107
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mStreamType:I

    iget v2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    goto :goto_0

    .line 111
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->onStartSample()V

    goto :goto_0

    .line 114
    :pswitch_2
    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->onStopSample()V

    goto :goto_0

    .line 117
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->onInitSample()V

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSamplePlaying()Z
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 6
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 191
    if-nez p3, :cond_1

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->stopToneGenerator()V

    .line 197
    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "volume_waiting_tone"

    invoke-static {v1, v2, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 201
    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_2

    .line 202
    new-instance v1, Landroid/media/ToneGenerator;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 204
    :cond_2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    add-int/lit8 v1, p2, -0x2

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v0, v2

    .line 206
    .local v0, "volFloat":F
    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    iget-object v2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mAudioManager:Landroid/media/AudioManager;

    const-string v3, "situation=15;device=0"

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->setVolume(F)V

    .line 207
    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    const/16 v2, 0x16

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 208
    iput p2, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    .line 209
    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mCallback:Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/settings/notification/SeekBarVolumizerDTMF$Callback;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->postStartSample()V

    .line 231
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 234
    return-void
.end method

.method postStopSample()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public setSeekBar(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    .line 98
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    const/4 v2, -0x1

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastProgress:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 101
    return-void

    .line 99
    :cond_0
    iget v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mLastWaitingToneVolume:I

    goto :goto_0
.end method

.method public start()V
    .locals 3

    .prologue
    .line 177
    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 182
    :goto_0
    return-void

    .line 178
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SeekBarVolumizerDTMF.CallbackHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 180
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    .line 181
    iget-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 163
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 174
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->postStopSample()V

    .line 165
    invoke-direct {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->stopToneGenerator()V

    .line 166
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v0, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v0}, Landroid/media/ToneGenerator;->release()V

    .line 168
    iput-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 173
    iput-object v1, p0, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public stopSample()V
    .locals 0

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/settings/notification/SeekBarVolumizerDTMF;->postStopSample()V

    .line 265
    return-void
.end method
