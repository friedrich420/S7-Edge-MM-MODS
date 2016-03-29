.class public Lcom/android/settings/tts/TTSSeekBarPreference;
.super Landroid/preference/SeekBarPreference;
.source "TTSSeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TTSSeekBarPreference$Callback;
    }
.end annotation


# instance fields
.field private mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

.field private mContext:Landroid/content/Context;

.field private mFromTouch:Z

.field private mProgress:I

.field public mTTSRateSeekBar:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    .line 76
    iput v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    .line 44
    iput-object p1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    .line 45
    const v0, 0x7f0401eb

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TTSSeekBarPreference;->setLayoutResource(I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    .line 76
    iput v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    .line 51
    iput-object p1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    .line 52
    const v0, 0x7f0401eb

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TTSSeekBarPreference;->setLayoutResource(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    .line 76
    iput v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    .line 58
    iput-object p1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    .line 59
    const v0, 0x7f0401eb

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TTSSeekBarPreference;->setLayoutResource(I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    .line 76
    iput v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    .line 77
    iput-boolean v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    .line 65
    iput-object p1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    .line 66
    const v0, 0x7f0401eb

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TTSSeekBarPreference;->setLayoutResource(I)V

    .line 68
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0c0496

    const/4 v3, 0x0

    .line 82
    invoke-super {p0, p1}, Landroid/preference/SeekBarPreference;->onBindView(Landroid/view/View;)V

    .line 83
    const-string v1, "TTSSeekBarPreference"

    const-string v2, "onBindView called "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const v1, 0x102044d

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 86
    .local v0, "seekBar":Landroid/widget/SeekBar;
    iget-object v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mTTSRateSeekBar:Landroid/widget/SeekBar;

    if-ne v0, v1, :cond_0

    .line 92
    :goto_0
    return-void

    .line 87
    :cond_0
    iput-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mTTSRateSeekBar:Landroid/widget/SeekBar;

    .line 88
    iget-object v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mTTSRateSeekBar:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    invoke-interface {v2}, Lcom/android/settings/tts/TTSSeekBarPreference$Callback;->getSpeechRate()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    iget-object v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mTTSRateSeekBar:Landroid/widget/SeekBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setFluidEnabled(Z)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 95
    const-string v0, "TTSSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekbar changed fromTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", progress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-boolean p3, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    .line 97
    iget-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 98
    const-string v0, "TTSSeekBarPreference"

    const-string v1, "mCallback is not null!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iput p2, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    .line 100
    iget-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    invoke-interface {v0, v1}, Lcom/android/settings/tts/TTSSeekBarPreference$Callback;->setSpeechRateNPlay(I)V

    .line 102
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 107
    const-string v0, "TTSSeekBarPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStopTrackingTouch : mFromTouch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    if-eqz v0, :cond_0

    .line 109
    iget-boolean v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    if-nez v0, :cond_1

    .line 110
    iget-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    invoke-interface {v0}, Lcom/android/settings/tts/TTSSeekBarPreference$Callback;->getSpeechRate()I

    move-result v0

    iput v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    .line 111
    iget-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    invoke-interface {v0, v1}, Lcom/android/settings/tts/TTSSeekBarPreference$Callback;->setSpeechRateNPlay(I)V

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mFromTouch:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    iget v1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mProgress:I

    invoke-interface {v0, v1}, Lcom/android/settings/tts/TTSSeekBarPreference$Callback;->setSpeechRateNPlay(I)V

    goto :goto_0
.end method

.method public setCallback(Lcom/android/settings/tts/TTSSeekBarPreference$Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/settings/tts/TTSSeekBarPreference;->mCallback:Lcom/android/settings/tts/TTSSeekBarPreference$Callback;

    .line 121
    const-string v0, "TTSSeekBarPreference"

    const-string v1, "setCallback called"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void
.end method
