.class public Lcom/sec/epdg/IWlanState;
.super Ljava/lang/Object;
.source "IWlanState.java"


# static fields
.field public static final CONNECTED:I = 0x4

.field public static final DISCONNECTED:I = 0x8

.field public static final DISCONNECTING:I = 0x6

.field public static final HANDOVER_CONNECTING:I = 0x2

.field public static final INACTIVE:I = 0x0

.field public static final INITIAL_CONNECTING:I = 0x1

.field public static final PEER_DISCONNECTED:I = 0x7

.field public static final THROTTLE:I = 0x3

.field public static final W2M_IN_PROGRESS:I = 0x5


# instance fields
.field private mState:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getState()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, mState:I

    return v0
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 18
    iput p1, p0, mState:I

    .line 19
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget v0, p0, mState:I

    packed-switch v0, :pswitch_data_24

    .line 47
    const-string v0, "UNKNOWN"

    :goto_7
    return-object v0

    .line 29
    :pswitch_8
    const-string v0, "INACTIVE"

    goto :goto_7

    .line 31
    :pswitch_b
    const-string v0, "INITIAL_CONNECTING"

    goto :goto_7

    .line 33
    :pswitch_e
    const-string v0, "HANDOVER_CONNECTING"

    goto :goto_7

    .line 35
    :pswitch_11
    const-string v0, "THROTTLE"

    goto :goto_7

    .line 37
    :pswitch_14
    const-string v0, "CONNECTED"

    goto :goto_7

    .line 39
    :pswitch_17
    const-string v0, "W2M_IN_PROGRESS"

    goto :goto_7

    .line 41
    :pswitch_1a
    const-string v0, "DISCONNECTING"

    goto :goto_7

    .line 43
    :pswitch_1d
    const-string v0, "PEER_DISCONNECTED"

    goto :goto_7

    .line 45
    :pswitch_20
    const-string v0, "DISCONNECTED"

    goto :goto_7

    .line 27
    nop

    :pswitch_data_24
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
    .end packed-switch
.end method
