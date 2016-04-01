.class public Lcom/android/server/audio/PlayerRecord$RemotePlaybackState;
.super Ljava/lang/Object;
.source "PlayerRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/PlayerRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "RemotePlaybackState"
.end annotation


# instance fields
.field mRccId:I

.field mVolume:I

.field mVolumeHandling:I

.field mVolumeMax:I


# direct methods
.method protected constructor <init>(III)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "vol"    # I
    .param p3, "volMax"    # I

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p1, p0, mRccId:I

    .line 189
    iput p2, p0, mVolume:I

    .line 190
    iput p3, p0, mVolumeMax:I

    .line 191
    const/4 v0, 0x1

    iput v0, p0, mVolumeHandling:I

    .line 192
    return-void
.end method
