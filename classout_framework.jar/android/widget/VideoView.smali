.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/media/SubtitleController$Anchor;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final STATE_ERROR:I = -0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_PAUSED:I = 0x4

.field private static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field private static final STATE_PLAYING:I = 0x3

.field private static final STATE_PREPARED:I = 0x2

.field private static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioSession:I

.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mCurrentBufferPercentage:I

.field private mCurrentState:I

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mMediaController:Landroid/widget/MediaController;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field private mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mPendingSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSeekWhenPrepared:I

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mStopMusic:Z

.field private mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

.field private mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field private mSurfaceHeight:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceWidth:I

.field private mTargetState:I

.field private mUri:Landroid/net/Uri;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mWFDTcpDisable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 125
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 73
    const-string v0, "VideoView"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, mStopMusic:Z

    .line 93
    iput v1, p0, mCurrentState:I

    .line 94
    iput v1, p0, mTargetState:I

    .line 97
    iput-object v2, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 98
    iput-object v2, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    .line 116
    iput-boolean v1, p0, mWFDTcpDisable:Z

    .line 429
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 441
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 504
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 518
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 528
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 580
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 632
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 126
    invoke-direct {p0}, initVideoView()V

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 131
    invoke-direct {p0}, initVideoView()V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 139
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 73
    const-string v0, "VideoView"

    iput-object v0, p0, TAG:Ljava/lang/String;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, mStopMusic:Z

    .line 93
    iput v1, p0, mCurrentState:I

    .line 94
    iput v1, p0, mTargetState:I

    .line 97
    iput-object v2, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 98
    iput-object v2, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    .line 116
    iput-boolean v1, p0, mWFDTcpDisable:Z

    .line 429
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 441
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 504
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 518
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 528
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 580
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 632
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 140
    invoke-direct {p0}, initVideoView()V

    .line 141
    return-void
.end method

.method static synthetic access$000(Landroid/widget/VideoView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget v0, p0, mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/widget/VideoView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/widget/VideoView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget v0, p0, mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/VideoView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget v0, p0, mSurfaceWidth:I

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/VideoView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, mSurfaceWidth:I

    return p1
.end method

.method static synthetic access$102(Landroid/widget/VideoView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/VideoView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget v0, p0, mSurfaceHeight:I

    return v0
.end method

.method static synthetic access$1102(Landroid/widget/VideoView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, mSurfaceHeight:I

    return p1
.end method

.method static synthetic access$1200(Landroid/widget/VideoView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget v0, p0, mTargetState:I

    return v0
.end method

.method static synthetic access$1202(Landroid/widget/VideoView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, mTargetState:I

    return p1
.end method

.method static synthetic access$1300(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget-object v0, p0, mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget-object v0, p0, mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/VideoView;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget-object v0, p0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget-object v0, p0, mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/widget/VideoView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/widget/VideoView;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1902(Landroid/widget/VideoView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$2002(Landroid/widget/VideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 71
    iput-object p1, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$202(Landroid/widget/VideoView;I)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # I

    .prologue
    .line 71
    iput p1, p0, mCurrentState:I

    return p1
.end method

.method static synthetic access$2100(Landroid/widget/VideoView;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    invoke-direct {p0}, openVideo()V

    return-void
.end method

.method static synthetic access$2200(Landroid/widget/VideoView;Z)V
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    invoke-direct {p0, p1}, release(Z)V

    return-void
.end method

.method static synthetic access$302(Landroid/widget/VideoView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, mCanPause:Z

    return p1
.end method

.method static synthetic access$402(Landroid/widget/VideoView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, mCanSeekBack:Z

    return p1
.end method

.method static synthetic access$502(Landroid/widget/VideoView;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, mCanSeekForward:Z

    return p1
.end method

.method static synthetic access$600(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget-object v0, p0, mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/VideoView;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget-object v0, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/VideoView;)Landroid/widget/MediaController;
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget-object v0, p0, mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/VideoView;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/VideoView;

    .prologue
    .line 71
    iget v0, p0, mSeekWhenPrepared:I

    return v0
.end method

.method private attachMediaController()V
    .registers 4

    .prologue
    .line 420
    iget-object v1, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2a

    iget-object v1, p0, mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_2a

    .line 421
    iget-object v1, p0, mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 422
    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_2b

    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    move-object v0, v1

    .line 424
    .local v0, "anchorView":Landroid/view/View;
    :goto_1c
    iget-object v1, p0, mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 425
    iget-object v1, p0, mMediaController:Landroid/widget/MediaController;

    invoke-direct {p0}, isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 427
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_2a
    return-void

    :cond_2b
    move-object v0, p0

    .line 422
    goto :goto_1c
.end method

.method private initVideoView()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    iput v2, p0, mVideoWidth:I

    .line 218
    iput v2, p0, mVideoHeight:I

    .line 219
    invoke-virtual {p0}, getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 220
    invoke-virtual {p0}, getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 221
    invoke-virtual {p0, v3}, setFocusable(Z)V

    .line 222
    invoke-virtual {p0, v3}, setFocusableInTouchMode(Z)V

    .line 223
    invoke-virtual {p0}, requestFocus()Z

    .line 224
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, mPendingSubtitleTracks:Ljava/util/Vector;

    .line 225
    iput v2, p0, mCurrentState:I

    .line 226
    iput v2, p0, mTargetState:I

    .line 227
    return-void
.end method

.method private isInPlaybackState()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 817
    iget-object v1, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_13

    iget v1, p0, mCurrentState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    iget v1, p0, mCurrentState:I

    if-eqz v1, :cond_13

    iget v1, p0, mCurrentState:I

    if-eq v1, v0, :cond_13

    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method private measureAndLayoutSubtitleWidget()V
    .registers 5

    .prologue
    .line 893
    invoke-virtual {p0}, getWidth()I

    move-result v2

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 894
    .local v1, "width":I
    invoke-virtual {p0}, getHeight()I

    move-result v2

    invoke-virtual {p0}, getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 896
    .local v0, "height":I
    iget-object v2, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v2, v1, v0}, Landroid/media/SubtitleTrack$RenderingWidget;->setSize(II)V

    .line 897
    return-void
.end method

.method private openVideo()V
    .registers 14

    .prologue
    const/4 v12, 0x3

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 316
    iget-object v9, p0, mUri:Landroid/net/Uri;

    if-eqz v9, :cond_b

    iget-object v9, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v9, :cond_c

    .line 409
    :cond_b
    :goto_b
    return-void

    .line 322
    :cond_c
    invoke-direct {p0, v10}, release(Z)V

    .line 328
    iget-object v9, p0, TAG:Ljava/lang/String;

    const-string v10, "Open Video"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-boolean v9, p0, mStopMusic:Z

    if-eqz v9, :cond_51

    .line 333
    iget-object v9, p0, mContext:Landroid/content/Context;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 335
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getCurrentAudioFocusPackageName()Ljava/lang/String;

    move-result-object v3

    .line 336
    .local v3, "currentAudioFocus":Ljava/lang/String;
    if-eqz v3, :cond_164

    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_164

    .line 337
    iget-object v9, p0, TAG:Ljava/lang/String;

    const-string v10, "Skip requesting AudioFocus, This package already requested the audio focus"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_3d
    new-instance v6, Landroid/content/Intent;

    const-string v9, "com.android.music.musicservicecommand"

    invoke-direct {v6, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v6, "i":Landroid/content/Intent;
    const-string v9, "command"

    const-string/jumbo v10, "pause"

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    iget-object v9, p0, mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 348
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v3    # "currentAudioFocus":Ljava/lang/String;
    .end local v6    # "i":Landroid/content/Intent;
    :cond_51
    :try_start_51
    new-instance v9, Landroid/media/MediaPlayer;

    invoke-direct {v9}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    .line 351
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    .line 352
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/media/SubtitleController;

    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v9

    iget-object v10, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-direct {v2, v1, v9, v10}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    .line 354
    .local v2, "controller":Landroid/media/SubtitleController;
    new-instance v9, Landroid/media/WebVttRenderer;

    invoke-direct {v9, v1}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 355
    new-instance v9, Landroid/media/TtmlRenderer;

    invoke-direct {v9, v1}, Landroid/media/TtmlRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 356
    new-instance v9, Landroid/media/ClosedCaptionRenderer;

    invoke-direct {v9, v1}, Landroid/media/ClosedCaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v9}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 357
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9, v2, p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V

    .line 359
    iget v9, p0, mAudioSession:I

    if-eqz v9, :cond_16a

    .line 360
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget v10, p0, mAudioSession:I

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 364
    :goto_91
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 365
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 366
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 367
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 368
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 369
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 370
    const/4 v9, 0x0

    iput v9, p0, mCurrentBufferPercentage:I

    .line 371
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, mContext:Landroid/content/Context;

    iget-object v11, p0, mUri:Landroid/net/Uri;

    iget-object v12, p0, mHeaders:Ljava/util/Map;

    invoke-virtual {v9, v10, v11, v12}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 372
    iget-boolean v9, p0, mWFDTcpDisable:Z

    if-eqz v9, :cond_ef

    .line 373
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v10, 0x9c4

    const/4 v11, 0x1

    invoke-virtual {v9, v10, v11}, Landroid/media/MediaPlayer;->setParameter(II)Z

    .line 374
    iget-object v9, p0, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Disable TCP mode for wfd, mWFDTcpDisable :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, mWFDTcpDisable:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_ef
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v10, p0, mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 377
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 378
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 379
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 381
    iget-object v9, p0, mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_10d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;
    :try_end_119
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_119} :catch_133
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_119} :catch_174
    .catchall {:try_start_51 .. :try_end_119} :catchall_1b2

    .line 383
    .local v8, "pending":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/InputStream;Landroid/media/MediaFormat;>;"
    :try_start_119
    iget-object v11, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/io/InputStream;

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Landroid/media/MediaFormat;

    invoke-virtual {v11, v9, v10}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_126
    .catch Ljava/lang/IllegalStateException; {:try_start_119 .. :try_end_126} :catch_127
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_126} :catch_133
    .catch Ljava/lang/IllegalArgumentException; {:try_start_119 .. :try_end_126} :catch_174
    .catchall {:try_start_119 .. :try_end_126} :catchall_1b2

    goto :goto_10d

    .line 384
    :catch_127
    move-exception v4

    .line 385
    .local v4, "e":Ljava/lang/IllegalStateException;
    :try_start_128
    iget-object v9, p0, mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iget-object v10, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v11, 0x385

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z
    :try_end_132
    .catch Ljava/io/IOException; {:try_start_128 .. :try_end_132} :catch_133
    .catch Ljava/lang/IllegalArgumentException; {:try_start_128 .. :try_end_132} :catch_174
    .catchall {:try_start_128 .. :try_end_132} :catchall_1b2

    goto :goto_10d

    .line 394
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    .end local v4    # "e":Ljava/lang/IllegalStateException;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v8    # "pending":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/InputStream;Landroid/media/MediaFormat;>;"
    :catch_133
    move-exception v5

    .line 395
    .local v5, "ex":Ljava/io/IOException;
    :try_start_134
    iget-object v9, p0, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to open content: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    const/4 v9, -0x1

    iput v9, p0, mCurrentState:I

    .line 397
    const/4 v9, -0x1

    iput v9, p0, mTargetState:I

    .line 398
    iget-object v9, p0, mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v10, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_15d
    .catchall {:try_start_134 .. :try_end_15d} :catchall_1b2

    .line 407
    iget-object v9, p0, mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    goto/16 :goto_b

    .line 339
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v0    # "am":Landroid/media/AudioManager;
    .restart local v3    # "currentAudioFocus":Ljava/lang/String;
    :cond_164
    const/4 v9, 0x0

    invoke-virtual {v0, v9, v12, v11}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    goto/16 :goto_3d

    .line 362
    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v3    # "currentAudioFocus":Ljava/lang/String;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "controller":Landroid/media/SubtitleController;
    :cond_16a
    :try_start_16a
    iget-object v9, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v9

    iput v9, p0, mAudioSession:I
    :try_end_172
    .catch Ljava/io/IOException; {:try_start_16a .. :try_end_172} :catch_133
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16a .. :try_end_172} :catch_174
    .catchall {:try_start_16a .. :try_end_172} :catchall_1b2

    goto/16 :goto_91

    .line 400
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    :catch_174
    move-exception v5

    .line 401
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_175
    iget-object v9, p0, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to open content: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, mUri:Landroid/net/Uri;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 402
    const/4 v9, -0x1

    iput v9, p0, mCurrentState:I

    .line 403
    const/4 v9, -0x1

    iput v9, p0, mTargetState:I

    .line 404
    iget-object v9, p0, mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v10, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-interface {v9, v10, v11, v12}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_19e
    .catchall {:try_start_175 .. :try_end_19e} :catchall_1b2

    .line 407
    iget-object v9, p0, mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    goto/16 :goto_b

    .line 392
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "controller":Landroid/media/SubtitleController;
    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_1a5
    const/4 v9, 0x1

    :try_start_1a6
    iput v9, p0, mCurrentState:I

    .line 393
    invoke-direct {p0}, attachMediaController()V
    :try_end_1ab
    .catch Ljava/io/IOException; {:try_start_1a6 .. :try_end_1ab} :catch_133
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a6 .. :try_end_1ab} :catch_174
    .catchall {:try_start_1a6 .. :try_end_1ab} :catchall_1b2

    .line 407
    iget-object v9, p0, mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    goto/16 :goto_b

    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    .end local v7    # "i$":Ljava/util/Iterator;
    :catchall_1b2
    move-exception v9

    iget-object v10, p0, mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->clear()V

    throw v9
.end method

.method private release(Z)V
    .registers 6
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 668
    iget-object v1, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2a

    .line 669
    iget-object v1, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 670
    iget-object v1, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 671
    iput-object v3, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    .line 672
    iget-object v1, p0, mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 673
    iput v2, p0, mCurrentState:I

    .line 674
    if-eqz p1, :cond_1d

    .line 675
    iput v2, p0, mTargetState:I

    .line 677
    :cond_1d
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 678
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 680
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_2a
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .registers 2

    .prologue
    .line 741
    iget-object v0, p0, mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 742
    iget-object v0, p0, mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 746
    :goto_d
    return-void

    .line 744
    :cond_e
    iget-object v0, p0, mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_d
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .registers 8
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 289
    iget-object v1, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_e

    .line 290
    iget-object v1, p0, mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 299
    :goto_d
    return-void

    .line 293
    :cond_e
    :try_start_e
    iget-object v1, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_13} :catch_14

    goto :goto_d

    .line 294
    :catch_14
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    iget-object v2, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0x385

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto :goto_d
.end method

.method public canPause()Z
    .registers 2

    .prologue
    .line 825
    iget-boolean v0, p0, mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .registers 2

    .prologue
    .line 830
    iget-boolean v0, p0, mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .registers 2

    .prologue
    .line 835
    iget-boolean v0, p0, mCanSeekForward:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 877
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 879
    iget-object v1, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_20

    .line 880
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 881
    .local v0, "saveCount":I
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 882
    iget-object v1, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1, p1}, Landroid/media/SubtitleTrack$RenderingWidget;->draw(Landroid/graphics/Canvas;)V

    .line 883
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 885
    .end local v0    # "saveCount":I
    :cond_20
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 209
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .registers 3

    .prologue
    .line 840
    iget v1, p0, mAudioSession:I

    if-nez v1, :cond_12

    .line 841
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 842
    .local v0, "foo":Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, mAudioSession:I

    .line 843
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 845
    .end local v0    # "foo":Landroid/media/MediaPlayer;
    :cond_12
    iget v1, p0, mAudioSession:I

    return v1
.end method

.method public getBufferPercentage()I
    .registers 2

    .prologue
    .line 810
    iget-object v0, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_7

    .line 811
    iget v0, p0, mCurrentBufferPercentage:I

    .line 813
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getCurrentPosition()I
    .registers 2

    .prologue
    .line 787
    invoke-direct {p0}, isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 788
    iget-object v0, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 790
    :goto_c
    return v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getDuration()I
    .registers 2

    .prologue
    .line 778
    invoke-direct {p0}, isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 779
    iget-object v0, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 782
    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method public getSubtitleLooper()Landroid/os/Looper;
    .registers 2

    .prologue
    .line 944
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public isPlaying()Z
    .registers 2

    .prologue
    .line 805
    invoke-direct {p0}, isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .prologue
    .line 850
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 852
    iget-object v0, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_c

    .line 853
    iget-object v0, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 855
    :cond_c
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 859
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 861
    iget-object v0, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_c

    .line 862
    iget-object v0, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 864
    :cond_c
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 701
    const/4 v2, 0x4

    if-eq p1, v2, :cond_40

    const/16 v2, 0x18

    if-eq p1, v2, :cond_40

    const/16 v2, 0x19

    if-eq p1, v2, :cond_40

    const/16 v2, 0xa4

    if-eq p1, v2, :cond_40

    const/16 v2, 0x52

    if-eq p1, v2, :cond_40

    const/4 v2, 0x5

    if-eq p1, v2, :cond_40

    const/4 v2, 0x6

    if-eq p1, v2, :cond_40

    move v0, v1

    .line 708
    .local v0, "isKeyCodeSupported":Z
    :goto_1b
    invoke-direct {p0}, isInPlaybackState()Z

    move-result v2

    if-eqz v2, :cond_7c

    if-eqz v0, :cond_7c

    iget-object v2, p0, mMediaController:Landroid/widget/MediaController;

    if-eqz v2, :cond_7c

    .line 709
    const/16 v2, 0x4f

    if-eq p1, v2, :cond_2f

    const/16 v2, 0x55

    if-ne p1, v2, :cond_4b

    .line 711
    :cond_2f
    iget-object v2, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 712
    invoke-virtual {p0}, pause()V

    .line 713
    iget-object v2, p0, mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    .line 737
    :cond_3f
    :goto_3f
    return v1

    .line 701
    .end local v0    # "isKeyCodeSupported":Z
    :cond_40
    const/4 v0, 0x0

    goto :goto_1b

    .line 715
    .restart local v0    # "isKeyCodeSupported":Z
    :cond_42
    invoke-virtual {p0}, start()V

    .line 716
    iget-object v2, p0, mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_3f

    .line 719
    :cond_4b
    const/16 v2, 0x7e

    if-ne p1, v2, :cond_60

    .line 720
    iget-object v2, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 721
    invoke-virtual {p0}, start()V

    .line 722
    iget-object v2, p0, mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->hide()V

    goto :goto_3f

    .line 725
    :cond_60
    const/16 v2, 0x56

    if-eq p1, v2, :cond_68

    const/16 v2, 0x7f

    if-ne p1, v2, :cond_79

    .line 727
    :cond_68
    iget-object v2, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 728
    invoke-virtual {p0}, pause()V

    .line 729
    iget-object v2, p0, mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v2}, Landroid/widget/MediaController;->show()V

    goto :goto_3f

    .line 733
    :cond_79
    invoke-direct {p0}, toggleMediaControlsVisiblity()V

    .line 737
    :cond_7c
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_3f
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 868
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 870
    iget-object v0, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_a

    .line 871
    invoke-direct {p0}, measureAndLayoutSubtitleWidget()V

    .line 873
    :cond_a
    return-void
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 148
    iget v6, p0, mVideoWidth:I

    invoke-static {v6, p1}, getDefaultSize(II)I

    move-result v3

    .line 149
    .local v3, "width":I
    iget v6, p0, mVideoHeight:I

    invoke-static {v6, p2}, getDefaultSize(II)I

    move-result v0

    .line 150
    .local v0, "height":I
    iget v6, p0, mVideoWidth:I

    if-lez v6, :cond_3d

    iget v6, p0, mVideoHeight:I

    if-lez v6, :cond_3d

    .line 152
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 153
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 154
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 155
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 157
    .local v2, "heightSpecSize":I
    if-ne v4, v7, :cond_51

    if-ne v1, v7, :cond_51

    .line 159
    move v3, v5

    .line 160
    move v0, v2

    .line 163
    iget v6, p0, mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, mVideoHeight:I

    mul-int/2addr v7, v3

    if-ge v6, v7, :cond_41

    .line 165
    iget v6, p0, mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, mVideoHeight:I

    div-int v3, v6, v7

    .line 204
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v4    # "widthSpecMode":I
    .end local v5    # "widthSpecSize":I
    :cond_3d
    :goto_3d
    invoke-virtual {p0, v3, v0}, setMeasuredDimension(II)V

    .line 205
    return-void

    .line 166
    .restart local v1    # "heightSpecMode":I
    .restart local v2    # "heightSpecSize":I
    .restart local v4    # "widthSpecMode":I
    .restart local v5    # "widthSpecSize":I
    :cond_41
    iget v6, p0, mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, mVideoHeight:I

    mul-int/2addr v7, v3

    if-le v6, v7, :cond_3d

    .line 168
    iget v6, p0, mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_3d

    .line 170
    :cond_51
    if-ne v4, v7, :cond_61

    .line 172
    move v3, v5

    .line 173
    iget v6, p0, mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, mVideoWidth:I

    div-int v0, v6, v7

    .line 174
    if-ne v1, v8, :cond_3d

    if-le v0, v2, :cond_3d

    .line 176
    move v0, v2

    goto :goto_3d

    .line 178
    :cond_61
    if-ne v1, v7, :cond_71

    .line 180
    move v0, v2

    .line 181
    iget v6, p0, mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, mVideoHeight:I

    div-int v3, v6, v7

    .line 182
    if-ne v4, v8, :cond_3d

    if-le v3, v5, :cond_3d

    .line 184
    move v3, v5

    goto :goto_3d

    .line 188
    :cond_71
    iget v3, p0, mVideoWidth:I

    .line 189
    iget v0, p0, mVideoHeight:I

    .line 190
    if-ne v1, v8, :cond_81

    if-le v0, v2, :cond_81

    .line 192
    move v0, v2

    .line 193
    iget v6, p0, mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, mVideoHeight:I

    div-int v3, v6, v7

    .line 195
    :cond_81
    if-ne v4, v8, :cond_3d

    if-le v3, v5, :cond_3d

    .line 197
    move v3, v5

    .line 198
    iget v6, p0, mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_3d
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 684
    invoke-direct {p0}, isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_d

    .line 685
    invoke-direct {p0}, toggleMediaControlsVisiblity()V

    .line 687
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 692
    invoke-direct {p0}, isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_d

    .line 693
    invoke-direct {p0}, toggleMediaControlsVisiblity()V

    .line 695
    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .registers 3

    .prologue
    const/4 v1, 0x4

    .line 759
    invoke-direct {p0}, isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 760
    iget-object v0, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 761
    iget-object v0, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 762
    iput v1, p0, mCurrentState:I

    .line 765
    :cond_16
    iput v1, p0, mTargetState:I

    .line 766
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .registers 4
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 213
    invoke-static {p1, p2}, getDefaultSize(II)I

    move-result v0

    return v0
.end method

.method public resume()V
    .registers 1

    .prologue
    .line 773
    invoke-direct {p0}, openVideo()V

    .line 774
    return-void
.end method

.method public seekTo(I)V
    .registers 3
    .param p1, "msec"    # I

    .prologue
    .line 795
    invoke-direct {p0}, isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 796
    iget-object v0, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 797
    const/4 v0, 0x0

    iput v0, p0, mSeekWhenPrepared:I

    .line 801
    :goto_e
    return-void

    .line 799
    :cond_f
    iput p1, p0, mSeekWhenPrepared:I

    goto :goto_e
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .registers 3
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 412
    iget-object v0, p0, mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_9

    .line 413
    iget-object v0, p0, mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 415
    :cond_9
    iput-object p1, p0, mMediaController:Landroid/widget/MediaController;

    .line 416
    invoke-direct {p0}, attachMediaController()V

    .line 417
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 606
    iput-object p1, p0, mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 607
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 619
    iput-object p1, p0, mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 620
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 629
    iput-object p1, p0, mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 630
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .registers 2
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 595
    iput-object p1, p0, mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 596
    return-void
.end method

.method public setStopMusic(Z)V
    .registers 2
    .param p1, "stopMusic"    # Z

    .prologue
    .line 955
    iput-boolean p1, p0, mStopMusic:Z

    .line 956
    return-void
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .registers 5
    .param p1, "subtitleWidget"    # Landroid/media/SubtitleTrack$RenderingWidget;

    .prologue
    .line 902
    iget-object v1, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-ne v1, p1, :cond_5

    .line 939
    :goto_4
    return-void

    .line 906
    :cond_5
    invoke-virtual {p0}, isAttachedToWindow()Z

    move-result v0

    .line 907
    .local v0, "attachedToWindow":Z
    iget-object v1, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_1a

    .line 908
    if-eqz v0, :cond_14

    .line 909
    iget-object v1, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 912
    :cond_14
    iget-object v1, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 915
    :cond_1a
    iput-object p1, p0, mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    .line 917
    if-eqz p1, :cond_3e

    .line 918
    iget-object v1, p0, mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-nez v1, :cond_29

    .line 919
    new-instance v1, Landroid/widget/VideoView$8;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 927
    :cond_29
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setWillNotDraw(Z)V

    .line 928
    iget-object v1, p0, mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 930
    if-eqz v0, :cond_3a

    .line 931
    invoke-interface {p1}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 932
    invoke-virtual {p0}, requestLayout()V

    .line 938
    :cond_3a
    :goto_3a
    invoke-virtual {p0}, invalidate()V

    goto :goto_4

    .line 935
    :cond_3e
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, setWillNotDraw(Z)V

    goto :goto_3a
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .registers 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 235
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, setVideoURI(Landroid/net/Uri;)V

    .line 236
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 245
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .registers 4
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, mUri:Landroid/net/Uri;

    .line 259
    iput-object p2, p0, mHeaders:Ljava/util/Map;

    .line 260
    const/4 v0, 0x0

    iput v0, p0, mSeekWhenPrepared:I

    .line 261
    invoke-direct {p0}, openVideo()V

    .line 262
    invoke-virtual {p0}, requestLayout()V

    .line 263
    invoke-virtual {p0}, invalidate()V

    .line 264
    return-void
.end method

.method public setWFDTcpDisable(Z)V
    .registers 2
    .param p1, "wfdTcpDisable"    # Z

    .prologue
    .line 966
    iput-boolean p1, p0, mWFDTcpDisable:Z

    .line 967
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 750
    invoke-direct {p0}, isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 751
    iget-object v0, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 752
    iput v1, p0, mCurrentState:I

    .line 754
    :cond_e
    iput v1, p0, mTargetState:I

    .line 755
    return-void
.end method

.method public stopPlayback()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 304
    iget-object v1, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_23

    .line 305
    iget-object v1, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 306
    iget-object v1, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 307
    iput-object v3, p0, mMediaPlayer:Landroid/media/MediaPlayer;

    .line 308
    iput v2, p0, mCurrentState:I

    .line 309
    iput v2, p0, mTargetState:I

    .line 310
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 311
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 313
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_23
    return-void
.end method

.method public suspend()V
    .registers 2

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-direct {p0, v0}, release(Z)V

    .line 770
    return-void
.end method
