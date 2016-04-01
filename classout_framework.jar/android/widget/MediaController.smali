.class public Landroid/widget/MediaController;
.super Landroid/widget/FrameLayout;
.source "MediaController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/MediaController$MediaPlayerControl;
    }
.end annotation


# static fields
.field private static final FADE_OUT:I = 0x1

.field private static final SHOW_PROGRESS:I = 0x2

.field private static final sDefaultTimeout:I = 0xbb8


# instance fields
.field private final isLayoutRtl:Z

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnchor:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mCurrentTime:Landroid/widget/TextView;

.field private mDecor:Landroid/view/View;

.field private mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mDragging:Z

.field private mEndTime:Landroid/widget/TextView;

.field private mFfwdButton:Landroid/widget/ImageButton;

.field private final mFfwdListener:Landroid/view/View$OnClickListener;

.field mFormatBuilder:Ljava/lang/StringBuilder;

.field mFormatter:Ljava/util/Formatter;

.field private mFromXml:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private mListenersSet:Z

.field private mNextButton:Landroid/widget/ImageButton;

.field private mNextListener:Landroid/view/View$OnClickListener;

.field private mPauseButton:Landroid/widget/ImageButton;

.field private mPauseDescription:Ljava/lang/CharSequence;

.field private final mPauseListener:Landroid/view/View$OnClickListener;

.field private mPlayDescription:Ljava/lang/CharSequence;

.field private mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

.field private mPrevButton:Landroid/widget/ImageButton;

.field private mPrevListener:Landroid/view/View$OnClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRewButton:Landroid/widget/ImageButton;

.field private final mRewListener:Landroid/view/View$OnClickListener;

.field private mRoot:Landroid/view/View;

.field private final mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mShowing:Z

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mUseFastForward:Z

.field private mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Z)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 107
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v1, :cond_51

    move v0, v1

    :goto_f
    iput-boolean v0, p0, isLayoutRtl:Z

    .line 190
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 203
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mTouchListener:Landroid/view/View$OnTouchListener;

    .line 418
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 548
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mPauseListener:Landroid/view/View$OnClickListener;

    .line 589
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 662
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mRewListener:Landroid/view/View$OnClickListener;

    .line 674
    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mFfwdListener:Landroid/view/View$OnClickListener;

    .line 108
    iput-object p0, p0, mRoot:Landroid/view/View;

    .line 109
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 110
    iput-boolean v1, p0, mUseFastForward:Z

    .line 111
    iput-boolean v1, p0, mFromXml:Z

    .line 112
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 113
    return-void

    .line 103
    :cond_51
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "useFastForward"    # Z

    .prologue
    const/4 v0, 0x1

    .line 122
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 103
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    if-ne v1, v0, :cond_52

    :goto_e
    iput-boolean v0, p0, isLayoutRtl:Z

    .line 190
    new-instance v0, Landroid/widget/MediaController$1;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$1;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 203
    new-instance v0, Landroid/widget/MediaController$2;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$2;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mTouchListener:Landroid/view/View$OnTouchListener;

    .line 418
    new-instance v0, Landroid/widget/MediaController$3;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$3;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    .line 548
    new-instance v0, Landroid/widget/MediaController$4;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$4;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mPauseListener:Landroid/view/View$OnClickListener;

    .line 589
    new-instance v0, Landroid/widget/MediaController$5;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$5;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 662
    new-instance v0, Landroid/widget/MediaController$6;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$6;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mRewListener:Landroid/view/View$OnClickListener;

    .line 674
    new-instance v0, Landroid/widget/MediaController$7;

    invoke-direct {v0, p0}, Landroid/widget/MediaController$7;-><init>(Landroid/widget/MediaController;)V

    iput-object v0, p0, mFfwdListener:Landroid/view/View$OnClickListener;

    .line 123
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 124
    iput-boolean p2, p0, mUseFastForward:Z

    .line 125
    invoke-direct {p0}, initFloatingWindowLayout()V

    .line 126
    invoke-direct {p0}, initFloatingWindow()V

    .line 127
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 128
    return-void

    .line 103
    :cond_52
    const/4 v0, 0x0

    goto :goto_e
.end method

.method static synthetic access$000(Landroid/widget/MediaController;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    invoke-direct {p0}, updateFloatingWindowLayout()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/MediaController;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-boolean v0, p0, mShowing:Z

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/MediaController;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, mCurrentTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/MediaController;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Landroid/widget/MediaController;
    .param p1, "x1"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1}, stringForTime(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/widget/MediaController;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    invoke-direct {p0}, updatePausePlay()V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/MediaController;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, mDecor:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/MediaController;)Landroid/view/WindowManager$LayoutParams;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/MediaController;)Landroid/view/WindowManager;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/MediaController;)I
    .registers 2
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    invoke-direct {p0}, setProgress()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/MediaController;)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-boolean v0, p0, mDragging:Z

    return v0
.end method

.method static synthetic access$602(Landroid/widget/MediaController;Z)Z
    .registers 2
    .param p0, "x0"    # Landroid/widget/MediaController;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, mDragging:Z

    return p1
.end method

.method static synthetic access$700(Landroid/widget/MediaController;)Landroid/widget/MediaController$MediaPlayerControl;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    return-object v0
.end method

.method static synthetic access$800(Landroid/widget/MediaController;)V
    .registers 1
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    invoke-direct {p0}, doPauseResume()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/MediaController;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/widget/MediaController;

    .prologue
    .line 72
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private disableUnsupportedButtons()V
    .registers 3

    .prologue
    .line 338
    :try_start_0
    iget-object v0, p0, mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_12

    iget-object v0, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canPause()Z

    move-result v0

    if-nez v0, :cond_12

    .line 339
    iget-object v0, p0, mPauseButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 341
    :cond_12
    iget-object v0, p0, mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_24

    iget-object v0, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_24

    .line 342
    iget-object v0, p0, mRewButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 344
    :cond_24
    iget-object v0, p0, mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_36

    iget-object v0, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_36

    .line 345
    iget-object v0, p0, mFfwdButton:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 354
    :cond_36
    iget-object v0, p0, mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_50

    iget-object v0, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekBackward()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->canSeekForward()Z

    move-result v0

    if-nez v0, :cond_50

    .line 355
    iget-object v0, p0, mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setEnabled(Z)V
    :try_end_50
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_50} :catch_51

    .line 363
    :cond_50
    :goto_50
    return-void

    .line 357
    :catch_51
    move-exception v0

    goto :goto_50
.end method

.method private doPauseResume()V
    .registers 2

    .prologue
    .line 570
    iget-object v0, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 571
    iget-object v0, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 575
    :goto_d
    invoke-direct {p0}, updatePausePlay()V

    .line 576
    return-void

    .line 573
    :cond_11
    iget-object v0, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    goto :goto_d
.end method

.method private initControllerView(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    .line 262
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 263
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x104028b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, mPlayDescription:Ljava/lang/CharSequence;

    .line 265
    const v2, 0x104028a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, mPauseDescription:Ljava/lang/CharSequence;

    .line 267
    const v2, 0x10203eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, mPauseButton:Landroid/widget/ImageButton;

    .line 268
    iget-object v2, p0, mPauseButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_36

    .line 269
    iget-object v2, p0, mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 270
    iget-object v2, p0, mPauseButton:Landroid/widget/ImageButton;

    iget-object v5, p0, mPauseListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    :cond_36
    const v2, 0x10203ec

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, mFfwdButton:Landroid/widget/ImageButton;

    .line 274
    iget-object v2, p0, mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_5e

    .line 275
    iget-boolean v2, p0, isLayoutRtl:Z

    if-eqz v2, :cond_110

    .line 276
    iget-object v2, p0, mFfwdButton:Landroid/widget/ImageButton;

    iget-object v5, p0, mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    :goto_50
    iget-boolean v2, p0, mFromXml:Z

    if-nez v2, :cond_5e

    .line 281
    iget-object v5, p0, mFfwdButton:Landroid/widget/ImageButton;

    iget-boolean v2, p0, mUseFastForward:Z

    if-eqz v2, :cond_119

    move v2, v3

    :goto_5b
    invoke-virtual {v5, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 285
    :cond_5e
    const v2, 0x10203ea

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, mRewButton:Landroid/widget/ImageButton;

    .line 286
    iget-object v2, p0, mRewButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_85

    .line 287
    iget-boolean v2, p0, isLayoutRtl:Z

    if-eqz v2, :cond_11c

    .line 288
    iget-object v2, p0, mRewButton:Landroid/widget/ImageButton;

    iget-object v5, p0, mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    :goto_78
    iget-boolean v2, p0, mFromXml:Z

    if-nez v2, :cond_85

    .line 293
    iget-object v2, p0, mRewButton:Landroid/widget/ImageButton;

    iget-boolean v5, p0, mUseFastForward:Z

    if-eqz v5, :cond_125

    :goto_82
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 298
    :cond_85
    const v2, 0x1020398

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, mNextButton:Landroid/widget/ImageButton;

    .line 299
    iget-object v2, p0, mNextButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_a1

    iget-boolean v2, p0, mFromXml:Z

    if-nez v2, :cond_a1

    iget-boolean v2, p0, mListenersSet:Z

    if-nez v2, :cond_a1

    .line 300
    iget-object v2, p0, mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 302
    :cond_a1
    const v2, 0x1020397

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, mPrevButton:Landroid/widget/ImageButton;

    .line 303
    iget-object v2, p0, mPrevButton:Landroid/widget/ImageButton;

    if-eqz v2, :cond_bd

    iget-boolean v2, p0, mFromXml:Z

    if-nez v2, :cond_bd

    iget-boolean v2, p0, mListenersSet:Z

    if-nez v2, :cond_bd

    .line 304
    iget-object v2, p0, mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 307
    :cond_bd
    const v2, 0x10203ee

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, mProgress:Landroid/widget/ProgressBar;

    .line 308
    iget-object v2, p0, mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_e2

    .line 309
    iget-object v2, p0, mProgress:Landroid/widget/ProgressBar;

    instance-of v2, v2, Landroid/widget/SeekBar;

    if-eqz v2, :cond_db

    .line 310
    iget-object v1, p0, mProgress:Landroid/widget/ProgressBar;

    check-cast v1, Landroid/widget/SeekBar;

    .line 311
    .local v1, "seeker":Landroid/widget/SeekBar;
    iget-object v2, p0, mSeekListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 313
    .end local v1    # "seeker":Landroid/widget/SeekBar;
    :cond_db
    iget-object v2, p0, mProgress:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 316
    :cond_e2
    const v2, 0x102009a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, mEndTime:Landroid/widget/TextView;

    .line 317
    const v2, 0x10203ed

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, mCurrentTime:Landroid/widget/TextView;

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v2, p0, mFormatBuilder:Ljava/lang/StringBuilder;

    .line 319
    new-instance v2, Ljava/util/Formatter;

    iget-object v3, p0, mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v2, p0, mFormatter:Ljava/util/Formatter;

    .line 321
    invoke-direct {p0}, installPrevNextListeners()V

    .line 322
    return-void

    .line 278
    :cond_110
    iget-object v2, p0, mFfwdButton:Landroid/widget/ImageButton;

    iget-object v5, p0, mFfwdListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_50

    :cond_119
    move v2, v4

    .line 281
    goto/16 :goto_5b

    .line 290
    :cond_11c
    iget-object v2, p0, mRewButton:Landroid/widget/ImageButton;

    iget-object v5, p0, mRewListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_78

    :cond_125
    move v3, v4

    .line 293
    goto/16 :goto_82
.end method

.method private initFloatingWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 135
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    .line 136
    new-instance v0, Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/PhoneWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mWindow:Landroid/view/Window;

    .line 137
    iget-object v0, p0, mWindow:Landroid/view/Window;

    iget-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v0, v1, v3, v3}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 138
    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 139
    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mDecor:Landroid/view/View;

    .line 140
    iget-object v0, p0, mDecor:Landroid/view/View;

    iget-object v1, p0, mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    iget-object v0, p0, mWindow:Landroid/view/Window;

    invoke-virtual {v0, p0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 142
    iget-object v0, p0, mWindow:Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 146
    iget-object v0, p0, mWindow:Landroid/view/Window;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 148
    invoke-virtual {p0, v2}, setFocusable(Z)V

    .line 149
    invoke-virtual {p0, v2}, setFocusableInTouchMode(Z)V

    .line 150
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, setDescendantFocusability(I)V

    .line 151
    invoke-virtual {p0}, requestFocus()Z

    .line 152
    return-void
.end method

.method private initFloatingWindowLayout()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 158
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 159
    iget-object v0, p0, mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 160
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 161
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 162
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 163
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 164
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 165
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, 0x820020

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 168
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 169
    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 170
    return-void
.end method

.method private installPrevNextListeners()V
    .registers 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 687
    iget-object v0, p0, mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1b

    .line 688
    iget-boolean v0, p0, isLayoutRtl:Z

    if-eqz v0, :cond_34

    .line 689
    iget-object v0, p0, mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 693
    :goto_11
    iget-object v3, p0, mNextButton:Landroid/widget/ImageButton;

    iget-object v0, p0, mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_3c

    move v0, v1

    :goto_18
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 696
    :cond_1b
    iget-object v0, p0, mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_33

    .line 697
    iget-boolean v0, p0, isLayoutRtl:Z

    if-eqz v0, :cond_3e

    .line 698
    iget-object v0, p0, mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    :goto_2a
    iget-object v0, p0, mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_46

    :goto_30
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 704
    :cond_33
    return-void

    .line 691
    :cond_34
    iget-object v0, p0, mNextButton:Landroid/widget/ImageButton;

    iget-object v3, p0, mNextListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_11

    :cond_3c
    move v0, v2

    .line 693
    goto :goto_18

    .line 700
    :cond_3e
    iget-object v0, p0, mPrevButton:Landroid/widget/ImageButton;

    iget-object v3, p0, mPrevListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2a

    :cond_46
    move v1, v2

    .line 702
    goto :goto_30
.end method

.method private setProgress()I
    .registers 11

    .prologue
    .line 453
    iget-object v5, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    if-eqz v5, :cond_8

    iget-boolean v5, p0, mDragging:Z

    if-eqz v5, :cond_a

    .line 454
    :cond_8
    const/4 v4, 0x0

    .line 473
    :cond_9
    :goto_9
    return v4

    .line 456
    :cond_a
    iget-object v5, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getCurrentPosition()I

    move-result v4

    .line 457
    .local v4, "position":I
    iget-object v5, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getDuration()I

    move-result v0

    .line 458
    .local v0, "duration":I
    iget-object v5, p0, mProgress:Landroid/widget/ProgressBar;

    if-eqz v5, :cond_36

    .line 459
    if-lez v0, :cond_29

    .line 461
    const-wide/16 v6, 0x3e8

    int-to-long v8, v4

    mul-long/2addr v6, v8

    int-to-long v8, v0

    div-long v2, v6, v8

    .line 462
    .local v2, "pos":J
    iget-object v5, p0, mProgress:Landroid/widget/ProgressBar;

    long-to-int v6, v2

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 464
    .end local v2    # "pos":J
    :cond_29
    iget-object v5, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v5}, Landroid/widget/MediaController$MediaPlayerControl;->getBufferPercentage()I

    move-result v1

    .line 465
    .local v1, "percent":I
    iget-object v5, p0, mProgress:Landroid/widget/ProgressBar;

    mul-int/lit8 v6, v1, 0xa

    invoke-virtual {v5, v6}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 468
    .end local v1    # "percent":I
    :cond_36
    iget-object v5, p0, mEndTime:Landroid/widget/TextView;

    if-eqz v5, :cond_43

    .line 469
    iget-object v5, p0, mEndTime:Landroid/widget/TextView;

    invoke-direct {p0, v0}, stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    :cond_43
    iget-object v5, p0, mCurrentTime:Landroid/widget/TextView;

    if-eqz v5, :cond_9

    .line 471
    iget-object v5, p0, mCurrentTime:Landroid/widget/TextView;

    invoke-direct {p0, v4}, stringForTime(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9
.end method

.method private stringForTime(I)Ljava/lang/String;
    .registers 13
    .param p1, "timeMs"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 438
    div-int/lit16 v3, p1, 0x3e8

    .line 440
    .local v3, "totalSeconds":I
    rem-int/lit8 v2, v3, 0x3c

    .line 441
    .local v2, "seconds":I
    div-int/lit8 v4, v3, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 442
    .local v1, "minutes":I
    div-int/lit16 v0, v3, 0xe10

    .line 444
    .local v0, "hours":I
    iget-object v4, p0, mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 445
    if-lez v0, :cond_36

    .line 446
    iget-object v4, p0, mFormatter:Ljava/util/Formatter;

    const-string v5, "%d:%02d:%02d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    .line 448
    :goto_35
    return-object v4

    :cond_36
    iget-object v4, p0, mFormatter:Ljava/util/Formatter;

    const-string v5, "%02d:%02d"

    new-array v6, v10, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_35
.end method

.method private updateFloatingWindowLayout()V
    .registers 7

    .prologue
    const/high16 v5, -0x80000000

    .line 175
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 176
    .local v0, "anchorPos":[I
    iget-object v2, p0, mAnchor:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 180
    iget-object v2, p0, mDecor:Landroid/view/View;

    iget-object v3, p0, mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v4, p0, mAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->measure(II)V

    .line 183
    iget-object v1, p0, mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 184
    .local v1, "p":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, mAnchor:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 185
    const/4 v2, 0x0

    aget v2, v0, v2

    iget-object v3, p0, mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 186
    const/4 v2, 0x1

    aget v2, v0, v2

    iget-object v3, p0, mAnchor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, mDecor:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 187
    return-void
.end method

.method private updatePausePlay()V
    .registers 3

    .prologue
    .line 557
    iget-object v0, p0, mRoot:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v0, p0, mPauseButton:Landroid/widget/ImageButton;

    if-nez v0, :cond_9

    .line 567
    :cond_8
    :goto_8
    return-void

    .line 560
    :cond_9
    iget-object v0, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v0}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 561
    iget-object v0, p0, mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080023

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 562
    iget-object v0, p0, mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, mPauseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 564
    :cond_21
    iget-object v0, p0, mPauseButton:Landroid/widget/ImageButton;

    const v1, 0x1080024

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 565
    iget-object v0, p0, mPauseButton:Landroid/widget/ImageButton;

    iget-object v1, p0, mPlayDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_8
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 7
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0xbb8

    const/4 v2, 0x1

    .line 502
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 503
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_32

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_32

    move v1, v2

    .line 505
    .local v1, "uniqueDown":Z
    :goto_14
    const/16 v3, 0x4f

    if-eq v0, v3, :cond_20

    const/16 v3, 0x55

    if-eq v0, v3, :cond_20

    const/16 v3, 0x3e

    if-ne v0, v3, :cond_34

    .line 508
    :cond_20
    if-eqz v1, :cond_31

    .line 509
    invoke-direct {p0}, doPauseResume()V

    .line 510
    invoke-virtual {p0, v4}, show(I)V

    .line 511
    iget-object v3, p0, mPauseButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_31

    .line 512
    iget-object v3, p0, mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 545
    :cond_31
    :goto_31
    return v2

    .line 503
    .end local v1    # "uniqueDown":Z
    :cond_32
    const/4 v1, 0x0

    goto :goto_14

    .line 516
    .restart local v1    # "uniqueDown":Z
    :cond_34
    const/16 v3, 0x7e

    if-ne v0, v3, :cond_4e

    .line 517
    if-eqz v1, :cond_31

    iget-object v3, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_31

    .line 518
    iget-object v3, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->start()V

    .line 519
    invoke-direct {p0}, updatePausePlay()V

    .line 520
    invoke-virtual {p0, v4}, show(I)V

    goto :goto_31

    .line 523
    :cond_4e
    const/16 v3, 0x56

    if-eq v0, v3, :cond_56

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_6c

    .line 525
    :cond_56
    if-eqz v1, :cond_31

    iget-object v3, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_31

    .line 526
    iget-object v3, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    invoke-interface {v3}, Landroid/widget/MediaController$MediaPlayerControl;->pause()V

    .line 527
    invoke-direct {p0}, updatePausePlay()V

    .line 528
    invoke-virtual {p0, v4}, show(I)V

    goto :goto_31

    .line 531
    :cond_6c
    const/16 v3, 0x19

    if-eq v0, v3, :cond_7c

    const/16 v3, 0x18

    if-eq v0, v3, :cond_7c

    const/16 v3, 0xa4

    if-eq v0, v3, :cond_7c

    const/16 v3, 0x1b

    if-ne v0, v3, :cond_81

    .line 536
    :cond_7c
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_31

    .line 537
    :cond_81
    const/4 v3, 0x4

    if-eq v0, v3, :cond_88

    const/16 v3, 0x52

    if-ne v0, v3, :cond_8e

    .line 538
    :cond_88
    if-eqz v1, :cond_31

    .line 539
    invoke-virtual {p0}, hide()V

    goto :goto_31

    .line 544
    :cond_8e
    invoke-virtual {p0, v4}, show(I)V

    .line 545
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    goto :goto_31
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 659
    const-class v0, Landroid/widget/MediaController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hide()V
    .registers 4

    .prologue
    .line 404
    iget-object v1, p0, mAnchor:Landroid/view/View;

    if-nez v1, :cond_5

    .line 416
    :cond_4
    :goto_4
    return-void

    .line 407
    :cond_5
    iget-boolean v1, p0, mShowing:Z

    if-eqz v1, :cond_4

    .line 409
    :try_start_9
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 410
    iget-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, mDecor:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_16} :catch_1a

    .line 414
    :goto_16
    const/4 v1, 0x0

    iput-boolean v1, p0, mShowing:Z

    goto :goto_4

    .line 411
    :catch_1a
    move-exception v0

    .line 412
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const-string v1, "MediaController"

    const-string v2, "already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 397
    iget-boolean v0, p0, mShowing:Z

    return v0
.end method

.method protected makeControllerView()Landroid/view/View;
    .registers 4

    .prologue
    .line 253
    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 254
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x109008e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, mRoot:Landroid/view/View;

    .line 256
    iget-object v1, p0, mRoot:Landroid/view/View;

    invoke-direct {p0, v1}, initControllerView(Landroid/view/View;)V

    .line 258
    iget-object v1, p0, mRoot:Landroid/view/View;

    return-object v1
.end method

.method public onFinishInflate()V
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, mRoot:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 118
    iget-object v0, p0, mRoot:Landroid/view/View;

    invoke-direct {p0, v0}, initControllerView(Landroid/view/View;)V

    .line 119
    :cond_9
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 478
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_18

    .line 491
    :goto_7
    :pswitch_7
    const/4 v0, 0x1

    return v0

    .line 480
    :pswitch_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, show(I)V

    goto :goto_7

    .line 483
    :pswitch_e
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, show(I)V

    goto :goto_7

    .line 486
    :pswitch_14
    invoke-virtual {p0}, hide()V

    goto :goto_7

    .line 478
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_9
        :pswitch_e
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 496
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, show(I)V

    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 228
    iget-object v2, p0, mAnchor:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 229
    iget-object v2, p0, mAnchor:Landroid/view/View;

    iget-object v3, p0, mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 231
    :cond_c
    iput-object p1, p0, mAnchor:Landroid/view/View;

    .line 232
    iget-object v2, p0, mAnchor:Landroid/view/View;

    if-eqz v2, :cond_19

    .line 233
    iget-object v2, p0, mAnchor:Landroid/view/View;

    iget-object v3, p0, mLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 236
    :cond_19
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 241
    .local v0, "frameParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, removeAllViews()V

    .line 242
    invoke-virtual {p0}, makeControllerView()Landroid/view/View;

    move-result-object v1

    .line 243
    .local v1, "v":Landroid/view/View;
    invoke-virtual {p0, v1, v0}, addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    return-void
.end method

.method public setEnabled(Z)V
    .registers 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 635
    iget-object v0, p0, mPauseButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_b

    .line 636
    iget-object v0, p0, mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 638
    :cond_b
    iget-object v0, p0, mFfwdButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_14

    .line 639
    iget-object v0, p0, mFfwdButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 641
    :cond_14
    iget-object v0, p0, mRewButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1d

    .line 642
    iget-object v0, p0, mRewButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 644
    :cond_1d
    iget-object v0, p0, mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2d

    .line 645
    iget-object v3, p0, mNextButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4c

    iget-object v0, p0, mNextListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_2a
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 647
    :cond_2d
    iget-object v0, p0, mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3c

    .line 648
    iget-object v0, p0, mPrevButton:Landroid/widget/ImageButton;

    if-eqz p1, :cond_4e

    iget-object v3, p0, mPrevListener:Landroid/view/View$OnClickListener;

    if-eqz v3, :cond_4e

    :goto_39
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 650
    :cond_3c
    iget-object v0, p0, mProgress:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_45

    .line 651
    iget-object v0, p0, mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setEnabled(Z)V

    .line 653
    :cond_45
    invoke-direct {p0}, disableUnsupportedButtons()V

    .line 654
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 655
    return-void

    :cond_4c
    move v0, v2

    .line 645
    goto :goto_2a

    :cond_4e
    move v1, v2

    .line 648
    goto :goto_39
.end method

.method public setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V
    .registers 2
    .param p1, "player"    # Landroid/widget/MediaController$MediaPlayerControl;

    .prologue
    .line 216
    iput-object p1, p0, mPlayer:Landroid/widget/MediaController$MediaPlayerControl;

    .line 217
    invoke-direct {p0}, updatePausePlay()V

    .line 218
    return-void
.end method

.method public setPrevNextListeners(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .registers 5
    .param p1, "next"    # Landroid/view/View$OnClickListener;
    .param p2, "prev"    # Landroid/view/View$OnClickListener;

    .prologue
    const/4 v1, 0x0

    .line 707
    iput-object p1, p0, mNextListener:Landroid/view/View$OnClickListener;

    .line 708
    iput-object p2, p0, mPrevListener:Landroid/view/View$OnClickListener;

    .line 709
    const/4 v0, 0x1

    iput-boolean v0, p0, mListenersSet:Z

    .line 711
    iget-object v0, p0, mRoot:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 712
    invoke-direct {p0}, installPrevNextListeners()V

    .line 714
    iget-object v0, p0, mNextButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1c

    iget-boolean v0, p0, mFromXml:Z

    if-nez v0, :cond_1c

    .line 715
    iget-object v0, p0, mNextButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 717
    :cond_1c
    iget-object v0, p0, mPrevButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_29

    iget-boolean v0, p0, mFromXml:Z

    if-nez v0, :cond_29

    .line 718
    iget-object v0, p0, mPrevButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 721
    :cond_29
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 329
    const/16 v0, 0xbb8

    invoke-virtual {p0, v0}, show(I)V

    .line 330
    return-void
.end method

.method public show(I)V
    .registers 7
    .param p1, "timeout"    # I

    .prologue
    const/4 v4, 0x1

    .line 372
    iget-boolean v1, p0, mShowing:Z

    if-nez v1, :cond_26

    iget-object v1, p0, mAnchor:Landroid/view/View;

    if-eqz v1, :cond_26

    .line 373
    invoke-direct {p0}, setProgress()I

    .line 374
    iget-object v1, p0, mPauseButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_15

    .line 375
    iget-object v1, p0, mPauseButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 377
    :cond_15
    invoke-direct {p0}, disableUnsupportedButtons()V

    .line 378
    invoke-direct {p0}, updateFloatingWindowLayout()V

    .line 379
    iget-object v1, p0, mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, mDecor:Landroid/view/View;

    iget-object v3, p0, mDecorLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iput-boolean v4, p0, mShowing:Z

    .line 382
    :cond_26
    invoke-direct {p0}, updatePausePlay()V

    .line 387
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 389
    if-eqz p1, :cond_4a

    iget-object v1, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 390
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 391
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 392
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 394
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4a
    return-void
.end method
