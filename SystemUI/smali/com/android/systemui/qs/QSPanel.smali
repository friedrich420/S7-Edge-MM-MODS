.class public Lcom/android/systemui/qs/QSPanel;
.super Landroid/widget/FrameLayout;
.source "QSPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSPanel$Callback;,
        Lcom/android/systemui/qs/QSPanel$TileRecord;,
        Lcom/android/systemui/qs/QSPanel$Record;,
        Lcom/android/systemui/qs/QSPanel$H;
    }
.end annotation


# static fields
.field private static final FIRST_TILE_VIEW_ID:I = 0x64

.field private static final TILE_ASPECT:F = 1.2f


# instance fields
.field private mBrightnessPaddingTop:I

.field private mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

.field private mCellHeight:I

.field private mCellWidth:I

.field private mClosingDetail:Z

.field private mColumns:I

.field private final mContext:Landroid/content/Context;

.field private mDefaultDisplay:Landroid/view/Display;

.field private final mDetail:Landroid/view/View;

.field private final mDetailContent:Landroid/view/ViewGroup;

.field private mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDualTileUnderlap:I

.field private mExpanded:Z

.field private mGridContentVisible:Z

.field private mGridHeight:I

.field private final mHandler:Lcom/android/systemui/qs/QSPanel$H;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsCoverMode:Z

.field private mLargeCellHeight:I

.field private mLargeCellWidth:I

.field private mLastTileViewId:I

.field private mListening:Z

.field private mMultiLine:Z

.field private mNotificationPanelWidth:I

.field private mNumColumns:I

.field private mPanelPaddingBottom:I

.field private mQuickConnectShowing:Z

.field protected final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/qs/QSPanel$TileRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSingleLineTileNum:I

.field private mTileBottomPadding:I

.field private mTileHGap:I

.field private mTileLineNum:I

.field private mTileSidePadding:I

.field private mTileVGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 135
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/QSPanel$H;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$1;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    .line 94
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 107
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 110
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLineTileNum:I

    .line 121
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mLastTileViewId:I

    .line 128
    iput-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mIsCoverMode:Z

    .line 136
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    .line 138
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004e

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    .line 139
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    .line 146
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 147
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 153
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    .line 161
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 162
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplay:Landroid/view/Display;

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 187
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "x2"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/qs/QSTile$State;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/QSPanel;ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/QSPanel;)Lcom/android/systemui/qs/QSPanel$Record;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireToggleStateChanged(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/QSPanel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/qs/QSPanel;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleSetTileVisibility(Landroid/view/View;I)V

    return-void
.end method

.method private addTile(Lcom/android/systemui/qs/QSTile;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    new-instance v4, Lcom/android/systemui/qs/QSPanel$TileRecord;

    invoke-direct {v4}, Lcom/android/systemui/qs/QSPanel$TileRecord;-><init>()V

    .line 417
    .local v4, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iput-object p1, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    .line 418
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v5

    iput-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    .line 419
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    if-nez v5, :cond_0

    .line 493
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 423
    new-instance v0, Lcom/android/systemui/qs/QSPanel$1;

    invoke-direct {v0, p0, v4}, Lcom/android/systemui/qs/QSPanel$1;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 465
    .local v0, "callback":Lcom/android/systemui/qs/QSTile$Callback;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5, v0}, Lcom/android/systemui/qs/QSTile;->setCallback(Lcom/android/systemui/qs/QSTile$Callback;)V

    .line 466
    new-instance v1, Lcom/android/systemui/qs/QSPanel$2;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/qs/QSPanel$2;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 472
    .local v1, "click":Landroid/view/View$OnClickListener;
    new-instance v2, Lcom/android/systemui/qs/QSPanel$3;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/qs/QSPanel$3;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 478
    .local v2, "clickSecondary":Landroid/view/View$OnClickListener;
    new-instance v3, Lcom/android/systemui/qs/QSPanel$4;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/QSPanel$4;-><init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/qs/QSPanel$TileRecord;)V

    .line 485
    .local v3, "longClick":Landroid/view/View$OnLongClickListener;
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5, v1, v2, v3}, Lcom/android/systemui/qs/QSTileView;->init(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 486
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mLastTileViewId:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/qs/QSPanel;->mLastTileViewId:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileView;->setId(I)V

    .line 487
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v6, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    .line 488
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v5

    invoke-interface {v0, v5}, Lcom/android/systemui/qs/QSTile$Callback;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 489
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    .line 490
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    iget-object v5, v4, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSPanel;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private drawTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Lcom/android/systemui/qs/QSTile$State;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "state"    # Lcom/android/systemui/qs/QSTile$State;

    .prologue
    .line 410
    iget-boolean v1, p2, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 411
    .local v0, "visibility":I
    :goto_0
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/qs/QSPanel;->setTileVisibility(Landroid/view/View;I)V

    .line 412
    iget-object v1, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v1, p2}, Lcom/android/systemui/qs/QSTileView;->onStateChanged(Lcom/android/systemui/qs/QSTile$State;)V

    .line 413
    return-void

    .line 410
    .end local v0    # "visibility":I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private static exactly(I)I
    .locals 1
    .param p0, "size"    # I

    .prologue
    .line 716
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    return v0
.end method

.method private fireScanStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onScanStateChanged(Z)V

    .line 829
    :cond_0
    return-void
.end method

.method private fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 1
    .param p1, "detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 817
    :cond_0
    return-void
.end method

.method private fireToggleStateChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 820
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    invoke-interface {v0, p1}, Lcom/android/systemui/qs/QSPanel$Callback;->onToggleStateChanged(Z)V

    .line 823
    :cond_0
    return-void
.end method

.method private getColumnCount(I)I
    .locals 5
    .param p1, "row"    # I

    .prologue
    .line 778
    const/4 v0, 0x0

    .line 779
    .local v0, "cols":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 780
    .local v2, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 781
    iget v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    if-ne v3, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 783
    .end local v2    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return v0
.end method

.method private getRowTop(I)I
    .locals 2
    .param p1, "row"    # I

    .prologue
    .line 773
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileVGap:I

    add-int/2addr v0, v1

    mul-int/2addr v0, p1

    return v0
.end method

.method private handleSetTileVisibility(Landroid/view/View;I)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 388
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    if-nez v0, :cond_0

    .line 389
    const/4 p2, 0x4

    .line 391
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne p2, v0, :cond_1

    .line 393
    :goto_0
    return-void

    .line 392
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private handleShowDetail(Lcom/android/systemui/qs/QSPanel$Record;Z)V
    .locals 3
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z

    .prologue
    .line 513
    instance-of v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v2, :cond_0

    .line 514
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V

    .line 524
    :goto_0
    return-void

    .line 516
    .restart local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_0
    const/4 v0, 0x0

    .line 517
    .local v0, "x":I
    const/4 v1, 0x0

    .line 518
    .local v1, "y":I
    if-eqz p1, :cond_1

    .line 519
    iget v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 520
    iget v1, p1, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 522
    :cond_1
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_0
.end method

.method private handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V
    .locals 10
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;
    .param p2, "show"    # Z
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 540
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    if-eq v2, p2, :cond_2

    move v1, v4

    .line 541
    .local v1, "visibleDiff":Z
    :goto_1
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne v2, p1, :cond_3

    .line 602
    .end local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_0
    :goto_2
    return-void

    .end local v1    # "visibleDiff":Z
    .restart local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_1
    move v2, v5

    .line 540
    goto :goto_0

    :cond_2
    move v1, v5

    goto :goto_1

    .line 542
    .restart local v1    # "visibleDiff":Z
    :cond_3
    const/4 v0, 0x0

    .line 544
    .local v0, "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    if-eqz p2, :cond_6

    .line 545
    iget-object v0, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 546
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v6, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-interface {v0, v2, v6, v7}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    .line 547
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    if-nez v2, :cond_4

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Must return detail view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 560
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 561
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 562
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    iget-object v6, p1, Lcom/android/systemui/qs/QSPanel$Record;->detailView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 563
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getMetricsCategory()I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 564
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const v6, 0x7f0d0398

    new-array v7, v4, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getTitle()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-virtual {v2, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 567
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 569
    instance-of v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    move-object v2, p1

    .line 570
    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iput-boolean v4, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->openingDetail:Z

    .line 581
    :cond_5
    :goto_3
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSPanel;->sendAccessibilityEvent(I)V

    .line 582
    if-eqz p2, :cond_8

    .end local v0    # "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V

    .line 588
    if-eqz p2, :cond_9

    .line 589
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 590
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 592
    instance-of v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v2, :cond_0

    .line 593
    check-cast p1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .end local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    iput-boolean v5, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->openingDetail:Z

    goto :goto_2

    .line 573
    .restart local v0    # "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .restart local p1    # "r":Lcom/android/systemui/qs/QSPanel$Record;
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v2, :cond_7

    .line 574
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    iget-object v6, v6, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v6}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->getMetricsCategory()I

    move-result v6

    invoke-static {v2, v6}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 577
    :cond_7
    invoke-direct {p0, v4}, Lcom/android/systemui/qs/QSPanel;->setGridContentVisibility(Z)V

    .line 579
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_3

    :cond_8
    move-object v0, v3

    .line 582
    goto :goto_4

    .line 597
    .end local v0    # "detailAdapter":Lcom/android/systemui/qs/QSTile$DetailAdapter;
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 598
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailContent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 599
    invoke-direct {p0, v3}, Lcom/android/systemui/qs/QSPanel;->setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V

    .line 600
    iput-boolean v5, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    goto/16 :goto_2
.end method

.method private handleShowDetailTile(Lcom/android/systemui/qs/QSPanel$TileRecord;Z)V
    .locals 4
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$TileRecord;
    .param p2, "show"    # Z

    .prologue
    .line 527
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    if-ne v2, p2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne v2, p1, :cond_2

    .line 537
    :cond_0
    :goto_1
    return-void

    .line 527
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 529
    :cond_2
    if-eqz p2, :cond_3

    .line 530
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;

    move-result-object v2

    iput-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 531
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    if-eqz v2, :cond_0

    .line 533
    :cond_3
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2, p2}, Lcom/android/systemui/qs/QSTile;->setDetailListening(Z)V

    .line 534
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileView;->getLeft()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    .line 535
    .local v0, "x":I
    iget-object v2, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTileView;->getTop()I

    move-result v2

    iget-object v3, p1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    .line 536
    .local v1, "y":I
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/systemui/qs/QSPanel;->handleShowDetailImpl(Lcom/android/systemui/qs/QSPanel$Record;ZII)V

    goto :goto_1
.end method

.method private logTiles()V
    .locals 4

    .prologue
    .line 622
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 623
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 624
    .local v1, "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->getState()Lcom/android/systemui/qs/QSTile$State;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    if-eqz v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTile;->getMetricsCategory()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/logging/MetricsLogger;->visible(Landroid/content/Context;I)V

    .line 622
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    .end local v1    # "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    return-void
.end method

.method private setDetailRecord(Lcom/android/systemui/qs/QSPanel$Record;)V
    .locals 2
    .param p1, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-ne p1, v1, :cond_0

    .line 837
    :goto_0
    return-void

    .line 833
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    .line 834
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    instance-of v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-boolean v1, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->scanState:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 836
    .local v0, "scanState":Z
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/qs/QSPanel;->fireScanStateChanged(Z)V

    goto :goto_0

    .line 834
    .end local v0    # "scanState":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setGridContentVisibility(Z)V
    .locals 5
    .param p1, "visible"    # Z

    .prologue
    .line 605
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 606
    .local v1, "newVis":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 607
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 608
    .local v2, "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    .line 609
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 606
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 605
    .end local v0    # "i":I
    .end local v1    # "newVis":I
    .end local v2    # "tileRecord":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_1
    const/4 v1, 0x4

    goto :goto_0

    .line 615
    .restart local v0    # "i":I
    .restart local v1    # "newVis":I
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    if-eq v3, p1, :cond_3

    .line 616
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const/16 v4, 0x6f

    invoke-static {v3, v4, v1}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;II)V

    .line 618
    :cond_3
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mGridContentVisible:Z

    .line 619
    return-void
.end method

.method private setTileVisibility(Landroid/view/View;I)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 384
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 385
    return-void
.end method

.method private showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V
    .locals 4
    .param p1, "show"    # Z
    .param p2, "r"    # Lcom/android/systemui/qs/QSPanel$Record;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 380
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mHandler:Lcom/android/systemui/qs/QSPanel$H;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v1, v0, v2, p2}, Lcom/android/systemui/qs/QSPanel$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 381
    return-void

    :cond_0
    move v0, v2

    .line 380
    goto :goto_0
.end method


# virtual methods
.method public IsTileViewInFirstRow(I)Z
    .locals 5
    .param p1, "tileViewId"    # I

    .prologue
    .line 798
    const/4 v1, 0x0

    .line 799
    .local v1, "isFristRow":Z
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 800
    .local v2, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getId()I

    move-result v0

    .line 802
    .local v0, "firstTileId":I
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/2addr v3, v0

    if-ge p1, v3, :cond_0

    .line 803
    const/4 v1, 0x1

    .line 805
    :cond_0
    return v1
.end method

.method public IsTileViewInLastRow(I)Z
    .locals 5
    .param p1, "tileViewId"    # I

    .prologue
    .line 787
    const/4 v1, 0x0

    .line 788
    .local v1, "isLastRow":Z
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 789
    .local v2, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v2, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSTileView;->getId()I

    move-result v0

    .line 791
    .local v0, "firstTileId":I
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileLineNum:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v0

    if-lt p1, v3, :cond_0

    .line 792
    const/4 v1, 0x1

    .line 794
    :cond_0
    return v1
.end method

.method public clearAllTiles()V
    .locals 3

    .prologue
    .line 352
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 353
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->clearState()V

    goto :goto_0

    .line 355
    .end local v1    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method public closeDetail()V
    .locals 2

    .prologue
    .line 500
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    .line 501
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 502
    return-void
.end method

.method public getGridHeight()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mGridHeight:I

    return v0
.end method

.method public getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method public getLastTileViewId()I
    .locals 3

    .prologue
    .line 809
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 810
    .local v0, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v1, v0, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSTileView;->getId()I

    move-result v1

    return v1
.end method

.method public getMultiTileLineHeight()I
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "maxMultiTileLineNum":I
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c011d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileBottomPadding:I

    .line 975
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    div-int v3, v1, v3

    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    add-int/2addr v1, v3

    const/4 v3, 0x2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 976
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isSupportMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 979
    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 980
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileBottomPadding:I

    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c011f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mTileBottomPadding:I

    .line 982
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 983
    iget v1, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileVGap:I

    add-int/2addr v1, v2

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mTileBottomPadding:I

    add-int/2addr v2, v1

    .line 985
    :cond_1
    return v2

    .line 975
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSingleTileLineHeight()I
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 960
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    .line 963
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosingDetail()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mClosingDetail:Z

    return v0
.end method

.method public isMultiLine()Z
    .locals 1

    .prologue
    .line 953
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mMultiLine:Z

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mDetailRecord:Lcom/android/systemui/qs/QSPanel$Record;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 282
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 291
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 292
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 293
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    iget-object v1, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->detailView:Landroid/view/View;

    .line 294
    .local v1, "detailView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 292
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v1    # "detailView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 721
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v9

    .line 727
    .local v9, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getLayoutDirection()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v3, 0x1

    .line 728
    .local v3, "isRtl":Z
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 729
    .local v5, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v10, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTileView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_0

    .line 734
    iget v0, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 738
    .local v0, "cw":I
    iget v10, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mTileHGap:I

    add-int/2addr v11, v0

    mul-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    add-int v4, v10, v11

    .line 741
    .local v4, "left":I
    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mTileHGap:I

    if-gez v10, :cond_1

    .line 742
    iget v10, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    sub-int/2addr v4, v10

    .line 745
    :cond_1
    iget v10, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    invoke-direct {p0, v10}, Lcom/android/systemui/qs/QSPanel;->getRowTop(I)I

    move-result v8

    .line 747
    .local v8, "top":I
    iget-object v10, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v10}, Lcom/android/systemui/qs/QSTileView;->getMeasuredWidth()I

    move-result v7

    .line 748
    .local v7, "tileWith":I
    if-eqz v3, :cond_3

    .line 749
    sub-int v6, v9, v4

    .line 750
    .local v6, "right":I
    sub-int v4, v6, v7

    .line 754
    :goto_2
    iget-object v10, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget-object v11, v5, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v11}, Lcom/android/systemui/qs/QSTileView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v8

    invoke-virtual {v10, v4, v8, v6, v11}, Lcom/android/systemui/qs/QSTileView;->layout(IIII)V

    goto :goto_1

    .line 727
    .end local v0    # "cw":I
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "isRtl":Z
    .end local v4    # "left":I
    .end local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v6    # "right":I
    .end local v7    # "tileWith":I
    .end local v8    # "top":I
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 752
    .restart local v0    # "cw":I
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "isRtl":Z
    .restart local v4    # "left":I
    .restart local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .restart local v7    # "tileWith":I
    .restart local v8    # "top":I
    :cond_3
    add-int v6, v4, v7

    .restart local v6    # "right":I
    goto :goto_2

    .line 756
    .end local v0    # "cw":I
    .end local v4    # "left":I
    .end local v5    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    .end local v6    # "right":I
    .end local v7    # "tileWith":I
    .end local v8    # "top":I
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 757
    .local v1, "dh":I
    iget-object v10, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    invoke-virtual {v10, v11, v12, v13, v1}, Landroid/view/View;->layout(IIII)V

    .line 766
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 686
    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mTileHGap:I

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v6, v6, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 687
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-static {v3}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->measure(II)V

    .line 688
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 689
    .local v1, "h":I
    iput v1, p0, Lcom/android/systemui/qs/QSPanel;->mGridHeight:I

    .line 711
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v1}, Lcom/android/systemui/qs/QSPanel;->setMeasuredDimension(II)V

    .line 713
    return-void

    .line 693
    .end local v1    # "h":I
    .end local v3    # "w":I
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mMultiLine:Z

    invoke-virtual {p0, v4}, Lcom/android/systemui/qs/QSPanel;->setQsTileLine(Z)I

    .line 695
    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLineNum:I

    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mTileLineNum:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mTileVGap:I

    mul-int/2addr v5, v6

    add-int v1, v4, v5

    .line 699
    .restart local v1    # "h":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sysui_qs_active_tiles"

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLineTileNum:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 700
    .local v0, "actualTiles":I
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mMultiLine:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    :goto_1
    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 703
    .local v2, "mTileNum":I
    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    mul-int/2addr v4, v2

    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mTileHGap:I

    add-int/lit8 v6, v2, -0x1

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    mul-int/lit8 v5, v5, 0x2

    add-int v3, v4, v5

    .line 706
    .restart local v3    # "w":I
    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileHGap:I

    if-gez v4, :cond_0

    .line 707
    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    mul-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    goto :goto_0

    .line 700
    .end local v2    # "mTileNum":I
    .end local v3    # "w":I
    :cond_2
    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLineTileNum:I

    goto :goto_1
.end method

.method public refreshAllTiles()V
    .locals 3

    .prologue
    .line 342
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 343
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSTile;->refreshState()V

    goto :goto_0

    .line 349
    .end local v1    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method

.method public setBrightnessMirror(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V
    .locals 4
    .param p1, "c"    # Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;

    .prologue
    const v3, 0x7f0e01be

    .line 197
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 198
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/settings/ToggleSlider;

    .line 199
    .local v0, "brightnessSlider":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;->getMirror()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSlider;

    .line 200
    .local v1, "mirror":Lcom/android/systemui/settings/ToggleSlider;
    invoke-virtual {v0, v1}, Lcom/android/systemui/settings/ToggleSlider;->setMirror(Lcom/android/systemui/settings/ToggleSlider;)V

    .line 201
    invoke-virtual {v0, p1}, Lcom/android/systemui/settings/ToggleSlider;->setMirrorController(Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;)V

    .line 202
    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/systemui/qs/QSPanel$Callback;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mCallback:Lcom/android/systemui/qs/QSPanel$Callback;

    .line 206
    return-void
.end method

.method public setExpanded(Z)V
    .locals 3
    .param p1, "expanded"    # Z

    .prologue
    .line 305
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    if-ne v0, p1, :cond_0

    .line 317
    :goto_0
    return-void

    .line 306
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    .line 307
    iget-object v0, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    const/16 v1, 0x6f

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mExpanded:Z

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->visibility(Landroid/content/Context;IZ)V

    .line 315
    invoke-direct {p0}, Lcom/android/systemui/qs/QSPanel;->logTiles()V

    goto :goto_0
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 0
    .param p1, "host"    # Lcom/android/systemui/statusbar/phone/QSTileHost;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    .line 214
    return-void
.end method

.method public setListening(Z)V
    .locals 4
    .param p1, "listening"    # Z

    .prologue
    .line 320
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-ne v2, p1, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    .line 322
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 323
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    iget-boolean v3, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSTile;->setListening(Z)V

    goto :goto_1

    .line 330
    .end local v1    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v2, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    goto :goto_0
.end method

.method public setNotificationPanelWidth(I)V
    .locals 3
    .param p1, "notificationPanelWidth"    # I

    .prologue
    .line 1010
    iput p1, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    .line 1012
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c02df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c02e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    .line 1015
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mIsCoverMode:Z

    .line 1018
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->updateResources()V

    .line 1019
    return-void

    .line 1016
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSPanel;->mIsCoverMode:Z

    goto :goto_0
.end method

.method public setQsTileLine(Z)I
    .locals 8
    .param p1, "multiLine"    # Z

    .prologue
    const/4 v4, 0x0

    .line 911
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 947
    :cond_0
    :goto_0
    return v4

    .line 915
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mMultiLine:Z

    .line 917
    const/4 v2, -0x1

    .line 918
    .local v2, "r":I
    const/4 v0, -0x1

    .line 919
    .local v0, "c":I
    iput v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLineNum:I

    .line 920
    iget-object v5, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 921
    .local v3, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v5, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSTileView;->setDual(Z)Z

    .line 922
    iget-boolean v5, p0, Lcom/android/systemui/qs/QSPanel;->mMultiLine:Z

    if-nez v5, :cond_3

    .line 923
    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mSingleLineTileNum:I

    add-int/lit8 v5, v5, -0x1

    if-ge v0, v5, :cond_2

    .line 924
    iget-object v5, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 925
    iget-object v5, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-static {v6}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    invoke-static {v7}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/qs/QSTileView;->measure(II)V

    .line 929
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 930
    iput v4, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 931
    iput v0, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    goto :goto_1

    .line 927
    :cond_2
    iget-object v5, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    goto :goto_2

    .line 933
    :cond_3
    const/4 v5, -0x1

    if-eq v2, v5, :cond_4

    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    add-int/lit8 v5, v5, -0x1

    if-ne v0, v5, :cond_5

    .line 934
    :cond_4
    add-int/lit8 v2, v2, 0x1

    .line 935
    const/4 v0, 0x0

    .line 939
    :goto_3
    iget-object v5, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/qs/QSTileView;->setVisibility(I)V

    .line 940
    iget-object v5, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    iget v6, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    invoke-static {v6}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v6

    iget v7, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    invoke-static {v7}, Lcom/android/systemui/qs/QSPanel;->exactly(I)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/qs/QSTileView;->measure(II)V

    .line 941
    iput v2, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->row:I

    .line 942
    iput v0, v3, Lcom/android/systemui/qs/QSPanel$TileRecord;->col:I

    goto :goto_1

    .line 937
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 945
    .end local v3    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/qs/QSPanel;->mMultiLine:Z

    if-eqz v4, :cond_7

    add-int/lit8 v4, v2, 0x1

    :goto_4
    iput v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLineNum:I

    .line 947
    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileLineNum:I

    iget v5, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    mul-int/2addr v4, v5

    goto/16 :goto_0

    .line 945
    :cond_7
    const/4 v4, 0x1

    goto :goto_4
.end method

.method public setQuickConnectShowing(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 991
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSPanel;->mQuickConnectShowing:Z

    .line 992
    return-void
.end method

.method public setTiles(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/systemui/qs/QSTile",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 396
    .local p1, "tiles":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/systemui/qs/QSTile<*>;>;"
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 397
    .local v1, "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v3, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tileView:Lcom/android/systemui/qs/QSTileView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 399
    .end local v1    # "record":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 400
    const/16 v3, 0x64

    iput v3, p0, Lcom/android/systemui/qs/QSPanel;->mLastTileViewId:I

    .line 401
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/qs/QSTile;

    .line 402
    .local v2, "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/QSPanel;->addTile(Lcom/android/systemui/qs/QSTile;)V

    goto :goto_1

    .line 404
    .end local v2    # "tile":Lcom/android/systemui/qs/QSTile;, "Lcom/android/systemui/qs/QSTile<*>;"
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->isShowingDetail()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 405
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 407
    :cond_2
    return-void
.end method

.method public showDetailAdapter(ZLcom/android/systemui/qs/QSTile$DetailAdapter;[I)V
    .locals 6
    .param p1, "show"    # Z
    .param p2, "adapter"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .param p3, "locationInWindow"    # [I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 364
    aget v1, p3, v4

    .line 365
    .local v1, "xInWindow":I
    aget v2, p3, v5

    .line 366
    .local v2, "yInWindow":I
    iget-object v3, p0, Lcom/android/systemui/qs/QSPanel;->mDetail:Landroid/view/View;

    invoke-virtual {v3, p3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 368
    new-instance v0, Lcom/android/systemui/qs/QSPanel$Record;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/systemui/qs/QSPanel$Record;-><init>(Lcom/android/systemui/qs/QSPanel$1;)V

    .line 369
    .local v0, "r":Lcom/android/systemui/qs/QSPanel$Record;
    iput-object p2, v0, Lcom/android/systemui/qs/QSPanel$Record;->detailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .line 370
    aget v3, p3, v4

    sub-int v3, v1, v3

    iput v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->x:I

    .line 371
    aget v3, p3, v5

    sub-int v3, v2, v3

    iput v3, v0, Lcom/android/systemui/qs/QSPanel$Record;->y:I

    .line 373
    aput v1, p3, v4

    .line 374
    aput v2, p3, v5

    .line 376
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/qs/QSPanel;->showDetail(ZLcom/android/systemui/qs/QSPanel$Record;)V

    .line 377
    return-void
.end method

.method public updatePivot(II)V
    .locals 5
    .param p1, "scrollX"    # I
    .param p2, "parentWidth"    # I

    .prologue
    .line 995
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getMeasuredWidth()I

    move-result v2

    .line 996
    .local v2, "width":I
    const/4 v1, 0x0

    .line 998
    .local v1, "pivotX":I
    add-int v3, p1, p2

    sub-int v3, v2, v3

    if-ge p1, v3, :cond_0

    const/4 v0, 0x1

    .line 1000
    .local v0, "firstPage":Z
    :goto_0
    if-nez v0, :cond_1

    .line 1001
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    sub-int v1, v2, v3

    .line 1005
    :goto_1
    int-to-float v3, v1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSPanel;->setPivotX(F)V

    .line 1006
    return-void

    .line 998
    .end local v0    # "firstPage":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1003
    .restart local v0    # "firstPage":Z
    :cond_1
    iget v3, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    goto :goto_1
.end method

.method public updateResources()V
    .locals 12

    .prologue
    const v11, 0x7f0f0013

    const/4 v10, -0x1

    const/4 v9, -0x2

    .line 221
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 222
    .local v5, "res":Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 223
    .local v1, "conf":Landroid/content/res/Configuration;
    const/4 v7, 0x1

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 225
    .local v0, "columns":I
    const v7, 0x7f0c0108

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mCellHeight:I

    .line 227
    const v7, 0x7f0c0109

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    .line 230
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isMobileKeyboardConnected(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x7f0c011e

    :goto_0
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mTileVGap:I

    .line 232
    const v7, 0x7f0c0101

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 233
    .local v2, "displayWidth":I
    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 234
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 235
    if-ne v2, v10, :cond_0

    .line 236
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 238
    :cond_0
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 239
    .local v3, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v7, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    sub-int v7, v2, v7

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v6, v7, v8

    .line 240
    .local v6, "width":I
    iget-boolean v7, p0, Lcom/android/systemui/qs/QSPanel;->mIsCoverMode:Z

    if-eqz v7, :cond_6

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0014

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mNumColumns:I

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c011a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    .line 243
    iget v4, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    .line 244
    .local v4, "padding":I
    iget v2, p0, Lcom/android/systemui/qs/QSPanel;->mNotificationPanelWidth:I

    .line 245
    if-ne v2, v10, :cond_5

    .line 246
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mDefaultDisplay:Landroid/view/Display;

    iget-object v8, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 247
    iget-object v7, p0, Lcom/android/systemui/qs/QSPanel;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 251
    :cond_1
    :goto_1
    iget v7, p0, Lcom/android/systemui/qs/QSPanel;->mNumColumns:I

    iget v8, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    mul-int/2addr v7, v8

    sub-int v7, v2, v7

    mul-int/lit8 v8, v4, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/QSPanel;->mNumColumns:I

    add-int/lit8 v8, v8, -0x1

    div-int/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mTileHGap:I

    .line 259
    .end local v4    # "padding":I
    :goto_2
    const v7, 0x7f0c010f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellHeight:I

    .line 260
    iget v7, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellHeight:I

    int-to-float v7, v7

    const v8, 0x3f99999a    # 1.2f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mLargeCellWidth:I

    .line 261
    const v7, 0x7f0c0117

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mPanelPaddingBottom:I

    .line 262
    const v7, 0x7f0c0110

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mDualTileUnderlap:I

    .line 263
    const v7, 0x7f0c0121

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mBrightnessPaddingTop:I

    .line 264
    iget v7, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    if-eq v7, v0, :cond_2

    .line 265
    iput v0, p0, Lcom/android/systemui/qs/QSPanel;->mColumns:I

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->postInvalidate()V

    .line 272
    :cond_2
    iget-boolean v7, p0, Lcom/android/systemui/qs/QSPanel;->mListening:Z

    if-eqz v7, :cond_3

    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->refreshAllTiles()V

    .line 278
    :cond_3
    return-void

    .line 230
    .end local v2    # "displayWidth":I
    .end local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v6    # "width":I
    :cond_4
    const v7, 0x7f0c011b

    goto/16 :goto_0

    .line 248
    .restart local v2    # "displayWidth":I
    .restart local v3    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v4    # "padding":I
    .restart local v6    # "width":I
    :cond_5
    iget v7, p0, Lcom/android/systemui/qs/QSPanel;->mNumColumns:I

    iget v8, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    mul-int/2addr v7, v8

    if-ge v2, v7, :cond_1

    .line 249
    const/4 v4, 0x0

    goto :goto_1

    .line 253
    .end local v4    # "padding":I
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mNumColumns:I

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0119

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    .line 255
    iget v7, p0, Lcom/android/systemui/qs/QSPanel;->mNumColumns:I

    iget v8, p0, Lcom/android/systemui/qs/QSPanel;->mCellWidth:I

    mul-int/2addr v7, v8

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/systemui/qs/QSPanel;->mTileSidePadding:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/qs/QSPanel;->mNumColumns:I

    add-int/lit8 v8, v8, -0x1

    div-int/2addr v7, v8

    iput v7, p0, Lcom/android/systemui/qs/QSPanel;->mTileHGap:I

    goto :goto_2
.end method

.method public userSwitch(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 358
    iget-object v2, p0, Lcom/android/systemui/qs/QSPanel;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QSPanel$TileRecord;

    .line 359
    .local v1, "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    iget-object v2, v1, Lcom/android/systemui/qs/QSPanel$TileRecord;->tile:Lcom/android/systemui/qs/QSTile;

    invoke-virtual {v2, p1}, Lcom/android/systemui/qs/QSTile;->userSwitch(I)V

    goto :goto_0

    .line 361
    .end local v1    # "r":Lcom/android/systemui/qs/QSPanel$TileRecord;
    :cond_0
    return-void
.end method
