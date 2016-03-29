.class public Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;
.super Landroid/widget/FrameLayout;
.source "MiniViewCoverMusicPlayerPage.java"


# instance fields
.field private mKidsMusicPlayerAvailable:Z

.field private mMiniKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mMiniMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

.field private mMiniVolumeWarningContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

.field private mMusicPlayerAvailable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMusicPlayerAvailable:Z

    .line 24
    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mKidsMusicPlayerAvailable:Z

    .line 28
    invoke-direct {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->setupChildViews()V

    .line 29
    return-void
.end method

.method private setupChildViews()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 42
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mContext:Landroid/content/Context;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->mini_view_cover_music_player_page:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 43
    .local v0, "mainPage":Landroid/view/View;
    invoke-virtual {p0, v0, v5, v5}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->addView(Landroid/view/View;II)V

    .line 45
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_music_player_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMiniMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 46
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMiniMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "music_controller"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 48
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_kids_music_player_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMiniKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 49
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMiniKidsMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "kids_music_controller"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 51
    sget v1, Lcom/sec/android/sviewcover/R$id;->mini_clear_sound_warning_contatiner:I

    invoke-virtual {p0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/widget/RemoteViewContainerView;

    iput-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMiniVolumeWarningContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    .line 52
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMiniVolumeWarningContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    const-string v2, "volume"

    invoke-virtual {v1, v2, v4}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->init(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {p0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->updateMusicPlayerView()V

    .line 55
    return-void
.end method


# virtual methods
.method public getMusicPlayerState()Z
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMusicPlayerAvailable:Z

    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mKidsMusicPlayerAvailable:Z

    or-int/2addr v0, v1

    return v0
.end method

.method public removeMusicRemoteView()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMusicPlayerAvailable:Z

    .line 78
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMiniMusicPlayerContainer:Lcom/sec/android/cover/widget/RemoteViewContainerView;

    invoke-virtual {v0}, Lcom/sec/android/cover/widget/RemoteViewContainerView;->removeRemoteView()V

    .line 79
    return-void
.end method

.method public setMiniCoverView(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0
    .param p1, "view"    # Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMiniViewCoverMainFrameView:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    .line 83
    return-void
.end method

.method public updateMusicPlayerView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverRemoteViewManager;

    move-result-object v0

    .line 59
    .local v0, "mgr":Lcom/sec/android/cover/manager/CoverRemoteViewManager;
    const-string v1, "music_controller"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMusicPlayerAvailable:Z

    .line 61
    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/CoverUtils;->isKidsMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const-string v1, "kids_music_controller"

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/manager/CoverRemoteViewManager;->isRemoteViewAvailable(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mKidsMusicPlayerAvailable:Z

    .line 67
    :goto_0
    iget-boolean v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mKidsMusicPlayerAvailable:Z

    if-eqz v1, :cond_0

    .line 68
    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mMusicPlayerAvailable:Z

    .line 70
    :cond_0
    return-void

    .line 64
    :cond_1
    iput-boolean v2, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMusicPlayerPage;->mKidsMusicPlayerAvailable:Z

    goto :goto_0
.end method
