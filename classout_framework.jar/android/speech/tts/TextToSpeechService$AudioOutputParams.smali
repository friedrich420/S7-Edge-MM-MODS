.class Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
.super Ljava/lang/Object;
.source "TextToSpeechService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/TextToSpeechService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AudioOutputParams"
.end annotation


# instance fields
.field public final mAudioAttributes:Landroid/media/AudioAttributes;

.field public final mPan:F

.field public final mSessionId:I

.field public final mVolume:F


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    const/4 v0, 0x0

    iput v0, p0, mSessionId:I

    .line 693
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, mVolume:F

    .line 694
    const/4 v0, 0x0

    iput v0, p0, mPan:F

    .line 695
    const/4 v0, 0x0

    iput-object v0, p0, mAudioAttributes:Landroid/media/AudioAttributes;

    .line 696
    return-void
.end method

.method constructor <init>(IFFLandroid/media/AudioAttributes;)V
    .registers 5
    .param p1, "sessionId"    # I
    .param p2, "volume"    # F
    .param p3, "pan"    # F
    .param p4, "audioAttributes"    # Landroid/media/AudioAttributes;

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 700
    iput p1, p0, mSessionId:I

    .line 701
    iput p2, p0, mVolume:F

    .line 702
    iput p3, p0, mPan:F

    .line 703
    iput-object p4, p0, mAudioAttributes:Landroid/media/AudioAttributes;

    .line 704
    return-void
.end method

.method static createFromV1ParamsBundle(Landroid/os/Bundle;Z)Landroid/speech/tts/TextToSpeechService$AudioOutputParams;
    .registers 9
    .param p0, "paramsBundle"    # Landroid/os/Bundle;
    .param p1, "isSpeech"    # Z

    .prologue
    .line 709
    if-nez p0, :cond_8

    .line 710
    new-instance v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    invoke-direct {v2}, <init>()V

    .line 727
    :goto_7
    return-object v2

    .line 713
    :cond_8
    const-string v2, "audioAttributes"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/media/AudioAttributes;

    .line 716
    .local v0, "audioAttributes":Landroid/media/AudioAttributes;
    if-nez v0, :cond_2e

    .line 717
    const-string/jumbo v2, "streamType"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 719
    .local v1, "streamType":I
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    if-eqz p1, :cond_4d

    const/4 v2, 0x1

    :goto_26
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 727
    .end local v1    # "streamType":I
    :cond_2e
    new-instance v2, Landroid/speech/tts/TextToSpeechService$AudioOutputParams;

    const-string/jumbo v3, "sessionId"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "volume"

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v4, v5}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v4

    const-string/jumbo v5, "pan"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v5

    invoke-direct {v2, v3, v4, v5, v0}, <init>(IFFLandroid/media/AudioAttributes;)V

    goto :goto_7

    .line 719
    .restart local v1    # "streamType":I
    :cond_4d
    const/4 v2, 0x4

    goto :goto_26
.end method
