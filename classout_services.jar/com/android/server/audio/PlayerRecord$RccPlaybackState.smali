.class public Lcom/android/server/audio/PlayerRecord$RccPlaybackState;
.super Ljava/lang/Object;
.source "PlayerRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlayerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RccPlaybackState"
.end annotation


# instance fields
.field public mPositionMs:J

.field public mSpeed:F

.field public mState:I


# direct methods
.method public constructor <init>(IJF)V
    .registers 5
    .param p1, "state"    # I
    .param p2, "positionMs"    # J
    .param p4, "speed"    # F

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput p1, p0, mState:I

    .line 98
    iput-wide p2, p0, mPositionMs:J

    .line 99
    iput p4, p0, mSpeed:F

    .line 100
    return-void
.end method

.method private posToString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 114
    iget-wide v0, p0, mPositionMs:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_b

    .line 115
    const-string v0, "PLAYBACK_POSITION_INVALID"

    .line 119
    :goto_a
    return-object v0

    .line 116
    :cond_b
    iget-wide v0, p0, mPositionMs:J

    const-wide v2, -0x7fe688e67fe67d00L

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 117
    const-string v0, "PLAYBACK_POSITION_ALWAYS_UNKNOWN"

    goto :goto_a

    .line 119
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, mPositionMs:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method private stateToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget v0, p0, mState:I

    packed-switch v0, :pswitch_data_26

    .line 146
    const-string v0, "[invalid playstate]"

    :goto_7
    return-object v0

    .line 126
    :pswitch_8
    const-string v0, "PLAYSTATE_NONE"

    goto :goto_7

    .line 128
    :pswitch_b
    const-string v0, "PLAYSTATE_STOPPED"

    goto :goto_7

    .line 130
    :pswitch_e
    const-string v0, "PLAYSTATE_PAUSED"

    goto :goto_7

    .line 132
    :pswitch_11
    const-string v0, "PLAYSTATE_PLAYING"

    goto :goto_7

    .line 134
    :pswitch_14
    const-string v0, "PLAYSTATE_FAST_FORWARDING"

    goto :goto_7

    .line 136
    :pswitch_17
    const-string v0, "PLAYSTATE_REWINDING"

    goto :goto_7

    .line 138
    :pswitch_1a
    const-string v0, "PLAYSTATE_SKIPPING_FORWARDS"

    goto :goto_7

    .line 140
    :pswitch_1d
    const-string v0, "PLAYSTATE_SKIPPING_BACKWARDS"

    goto :goto_7

    .line 142
    :pswitch_20
    const-string v0, "PLAYSTATE_BUFFERING"

    goto :goto_7

    .line 144
    :pswitch_23
    const-string v0, "PLAYSTATE_ERROR"

    goto :goto_7

    .line 124
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public reset()V
    .registers 3

    .prologue
    .line 103
    const/4 v0, 0x1

    iput v0, p0, mState:I

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, mPositionMs:J

    .line 105
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, mSpeed:F

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, stateToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, posToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, mSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "X"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
