.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .registers 2

    .prologue
    .line 441
    iput-object p1, p0, this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 10
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 443
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # setter for: Landroid/widget/VideoView;->mCurrentState:I
    invoke-static {v2, v6}, Landroid/widget/VideoView;->access$202(Landroid/widget/VideoView;I)I

    .line 446
    invoke-virtual {p1, v3, v3}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 449
    .local v0, "data":Landroid/media/Metadata;
    if-eqz v0, :cond_f8

    .line 450
    iget-object v5, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_ef

    :cond_1d
    move v2, v4

    :goto_1e
    # setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v5, v2}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    .line 452
    iget-object v5, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_f2

    :cond_2f
    move v2, v4

    :goto_30
    # setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v5, v2}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    .line 454
    iget-object v5, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_f5

    :cond_41
    move v2, v4

    :goto_42
    # setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v5, v2}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    .line 456
    invoke-virtual {v0}, Landroid/media/Metadata;->recycleParcel()V

    .line 461
    :goto_48
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    if-eqz v2, :cond_5f

    .line 462
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;
    invoke-static {v2}, Landroid/widget/VideoView;->access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v2

    iget-object v5, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;
    invoke-static {v5}, Landroid/widget/VideoView;->access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-interface {v2, v5}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 464
    :cond_5f
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_70

    .line 465
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 467
    :cond_70
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    # setter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v2, v4}, Landroid/widget/VideoView;->access$002(Landroid/widget/VideoView;I)I

    .line 468
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    # setter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v2, v4}, Landroid/widget/VideoView;->access$102(Landroid/widget/VideoView;I)I

    .line 470
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mSeekWhenPrepared:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$900(Landroid/widget/VideoView;)I

    move-result v1

    .line 471
    .local v1, "seekToPosition":I
    if-eqz v1, :cond_8f

    .line 472
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {v2, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 474
    :cond_8f
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_12f

    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v2

    if-eqz v2, :cond_12f

    .line 476
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v4, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v4

    iget-object v5, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v5}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 477
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mSurfaceWidth:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1000(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v4, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mVideoWidth:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$000(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v2, v4, :cond_ee

    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mSurfaceHeight:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1100(Landroid/widget/VideoView;)I

    move-result v2

    iget-object v4, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mVideoHeight:I
    invoke-static {v4}, Landroid/widget/VideoView;->access$100(Landroid/widget/VideoView;)I

    move-result v4

    if-ne v2, v4, :cond_ee

    .line 481
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_10b

    .line 482
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    .line 483
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_ee

    .line 484
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 501
    :cond_ee
    :goto_ee
    return-void

    .end local v1    # "seekToPosition":I
    :cond_ef
    move v2, v3

    .line 450
    goto/16 :goto_1e

    :cond_f2
    move v2, v3

    .line 452
    goto/16 :goto_30

    :cond_f5
    move v2, v3

    .line 454
    goto/16 :goto_42

    .line 458
    :cond_f8
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    iget-object v5, p0, this$0:Landroid/widget/VideoView;

    iget-object v6, p0, this$0:Landroid/widget/VideoView;

    # setter for: Landroid/widget/VideoView;->mCanSeekForward:Z
    invoke-static {v6, v4}, Landroid/widget/VideoView;->access$502(Landroid/widget/VideoView;Z)Z

    move-result v6

    # setter for: Landroid/widget/VideoView;->mCanSeekBack:Z
    invoke-static {v5, v6}, Landroid/widget/VideoView;->access$402(Landroid/widget/VideoView;Z)Z

    move-result v5

    # setter for: Landroid/widget/VideoView;->mCanPause:Z
    invoke-static {v2, v5}, Landroid/widget/VideoView;->access$302(Landroid/widget/VideoView;Z)Z

    goto/16 :goto_48

    .line 486
    .restart local v1    # "seekToPosition":I
    :cond_10b
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_ee

    if-nez v1, :cond_11d

    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    if-lez v2, :cond_ee

    .line 488
    :cond_11d
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    if-eqz v2, :cond_ee

    .line 490
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v2}, Landroid/widget/VideoView;->access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/MediaController;->show(I)V

    goto :goto_ee

    .line 497
    :cond_12f
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    # getter for: Landroid/widget/VideoView;->mTargetState:I
    invoke-static {v2}, Landroid/widget/VideoView;->access$1200(Landroid/widget/VideoView;)I

    move-result v2

    if-ne v2, v7, :cond_ee

    .line 498
    iget-object v2, p0, this$0:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->start()V

    goto :goto_ee
.end method
