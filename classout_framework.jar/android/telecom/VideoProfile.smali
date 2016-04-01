.class public Landroid/telecom/VideoProfile;
.super Ljava/lang/Object;
.source "VideoProfile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/VideoProfile$CameraCapabilities;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/telecom/VideoProfile;",
            ">;"
        }
    .end annotation
.end field

.field public static final QUALITY_DEFAULT:I = 0x4

.field public static final QUALITY_HIGH:I = 0x1

.field public static final QUALITY_LOW:I = 0x3

.field public static final QUALITY_MEDIUM:I = 0x2

.field public static final QUALITY_UNKNOWN:I = 0x0

.field public static final STATE_AUDIO_ONLY:I = 0x0

.field public static final STATE_BIDIRECTIONAL:I = 0x3

.field public static final STATE_PAUSED:I = 0x4

.field public static final STATE_RX_ENABLED:I = 0x2

.field public static final STATE_TX_ENABLED:I = 0x1


# instance fields
.field private final mQuality:I

.field private final mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 149
    new-instance v0, Landroid/telecom/VideoProfile$1;

    invoke-direct {v0}, Landroid/telecom/VideoProfile$1;-><init>()V

    sput-object v0, CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .param p1, "videoState"    # I

    .prologue
    .line 111
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, <init>(II)V

    .line 112
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "videoState"    # I
    .param p2, "quality"    # I

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput p1, p0, mVideoState:I

    .line 122
    iput p2, p0, mQuality:I

    .line 123
    return-void
.end method

.method private static hasState(II)Z
    .registers 3
    .param p0, "videoState"    # I
    .param p1, "state"    # I

    .prologue
    .line 308
    and-int v0, p0, p1

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static isAudioOnly(I)Z
    .registers 3
    .param p0, "videoState"    # I

    .prologue
    const/4 v0, 0x1

    .line 244
    invoke-static {p0, v0}, hasState(II)Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x2

    invoke-static {p0, v1}, hasState(II)Z

    move-result v1

    if-nez v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static isBidirectional(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .prologue
    .line 287
    const/4 v0, 0x3

    invoke-static {p0, v0}, hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isPaused(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .prologue
    .line 297
    const/4 v0, 0x4

    invoke-static {p0, v0}, hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isReceptionEnabled(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .prologue
    .line 277
    const/4 v0, 0x2

    invoke-static {p0, v0}, hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isTransmissionEnabled(I)Z
    .registers 2
    .param p0, "videoState"    # I

    .prologue
    .line 267
    const/4 v0, 0x1

    invoke-static {p0, v0}, hasState(II)Z

    move-result v0

    return v0
.end method

.method public static isVideo(I)Z
    .registers 3
    .param p0, "videoState"    # I

    .prologue
    const/4 v0, 0x1

    .line 255
    invoke-static {p0, v0}, hasState(II)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x2

    invoke-static {p0, v1}, hasState(II)Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x3

    invoke-static {p0, v1}, hasState(II)Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_15
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static videoStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "videoState"    # I

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Audio"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-static {p0}, isAudioOnly(I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 219
    const-string v1, " Only"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    :cond_15
    :goto_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 221
    :cond_1a
    invoke-static {p0}, isTransmissionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 222
    const-string v1, " Tx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    :cond_25
    invoke-static {p0}, isReceptionEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 226
    const-string v1, " Rx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_30
    invoke-static {p0}, isPaused(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 230
    const-string v1, " Pause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public getQuality()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, mQuality:I

    return v0
.end method

.method public getVideoState()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, mVideoState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "[VideoProfile videoState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget v1, p0, mVideoState:I

    invoke-static {v1}, videoStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v1, " videoQuality = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    iget v1, p0, mQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 193
    iget v0, p0, mVideoState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    iget v0, p0, mQuality:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 195
    return-void
.end method
