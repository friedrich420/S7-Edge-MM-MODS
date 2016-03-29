.class Lcom/sec/android/cover/ledcover/NfcLedCoverController$2;
.super Ljava/lang/Object;
.source "NfcLedCoverController.java"

# interfaces
.implements Lcom/sec/android/cover/ledcover/PlaybackStateObserver$OnPlaybackStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/ledcover/NfcLedCoverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/ledcover/NfcLedCoverController;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 4
    .param p1, "playbackState"    # Landroid/media/session/PlaybackState;

    .prologue
    .line 263
    # getter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlaybackStateChanged state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-nez p1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->STOPPED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;
    invoke-static {v1, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$902(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;)Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    .line 281
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    const/16 v2, 0xd

    # invokes: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->sendCommandByPriority(I)V
    invoke-static {v1, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$100(Lcom/sec/android/cover/ledcover/NfcLedCoverController;I)V

    .line 282
    return-void

    .line 268
    :cond_0
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    .line 269
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 271
    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->STOPPED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;
    invoke-static {v1, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$902(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;)Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    goto :goto_0

    .line 274
    :pswitch_2
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PLAYING:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;
    invoke-static {v1, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$902(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;)Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    goto :goto_0

    .line 277
    :pswitch_3
    iget-object v1, p0, Lcom/sec/android/cover/ledcover/NfcLedCoverController$2;->this$0:Lcom/sec/android/cover/ledcover/NfcLedCoverController;

    sget-object v2, Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;->PAUSED:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    # setter for: Lcom/sec/android/cover/ledcover/NfcLedCoverController;->mMusicStatus:Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;
    invoke-static {v1, v2}, Lcom/sec/android/cover/ledcover/NfcLedCoverController;->access$902(Lcom/sec/android/cover/ledcover/NfcLedCoverController;Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;)Lcom/sec/android/cover/ledcover/NfcLedCoverController$MusicPlayStatus;

    goto :goto_0

    .line 269
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
