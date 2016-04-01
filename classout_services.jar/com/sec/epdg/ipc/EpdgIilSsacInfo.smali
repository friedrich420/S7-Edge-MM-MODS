.class public Lcom/sec/epdg/ipc/EpdgIilSsacInfo;
.super Ljava/lang/Object;
.source "EpdgIilSsacInfo.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "[EPDGIILSSACINFO]"


# instance fields
.field private mVideoFactor:I

.field private mVideoTime:I

.field private mVoiceFactor:I

.field private mVoiceTime:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5
    .param p1, "voiceFactor"    # I
    .param p2, "voiceTime"    # I
    .param p3, "videoFactor"    # I
    .param p4, "videoTime"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, mVoiceFactor:I

    .line 12
    iput p2, p0, mVoiceTime:I

    .line 13
    iput p3, p0, mVideoFactor:I

    .line 14
    iput p4, p0, mVideoTime:I

    .line 15
    return-void
.end method


# virtual methods
.method public getVideoFactor()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, mVideoFactor:I

    return v0
.end method

.method public getVideoTime()I
    .registers 2

    .prologue
    .line 30
    iget v0, p0, mVideoTime:I

    return v0
.end method

.method public getVoiceFactor()I
    .registers 2

    .prologue
    .line 18
    iget v0, p0, mVoiceFactor:I

    return v0
.end method

.method public getVoiceTime()I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, mVoiceTime:I

    return v0
.end method
