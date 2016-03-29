.class public Lcom/android/systemui/recents/views/RecentsView;
.super Landroid/widget/FrameLayout;
.source "RecentsView.java"

# interfaces
.implements Lcom/android/systemui/recents/model/RecentsPackageMonitor$PackageCallbacks;
.implements Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;,
        Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;
    }
.end annotation


# instance fields
.field closeAllContainer:Landroid/view/View;

.field private launchIntent:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

.field mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

.field private mFinishActivity:Z

.field mH:Landroid/os/Handler;

.field mInflater:Landroid/view/LayoutInflater;

.field mLaunchTaskViewX:I

.field mLaunchTaskViewY:I

.field mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

.field mRecentsBottomContainer:Landroid/view/ViewGroup;

.field mRecentsButtonClickListener:Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

.field mRecentsButtonContainer:Landroid/view/ViewGroup;

.field mRecentsRemoveAllButton:Landroid/view/View;

.field mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

.field mStacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;"
        }
    .end annotation
.end field

.field mTaskStackViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            ">;"
        }
    .end annotation
.end field

.field shortcutComponentNames:[Ljava/lang/String;

.field shortcutContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    .line 361
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    .line 1297
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 183
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/RecentsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 187
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    .line 361
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    .line 1297
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/recents/views/RecentsView$4;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    .line 193
    invoke-static {}, Lcom/android/systemui/recents/RecentsConfiguration;->getInstance()Lcom/android/systemui/recents/RecentsConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 195
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    .line 196
    new-instance v0, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;-><init>(Lcom/android/systemui/recents/RecentsConfiguration;)V

    iput-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    .line 197
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/RecentsView;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recents/views/RecentsView;Landroid/content/Intent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/systemui/recents/views/RecentsView;->executeApplication(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recents/views/RecentsView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;
    .param p1, "x1"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "x2"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/recents/views/RecentsView;->insertLogPair(Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/recents/views/RecentsView;)Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recents/views/RecentsView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/RecentsView;

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    return v0
.end method

.method private executeApplication(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 614
    const/4 v1, 0x0

    .line 615
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-nez p1, :cond_0

    .line 632
    :goto_0
    return v2

    .line 617
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 623
    if-eqz v1, :cond_1

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_1

    .line 624
    const v3, 0x10004000

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 626
    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Landroid/os/UserHandle;

    const/4 v6, -0x2

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, p1, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 632
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 619
    :catch_0
    move-exception v0

    .line 620
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RecentsView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 627
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 628
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "RecentsView"

    const-string v4, "Activity Not Found"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private insertLogPair(Lcom/android/systemui/recents/model/Task;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 7
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1813
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    if-nez v2, :cond_1

    .line 1831
    :cond_0
    :goto_0
    return-void

    .line 1816
    :cond_1
    invoke-virtual {p2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getZone()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 1817
    new-array v1, v6, [Ljava/lang/String;

    .line 1818
    .local v1, "features":[Ljava/lang/String;
    new-array v0, v6, [Ljava/lang/String;

    .line 1820
    .local v0, "extras":[Ljava/lang/String;
    const-string v2, "PAIR"

    aput-object v2, v1, v4

    .line 1821
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getSelectedAppPackageInfo()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 1824
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    iget-boolean v2, v2, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->mIsStartedFromRecentKeyLongPress:Z

    if-nez v2, :cond_2

    .line 1825
    const-string v2, "RCSV"

    aput-object v2, v1, v5

    .line 1826
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    aput-object v2, v0, v5

    .line 1829
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    const/4 v3, 0x0

    invoke-static {v2, v1, v0, v3}, Lcom/samsung/android/multiwindow/MultiWindowLoggingHelper;->insertMultipleStatusLog(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;[J)V

    goto :goto_0
.end method

.method private isEnabledApplication(Landroid/content/Intent;)Z
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 522
    const/4 v1, 0x0

    .line 524
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 529
    :goto_0
    if-eqz v1, :cond_0

    iget-boolean v3, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 530
    :cond_0
    return v2

    .line 526
    :catch_0
    move-exception v0

    .line 527
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "RecentsView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private postDrawHeaderThumbnailTransitionRunnable(Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)V
    .locals 9
    .param p1, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p2, "offsetX"    # I
    .param p3, "offsetY"    # I
    .param p4, "transform"    # Lcom/android/systemui/recents/views/TaskViewTransform;
    .param p5, "animStartedListener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .param p6, "transitStartedListener"    # Landroid/app/ActivityOptions$OnTransitionStartedListener;

    .prologue
    .line 1213
    const/4 v1, 0x2

    new-array v8, v1, [I

    .line 1214
    .local v8, "pts":[I
    invoke-virtual {p1, v8}, Lcom/android/systemui/recents/views/TaskView;->getLocationOnScreen([I)V

    .line 1215
    const/4 v1, 0x0

    aget v1, v8, v1

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mLaunchTaskViewX:I

    .line 1216
    const/4 v1, 0x1

    aget v1, v8, v1

    iput v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mLaunchTaskViewY:I

    .line 1218
    new-instance v0, Lcom/android/systemui/recents/views/RecentsView$3;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsView$3;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)V

    .line 1287
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v1, v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->runAfterPause(Ljava/lang/Runnable;)V

    .line 1288
    return-void
.end method

.method private sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "feature"    # Ljava/lang/String;
    .param p2, "extra"    # Ljava/lang/String;

    .prologue
    .line 1835
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1836
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "app_id"

    const-string v3, "com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1837
    const-string v2, "feature"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    if-eqz p2, :cond_0

    .line 1839
    const-string v2, "extra"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1841
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1843
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.providers.context.log.action.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1844
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1846
    const-string v2, "com.samsung.android.providers.context"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1848
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1849
    return-void
.end method

.method private updateRecentsButtonsLayout()V
    .locals 11

    .prologue
    const v10, 0x7f0e01dd

    const/16 v9, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    const v6, 0x7f0e01db

    .line 363
    sget-boolean v4, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v4, :cond_1

    .line 405
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 365
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 367
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v4, :cond_3

    .line 368
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 374
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    invoke-virtual {v4, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 375
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 376
    .local v2, "taskManagerButton":Landroid/view/View;
    invoke-virtual {v2, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 378
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 379
    .local v3, "taskManagerIntent":Landroid/content/Intent;
    const-string v4, "com.sec.android.app.taskmanager"

    const-string v5, "com.sec.android.app.taskmanager.activity.TaskManagerActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/RecentsView;->isEnabledApplication(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 382
    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 383
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 394
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->remove(I)V

    .line 395
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    const v5, 0x7f0e01de

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 396
    .local v0, "divider":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 398
    .local v1, "googleButton":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 399
    if-eqz v1, :cond_0

    .line 401
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 402
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 403
    invoke-virtual {v1, v7}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 370
    .end local v0    # "divider":Landroid/view/View;
    .end local v1    # "googleButton":Landroid/view/View;
    .end local v2    # "taskManagerButton":Landroid/view/View;
    .end local v3    # "taskManagerIntent":Landroid/content/Intent;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1

    .line 385
    .restart local v2    # "taskManagerButton":Landroid/view/View;
    .restart local v3    # "taskManagerIntent":Landroid/content/Intent;
    :cond_4
    const-string v4, "com.sec.android.app.controlpanel"

    const-string v5, "com.sec.android.app.controlpanel.activity.JobManagerActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 387
    invoke-direct {p0, v3}, Lcom/android/systemui/recents/views/RecentsView;->isEnabledApplication(Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 388
    invoke-virtual {v2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 389
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->launchIntent:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2
.end method

.method private updateShortcutLayout()V
    .locals 15

    .prologue
    const/16 v14, 0x5a

    const/4 v13, 0x0

    .line 261
    sget-boolean v10, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-nez v10, :cond_1

    .line 328
    :cond_0
    return-void

    .line 262
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    if-eqz v10, :cond_0

    .line 264
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const v11, 0x7f0e01d9

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    .line 265
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 267
    .local v6, "packageManager":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Framework_ShortCutListInRecentApp"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "shortcutAppList":Ljava/lang/String;
    const-string v10, ","

    invoke-static {v10}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    .line 270
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    array-length v10, v10

    if-ge v0, v10, :cond_0

    .line 271
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 272
    .local v3, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    aget-object v10, v10, v0

    invoke-static {v10}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 274
    invoke-virtual {v6, v3, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 275
    .local v7, "rInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_2

    .line 276
    invoke-virtual {v7, v6}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 277
    .local v2, "iconImage":Landroid/graphics/drawable/Drawable;
    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v10, v6}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 278
    .local v5, "labelText":Ljava/lang/String;
    if-eqz v2, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 279
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->mInflater:Landroid/view/LayoutInflater;

    const v11, 0x7f04006d

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 280
    .local v8, "shortcut":Landroid/view/View;
    invoke-virtual {v8, v13}, Landroid/view/View;->setVisibility(I)V

    .line 282
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const v10, 0x10204000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    const-string v10, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    invoke-virtual {v8, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v8, v13}, Landroid/view/View;->setPressed(Z)V

    .line 288
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 290
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$1;

    invoke-direct {v10, p0}, Lcom/android/systemui/recents/views/RecentsView$1;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$2;

    invoke-direct {v10, p0}, Lcom/android/systemui/recents/views/RecentsView$2;-><init>(Lcom/android/systemui/recents/views/RecentsView;)V

    invoke-virtual {v8, v10}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    const v10, 0x7f0e01f2

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 315
    .local v1, "icon":Landroid/widget/ImageView;
    const v10, 0x7f0e01f3

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 317
    .local v4, "label":Landroid/widget/TextView;
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v2, v13, v13, v14, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 319
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 321
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 324
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v2    # "iconImage":Landroid/graphics/drawable/Drawable;
    .end local v4    # "label":Landroid/widget/TextView;
    .end local v5    # "labelText":Ljava/lang/String;
    .end local v8    # "shortcut":Landroid/view/View;
    :cond_2
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v10

    if-lez v10, :cond_3

    .line 325
    iget-object v10, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private updateShortcutTextColor()V
    .locals 6

    .prologue
    .line 331
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 332
    .local v1, "childCount":I
    if-lez v1, :cond_2

    .line 333
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 334
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 335
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 336
    const v4, 0x7f0e01f3

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 337
    .local v3, "label":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 338
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->needDarkFont:Z

    if-eqz v4, :cond_1

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a00e4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 333
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 341
    .restart local v3    # "label":Landroid/widget/TextView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0070

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 347
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "i":I
    .end local v3    # "label":Landroid/widget/TextView;
    :cond_2
    return-void
.end method


# virtual methods
.method public disableLayersForOneFrame()V
    .locals 3

    .prologue
    .line 1196
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v1

    .line 1197
    .local v1, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1198
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->disableLayersForOneFrame()V

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1200
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 1809
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->dismiss()V

    .line 1810
    :cond_0
    return-void
.end method

.method public dismissFocusedTask()V
    .locals 2

    .prologue
    .line 1171
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v0

    .line 1172
    .local v0, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1173
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->dismissFocusedTask()V

    .line 1175
    :cond_0
    return-void
.end method

.method public focusNextTask(Z)V
    .locals 6
    .param p1, "forward"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1106
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v2

    .line 1107
    .local v2, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1109
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v3, :cond_4

    .line 1110
    new-instance v1, Landroid/util/MutableBoolean;

    invoke-direct {v1, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    .line 1111
    .local v1, "isMoved":Landroid/util/MutableBoolean;
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v5, v1}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZLandroid/util/MutableBoolean;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1113
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1114
    iput-boolean v5, v1, Landroid/util/MutableBoolean;->value:Z

    .line 1116
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    .line 1117
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskStackView;

    iget-object v4, v4, Lcom/android/systemui/recents/views/TaskStackView;->mStack:Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v4

    iput v4, v3, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    .line 1120
    :cond_1
    iget-boolean v3, v1, Landroid/util/MutableBoolean;->value:Z

    if-eqz v3, :cond_2

    .line 1121
    if-eqz p1, :cond_3

    const/4 v3, 0x2

    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/systemui/recents/views/RecentsView;->playSoundEffect(I)V

    .line 1129
    .end local v1    # "isMoved":Landroid/util/MutableBoolean;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v0

    .line 1141
    .local v0, "childCount":I
    return-void

    .line 1121
    .end local v0    # "childCount":I
    .restart local v1    # "isMoved":Landroid/util/MutableBoolean;
    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    .line 1125
    .end local v1    # "isMoved":Landroid/util/MutableBoolean;
    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v3, p1, v5}, Lcom/android/systemui/recents/views/TaskStackView;->focusNextTask(ZZ)Z

    goto :goto_1
.end method

.method public getNextTaskOrTopTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/model/Task;
    .locals 10
    .param p1, "taskToSearch"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 716
    const/4 v3, 0x0

    .line 717
    .local v3, "returnTask":Lcom/android/systemui/recents/model/Task;
    const/4 v0, 0x0

    .line 718
    .local v0, "found":Z
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v6

    .line 719
    .local v6, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 720
    .local v5, "stackCount":I
    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_4

    .line 721
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 722
    .local v4, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v8

    .line 724
    .local v8, "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, "j":I
    :goto_1
    if-ltz v2, :cond_3

    .line 725
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/model/Task;

    .line 727
    .local v7, "task":Lcom/android/systemui/recents/model/Task;
    if-eqz v0, :cond_0

    .line 736
    .end local v2    # "j":I
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v8    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :goto_2
    return-object v7

    .line 730
    .restart local v2    # "j":I
    .restart local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v7    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v8    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_0
    if-nez v3, :cond_1

    .line 731
    move-object v3, v7

    .line 732
    :cond_1
    if-ne v7, p1, :cond_2

    .line 733
    const/4 v0, 0x1

    .line 724
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 720
    .end local v7    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .end local v2    # "j":I
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v8    # "taskList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_4
    move-object v7, v3

    .line 736
    goto :goto_2
.end method

.method getTaskStackViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    return-object v0
.end method

.method public hasFocusedTaskStackView()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1098
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recents/views/TaskStackView;

    iget v0, v0, Lcom/android/systemui/recents/views/TaskStackView;->mFocusedTaskIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    .line 1099
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public hasValidSearchBar()Z
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->isReinflateRequired()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public launchFocusedTask()Z
    .locals 14

    .prologue
    const/4 v5, 0x0

    .line 742
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v11

    .line 743
    .local v11, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 744
    .local v10, "stackCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 745
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 746
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 748
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v13

    .line 749
    .local v13, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    .line 750
    .local v12, "taskViewCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v12, :cond_2

    .line 751
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 752
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v4

    .line 753
    .local v4, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->isFocusedTask()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    move v6, v5

    move v7, v5

    .line 754
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZZ)V

    .line 755
    const/4 v5, 0x1

    .line 759
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v9    # "j":I
    .end local v12    # "taskViewCount":I
    .end local v13    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_0
    return v5

    .line 750
    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v4    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v9    # "j":I
    .restart local v12    # "taskViewCount":I
    .restart local v13    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 744
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "task":Lcom/android/systemui/recents/model/Task;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public launchPreviousTask(Landroid/util/MutableBoolean;)Z
    .locals 16
    .param p1, "launchedFromMW"    # Landroid/util/MutableBoolean;

    .prologue
    .line 787
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v13

    .line 788
    .local v13, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    .line 789
    .local v12, "stackCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_5

    .line 790
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 791
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v4

    .line 792
    .local v4, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v4}, Lcom/android/systemui/recents/model/TaskStack;->getTasks()Ljava/util/ArrayList;

    move-result-object v15

    .line 795
    .local v15, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 796
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 797
    .local v14, "taskCount":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_1
    if-ge v10, v14, :cond_4

    .line 798
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task;

    iget-boolean v1, v1, Lcom/android/systemui/recents/model/Task;->isLaunchTarget:Z

    if-eqz v1, :cond_3

    .line 799
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/model/Task;

    .line 800
    .local v5, "task":Lcom/android/systemui/recents/model/Task;
    invoke-virtual {v2, v5}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v3

    .line 804
    .local v3, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v5}, Lcom/android/systemui/recents/model/Task;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    .line 805
    .local v11, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v11, :cond_2

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 807
    :cond_0
    if-eqz p1, :cond_1

    .line 808
    const/4 v1, 0x1

    move-object/from16 v0, p1

    iput-boolean v1, v0, Landroid/util/MutableBoolean;->value:Z

    .line 818
    :cond_1
    :goto_2
    const/4 v1, 0x1

    .line 823
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v10    # "j":I
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v14    # "taskCount":I
    .end local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :goto_3
    return v1

    .line 811
    .restart local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v5    # "task":Lcom/android/systemui/recents/model/Task;
    .restart local v10    # "j":I
    .restart local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .restart local v14    # "taskCount":I
    .restart local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZZ)V

    goto :goto_2

    .line 797
    .end local v3    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v5    # "task":Lcom/android/systemui/recents/model/Task;
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 789
    .end local v10    # "j":I
    .end local v14    # "taskCount":I
    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 823
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v4    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v15    # "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    :cond_5
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public launchTask(Lcom/android/systemui/recents/model/Task;)Z
    .locals 14
    .param p1, "task"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 765
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v11

    .line 766
    .local v11, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 767
    .local v10, "stackCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v10, :cond_0

    .line 768
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/TaskStackView;

    .line 769
    .local v1, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v3

    .line 771
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v1}, Lcom/android/systemui/recents/views/TaskStackView;->getTaskViews()Ljava/util/List;

    move-result-object v13

    .line 772
    .local v13, "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v12

    .line 773
    .local v12, "taskViewCount":I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v12, :cond_2

    .line 774
    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskView;

    .line 775
    .local v2, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v0

    if-ne v0, p1, :cond_1

    move-object v0, p0

    move-object v4, p1

    move v6, v5

    move v7, v5

    .line 776
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZZ)V

    .line 777
    const/4 v5, 0x1

    .line 781
    .end local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v9    # "j":I
    .end local v12    # "taskViewCount":I
    .end local v13    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_0
    return v5

    .line 773
    .restart local v1    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .restart local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    .restart local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .restart local v9    # "j":I
    .restart local v12    # "taskViewCount":I
    .restart local v13    # "taskViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskView;>;"
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 767
    .end local v2    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public onAllTaskViewsDismissed(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1663
    .local p1, "removedTasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/Task;>;"
    if-eqz p1, :cond_0

    .line 1664
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1665
    .local v1, "taskCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1666
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V

    .line 1665
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1670
    .end local v0    # "i":I
    .end local v1    # "taskCount":I
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onAllTaskViewsDismissed()V

    .line 1673
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "overview_task_all_dismissed"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1674
    return-void
.end method

.method public onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2
    .param p1, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 1001
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->updateSystemInsets(Landroid/graphics/Rect;)V

    .line 1002
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 1003
    invoke-virtual {p1}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public onChangeMultiwindowEnabled()V
    .locals 8

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 202
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 204
    .local v0, "child":Landroid/view/View;
    iget-object v7, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eq v0, v7, :cond_0

    move-object v4, v0

    .line 205
    check-cast v4, Lcom/android/systemui/recents/views/TaskStackView;

    .line 206
    .local v4, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v5

    .line 207
    .local v5, "taskCount":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 208
    invoke-virtual {v4, v3}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskView;

    .line 209
    .local v6, "tv":Lcom/android/systemui/recents/views/TaskView;
    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskView;->setNoUserInteractionState()V

    .line 207
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 202
    .end local v3    # "j":I
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    .end local v5    # "taskCount":I
    .end local v6    # "tv":Lcom/android/systemui/recents/views/TaskView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public onKeyDown(I)Z
    .locals 10
    .param p1, "keyCode"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1019
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-nez v9, :cond_1

    .line 1094
    :cond_0
    :goto_0
    return v7

    .line 1021
    :cond_1
    const/16 v3, 0x13

    .line 1022
    .local v3, "forwardKey":I
    const/16 v0, 0x14

    .line 1023
    .local v0, "backwardKey":I
    const/4 v2, 0x0

    .line 1024
    .local v2, "displayChangeKey":I
    const/4 v6, 0x0

    .line 1052
    .local v6, "rotation":I
    if-eq p1, v3, :cond_2

    if-ne p1, v0, :cond_5

    .line 1053
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    sget v9, Lcom/android/systemui/recents/RecentsConfiguration;->folderType:I

    if-eqz v9, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->hasFocusedTaskStackView()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1054
    :cond_3
    if-ne p1, v3, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/systemui/recents/views/RecentsView;->focusNextTask(Z)V

    move v7, v8

    .line 1055
    goto :goto_0

    .line 1057
    :cond_5
    sget-boolean v9, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-nez v9, :cond_0

    .line 1058
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object v1

    .line 1059
    .local v1, "curFocus":Landroid/view/View;
    move-object v4, v1

    .line 1060
    .local v4, "nextFocus":Landroid/view/View;
    if-eqz v4, :cond_7

    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 1062
    .local v5, "nextFocusIdx":I
    :cond_6
    :goto_1
    const/16 v9, 0x15

    if-ne p1, v9, :cond_8

    add-int/lit8 v5, v5, -0x2

    .line 1064
    :goto_2
    iget-object v9, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1065
    if-nez v4, :cond_9

    .line 1068
    :goto_3
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1069
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    move v7, v8

    .line 1070
    goto :goto_0

    .line 1060
    .end local v5    # "nextFocusIdx":I
    :cond_7
    const/4 v5, -0x2

    goto :goto_1

    .line 1062
    .restart local v5    # "nextFocusIdx":I
    :cond_8
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 1066
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    goto :goto_3
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 977
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v5, :cond_0

    .line 978
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 979
    .local v1, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getMeasuredHeight()I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6, v7, v8, v1}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 981
    iget-object v5, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    iget v6, v1, Landroid/graphics/Rect;->left:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->layout(IIII)V

    .line 987
    .end local v1    # "searchBarSpaceBounds":Landroid/graphics/Rect;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v4

    .line 988
    .local v4, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 989
    .local v2, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 990
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 991
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    .line 992
    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, p2

    invoke-virtual {v3}, Lcom/android/systemui/recents/views/TaskStackView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, p3

    invoke-virtual {v3, p2, p3, v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->layout(IIII)V

    .line 989
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 996
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    .line 935
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 936
    .local v1, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 939
    .local v2, "height":I
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 940
    .local v5, "searchBarSpaceBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/systemui/recents/RecentsConfiguration;->getSearchBarBounds(IIILandroid/graphics/Rect;)V

    .line 942
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {v3, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v4, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->measure(II)V

    .line 947
    :cond_0
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 948
    .local v6, "taskStackBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v3, v3, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v4, v4, Lcom/android/systemui/recents/RecentsConfiguration;->systemInsets:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/recents/RecentsConfiguration;->getAvailableTaskStackBounds(IIIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 953
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v10

    .line 954
    .local v10, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mLayoutAlgorithm:Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;

    invoke-virtual {v0, v10, v6}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;->computeStackRects(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;

    move-result-object v11

    .line 956
    .local v11, "stackViewsBounds":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v8

    .line 957
    .local v8, "stackCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 958
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/recents/views/TaskStackView;

    .line 959
    .local v9, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v9}, Lcom/android/systemui/recents/views/TaskStackView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    .line 963
    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Lcom/android/systemui/recents/views/TaskStackView;->setStackInsetRect(Landroid/graphics/Rect;)V

    .line 964
    invoke-virtual {v9, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->measure(II)V

    .line 957
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 968
    .end local v9    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/views/RecentsView;->setMeasuredDimension(II)V

    .line 969
    return-void
.end method

.method public onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V
    .locals 4
    .param p1, "monitor"    # Lcom/android/systemui/recents/model/RecentsPackageMonitor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1856
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 1857
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1858
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1859
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 1860
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/systemui/recents/views/TaskStackView;->onPackagesChanged(Lcom/android/systemui/recents/model/RecentsPackageMonitor;Ljava/lang/String;I)V

    .line 1858
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1862
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public onRecentsHidden()V
    .locals 4

    .prologue
    .line 1679
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 1680
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1681
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1682
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 1683
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->onRecentsHidden()V

    .line 1681
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1685
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public onShortcutPackagesChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 350
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 352
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutComponentNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 354
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->shortcutContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 355
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateShortcutLayout()V

    goto :goto_0

    .line 352
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public onTaskResize(Lcom/android/systemui/recents/model/Task;)V
    .locals 1
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1717
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v0, :cond_0

    .line 1718
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0, p1}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskResize(Lcom/android/systemui/recents/model/Task;)V

    .line 1720
    :cond_0
    return-void
.end method

.method public onTaskViewAppInfoClicked(Lcom/android/systemui/recents/model/Task;)V
    .locals 6
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    const/4 v5, 0x0

    .line 1640
    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget-object v0, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    .line 1641
    .local v0, "baseIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v3, "package"

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1643
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1644
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v4, v4, Lcom/android/systemui/recents/model/Task$TaskKey;->userId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v5, v3}, Landroid/app/TaskStackBuilder;->startActivities(Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 1647
    return-void
.end method

.method public onTaskViewClicked(Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/TaskView;Lcom/android/systemui/recents/model/TaskStack;Lcom/android/systemui/recents/model/Task;ZZZ)V
    .locals 32
    .param p1, "stackView"    # Lcom/android/systemui/recents/views/TaskStackView;
    .param p2, "tv"    # Lcom/android/systemui/recents/views/TaskView;
    .param p3, "stack"    # Lcom/android/systemui/recents/model/TaskStack;
    .param p4, "task"    # Lcom/android/systemui/recents/model/Task;
    .param p5, "lockToTask"    # Z
    .param p6, "toSplit"    # Z
    .param p7, "fixToTask"    # Z

    .prologue
    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1320
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    :goto_0
    invoke-interface {v3, v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V

    .line 1324
    :cond_0
    new-instance v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v6}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>()V

    .line 1326
    .local v6, "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    const/4 v4, 0x0

    .line 1327
    .local v4, "offsetX":I
    const/4 v5, 0x0

    .line 1328
    .local v5, "offsetY":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getScroller()Lcom/android/systemui/recents/views/TaskStackViewScroller;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackViewScroller;->getStackScroll()F

    move-result v27

    .line 1329
    .local v27, "stackScroll":F
    if-nez p2, :cond_4

    .line 1333
    move-object/from16 v9, p1

    .line 1334
    .local v9, "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1, v6, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    .line 1335
    iget-object v2, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    .line 1336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->displayRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 1343
    :goto_1
    new-instance v28, Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-direct/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;-><init>()V

    .line 1345
    .local v28, "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    .line 1346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    if-eqz v2, :cond_6

    .line 1347
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1348
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mActivity:Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;

    invoke-virtual {v2}, Lcom/android/systemui/multiwindow/RecentsMultiWindowActivity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1349
    const/16 v2, 0xc

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1376
    :cond_1
    :goto_2
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v26

    .line 1378
    .local v26, "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    const/16 v25, 0x0

    .line 1379
    .local v25, "opts":Landroid/app/ActivityOptions;
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_f

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lez v2, :cond_f

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-lez v2, :cond_f

    invoke-virtual/range {v28 .. v28}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isSplit()Z

    move-result v2

    if-nez v2, :cond_f

    .line 1382
    const/4 v7, 0x0

    .line 1384
    .local v7, "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    const/4 v8, 0x0

    .line 1386
    .local v8, "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    if-eqz p5, :cond_b

    .line 1388
    invoke-static {}, Lcom/android/internal/app/AppLockPolicy;->isSupportAppLock()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1389
    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isAppLockedPackageNotCheckUnlock(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1391
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d04a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1392
    .local v24, "appLockStr":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    move-object/from16 v0, v24

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1393
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/recents/RecentsConfiguration;->isCloseProcessingBtnClicked:Z

    .line 1635
    .end local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    .end local v24    # "appLockStr":Ljava/lang/String;
    :cond_2
    :goto_3
    return-void

    .line 1320
    .end local v4    # "offsetX":I
    .end local v5    # "offsetY":I
    .end local v6    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .end local v9    # "sourceView":Landroid/view/View;
    .end local v25    # "opts":Landroid/app/ActivityOptions;
    .end local v26    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    .end local v27    # "stackScroll":F
    .end local v28    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_3
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 1338
    .restart local v4    # "offsetX":I
    .restart local v5    # "offsetY":I
    .restart local v6    # "transform":Lcom/android/systemui/recents/views/TaskViewTransform;
    .restart local v27    # "stackScroll":F
    :cond_4
    move-object/from16 v0, p2

    iget-object v9, v0, Lcom/android/systemui/recents/views/TaskView;->mThumbnailView:Lcom/android/systemui/recents/views/TaskViewThumbnail;

    .line 1339
    .restart local v9    # "sourceView":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/recents/views/TaskStackView;->getStackAlgorithm()Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v27

    invoke-virtual {v2, v0, v1, v6, v3}, Lcom/android/systemui/recents/views/TaskStackViewLayoutAlgorithm;->getStackTransform(Lcom/android/systemui/recents/model/Task;FLcom/android/systemui/recents/views/TaskViewTransform;Lcom/android/systemui/recents/views/TaskViewTransform;)Lcom/android/systemui/recents/views/TaskViewTransform;

    move-result-object v6

    goto/16 :goto_1

    .line 1351
    .restart local v28    # "style":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_5
    const/4 v2, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1352
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mFinishActivity:Z

    goto/16 :goto_2

    .line 1354
    :cond_6
    if-eqz p6, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowFeatures;->isSupportSimplificationUI(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1355
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v2, :cond_7

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->clearDeferSurfaceDestroyFlag()V

    .line 1359
    :cond_7
    const/4 v2, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setType(I)V

    .line 1360
    const/4 v2, 0x3

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setZone(I)V

    .line 1361
    const/high16 v2, 0x2000000

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    .line 1362
    const/high16 v2, 0x10000000

    const/4 v3, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    goto/16 :goto_2

    .line 1363
    :cond_8
    if-nez p6, :cond_1

    .line 1364
    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v2, :cond_9

    .line 1365
    const-string v2, "RC01"

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/systemui/recents/model/Task;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/recents/views/RecentsView;->sendDiagnosticLogs(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :cond_9
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v2, :cond_1

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v2, :cond_1

    move-object/from16 v0, p4

    iget-object v2, v0, Lcom/android/systemui/recents/model/Task;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isCascade()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1369
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->clearDeferSurfaceDestroyFlag()V

    goto/16 :goto_2

    .line 1399
    .restart local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .restart local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    .restart local v25    # "opts":Landroid/app/ActivityOptions;
    .restart local v26    # "ssp":Lcom/android/systemui/recents/misc/SystemServicesProxy;
    :cond_a
    new-instance v7, Lcom/android/systemui/recents/views/RecentsView$5;

    .end local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcom/android/systemui/recents/views/RecentsView$5;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;)V

    .line 1423
    .restart local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_b
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableExitAnimToApp:Z

    if-eqz v2, :cond_d

    .line 1424
    if-nez v7, :cond_c

    .line 1425
    new-instance v7, Lcom/android/systemui/recents/views/RecentsView$6;

    .end local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v7, v0, v1}, Lcom/android/systemui/recents/views/RecentsView$6;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;)V

    .line 1438
    .restart local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    :cond_c
    new-instance v8, Lcom/android/systemui/recents/views/RecentsView$7;

    .end local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v8, v0, v1}, Lcom/android/systemui/recents/views/RecentsView$7;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;)V

    .line 1451
    .restart local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    :cond_d
    if-eqz p2, :cond_e

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    .line 1452
    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/recents/views/RecentsView;->postDrawHeaderThumbnailTransitionRunnable(Lcom/android/systemui/recents/views/TaskView;IILcom/android/systemui/recents/views/TaskViewTransform;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)V

    .line 1456
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->multiStackEnabled:Z

    if-eqz v2, :cond_11

    .line 1457
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f05009f

    const v11, 0x7f0500a0

    invoke-virtual {v9}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v12

    invoke-static {v2, v3, v11, v12, v7}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;IILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v25

    .line 1472
    .end local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    :cond_f
    :goto_4
    move-object/from16 v16, v25

    .line 1473
    .local v16, "launchOpts":Landroid/app/ActivityOptions;
    new-instance v10, Lcom/android/systemui/recents/views/RecentsView$8;

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, v26

    move-object/from16 v14, v28

    move/from16 v15, p5

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/recents/views/RecentsView$8;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/misc/SystemServicesProxy;Lcom/samsung/android/multiwindow/MultiWindowStyle;ZLandroid/app/ActivityOptions;)V

    .line 1577
    .local v10, "launchRunnable":Ljava/lang/Runnable;
    new-instance v17, Lcom/android/systemui/recents/views/RecentsView$9;

    move-object/from16 v18, p0

    move-object/from16 v19, p2

    move-object/from16 v20, v10

    move-object/from16 v21, p4

    move-object/from16 v22, p1

    move/from16 v23, p5

    invoke-direct/range {v17 .. v23}, Lcom/android/systemui/recents/views/RecentsView$9;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/TaskView;Ljava/lang/Runnable;Lcom/android/systemui/recents/model/Task;Lcom/android/systemui/recents/views/TaskStackView;Z)V

    .line 1600
    .local v17, "launch":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->getDisplayId()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_13

    const/16 v29, 0x0

    .line 1611
    .local v29, "targetDisplayId":I
    :goto_5
    invoke-interface/range {v17 .. v17}, Ljava/lang/Runnable;->run()V

    .line 1616
    const/16 v31, 0x0

    .line 1617
    .local v31, "taskIndexFromFront":I
    invoke-virtual/range {p3 .. p4}, Lcom/android/systemui/recents/model/TaskStack;->indexOfTask(Lcom/android/systemui/recents/model/Task;)I

    move-result v30

    .line 1618
    .local v30, "taskIndex":I
    const/4 v2, -0x1

    move/from16 v0, v30

    if-le v0, v2, :cond_10

    .line 1619
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/recents/model/TaskStack;->getTaskCount()I

    move-result v2

    sub-int v2, v2, v30

    add-int/lit8 v31, v2, -0x1

    .line 1621
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "overview_task_launch_index"

    move/from16 v0, v31

    invoke-static {v2, v3, v0}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1625
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    invoke-virtual {v2}, Lcom/android/systemui/recents/RecentsConfiguration;->showOnlySplitTask()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1627
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz p2, :cond_14

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    :goto_6
    invoke-interface {v3, v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewClicked(Lcom/android/systemui/recents/model/Task;)V

    .line 1629
    if-eqz p7, :cond_2

    .line 1630
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    if-eqz p2, :cond_15

    move-object/from16 v0, p2

    iget-object v2, v0, Lcom/android/systemui/recents/views/TaskView;->mTask:Lcom/android/systemui/recents/model/Task;

    :goto_7
    invoke-interface {v3, v2}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewFixBtnClicked(Lcom/android/systemui/recents/model/Task;)V

    goto/16 :goto_3

    .line 1462
    .end local v10    # "launchRunnable":Ljava/lang/Runnable;
    .end local v16    # "launchOpts":Landroid/app/ActivityOptions;
    .end local v17    # "launch":Ljava/lang/Runnable;
    .end local v29    # "targetDisplayId":I
    .end local v30    # "taskIndex":I
    .end local v31    # "taskIndexFromFront":I
    .restart local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .restart local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    :cond_11
    const/4 v2, 0x1

    const/4 v3, 0x1

    sget-object v11, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v10

    iget-object v2, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v13

    iget-object v2, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v9}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v15

    if-nez p2, :cond_12

    move-object/from16 v17, v8

    :goto_8
    move v11, v4

    move v12, v5

    move-object/from16 v16, v7

    invoke-static/range {v9 .. v17}, Landroid/app/ActivityOptions;->makeThumbnailAspectScaleUpAnimation(Landroid/view/View;Landroid/graphics/Bitmap;IIIILandroid/os/Handler;Landroid/app/ActivityOptions$OnAnimationStartedListener;Landroid/app/ActivityOptions$OnTransitionStartedListener;)Landroid/app/ActivityOptions;

    move-result-object v25

    goto/16 :goto_4

    :cond_12
    const/16 v17, 0x0

    goto :goto_8

    .line 1600
    .end local v7    # "animStartedListener":Landroid/app/ActivityOptions$OnAnimationStartedListener;
    .end local v8    # "transitStartedListener":Landroid/app/ActivityOptions$OnTransitionStartedListener;
    .restart local v10    # "launchRunnable":Ljava/lang/Runnable;
    .restart local v16    # "launchOpts":Landroid/app/ActivityOptions;
    .restart local v17    # "launch":Ljava/lang/Runnable;
    :cond_13
    const/16 v29, 0x1

    goto :goto_5

    .line 1627
    .restart local v29    # "targetDisplayId":I
    .restart local v30    # "taskIndex":I
    .restart local v31    # "taskIndexFromFront":I
    :cond_14
    const/4 v2, 0x0

    goto :goto_6

    .line 1630
    :cond_15
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public onTaskViewDismissed(Lcom/android/systemui/recents/model/Task;)V
    .locals 3
    .param p1, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 1654
    invoke-static {}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getInstance()Lcom/android/systemui/recents/model/RecentsTaskLoader;

    move-result-object v0

    .line 1655
    .local v0, "loader":Lcom/android/systemui/recents/model/RecentsTaskLoader;
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->deleteTaskData(Lcom/android/systemui/recents/model/Task;Z)V

    .line 1658
    invoke-virtual {v0}, Lcom/android/systemui/recents/model/RecentsTaskLoader;->getSystemServicesProxy()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v1

    iget-object v2, p1, Lcom/android/systemui/recents/model/Task;->key:Lcom/android/systemui/recents/model/Task$TaskKey;

    iget v2, v2, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->removeTask(I)V

    .line 1659
    return-void
.end method

.method public onTaskViewMoved()V
    .locals 1

    .prologue
    .line 1725
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v0}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onTaskViewMoved()V

    .line 1726
    return-void
.end method

.method public onToggleRecentsBottomContainer(Z)V
    .locals 6
    .param p1, "show"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1747
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 1803
    :cond_0
    :goto_0
    return-void

    .line 1748
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 1757
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-nez v2, :cond_3

    .line 1758
    if-eqz p1, :cond_2

    .line 1759
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1761
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 1766
    :cond_3
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v2, :cond_4

    .line 1767
    if-eqz p1, :cond_8

    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_8

    .line 1768
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1778
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    if-nez p1, :cond_0

    .line 1779
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_6

    if-eqz p1, :cond_0

    .line 1782
    :cond_6
    if-eqz p1, :cond_9

    .line 1783
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0500ac

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1787
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1789
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-eqz v2, :cond_a

    .line 1790
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 1791
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1798
    :cond_7
    :goto_2
    if-eqz p1, :cond_b

    .line 1799
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 1770
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v2, v2, Lcom/android/systemui/recents/RecentsConfiguration;->launchedWithNoRecentTasks:Z

    if-eqz v2, :cond_4

    .line 1771
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1772
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1785
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v3, 0x7f0500a1

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 1792
    :cond_a
    sget-boolean v2, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v2, :cond_7

    .line 1793
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const v3, 0x7f0e01d9

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1794
    .local v1, "shorcut":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 1795
    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 1801
    .end local v1    # "shorcut":Landroid/view/View;
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public onUserInteraction()V
    .locals 4

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 1010
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1011
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1012
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 1013
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2}, Lcom/android/systemui/recents/views/TaskStackView;->onUserInteraction()V

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    return-void
.end method

.method public removeExitAnimationHandler()V
    .locals 2

    .prologue
    .line 1292
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1293
    return-void
.end method

.method public setCallbacks(Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;)V
    .locals 0
    .param p1, "cb"    # Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .prologue
    .line 638
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    .line 639
    return-void
.end method

.method public setRecentsBottomContainerView(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "view"    # Landroid/view/ViewGroup;

    .prologue
    const v6, 0x7f0e01df

    const/4 v5, 0x0

    .line 222
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    .line 223
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonClickListener:Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

    if-nez v3, :cond_0

    .line 224
    new-instance v3, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;-><init>(Lcom/android/systemui/recents/views/RecentsView;Lcom/android/systemui/recents/views/RecentsView$1;)V

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonClickListener:Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

    .line 226
    :cond_0
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-nez v3, :cond_5

    .line 227
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 232
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const v4, 0x7f0e01e0

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    .line 235
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsButtonsLayout()V

    .line 237
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 238
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 239
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 240
    .local v1, "child":Landroid/view/View;
    instance-of v3, v1, Landroid/widget/Button;

    if-nez v3, :cond_1

    instance-of v3, v1, Landroid/widget/ImageButton;

    if-eqz v3, :cond_2

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonClickListener:Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    invoke-virtual {v1, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 238
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 255
    .end local v0    # "N":I
    .end local v2    # "i":I
    :goto_1
    sget-boolean v3, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v3, :cond_4

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateShortcutLayout()V

    .line 258
    :cond_4
    return-void

    .line 247
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 248
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const v4, 0x7f0e01e1

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    .line 249
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 250
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->closeAllContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    .line 251
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsButtonClickListener:Lcom/android/systemui/recents/views/RecentsView$OnClickRecentsButton;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v3, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setHoverPopupType(I)V

    goto :goto_1
.end method

.method public setSearchBar(Lcom/android/systemui/recents/RecentsAppWidgetHostView;)V
    .locals 0
    .param p1, "searchBar"    # Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    .prologue
    .line 898
    return-void
.end method

.method public setSearchBarVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 918
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->setVisibility(I)V

    .line 921
    iget-object v0, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/systemui/recents/RecentsAppWidgetHostView;->bringToFront()V

    .line 924
    :cond_0
    sget-boolean v0, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-nez v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 925
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsButtonsLayout()V

    .line 928
    :cond_1
    return-void
.end method

.method public setTaskStacks(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/TaskStack;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    .local p1, "stacks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/recents/model/TaskStack;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 651
    .local v1, "numStacks":I
    const/4 v2, 0x0

    .line 652
    .local v2, "numTaskStacksToKeep":I
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->launchedReuseTaskStackViews:Z

    if-eqz v6, :cond_0

    .line 653
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 655
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 657
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v6}, Lcom/android/systemui/recents/views/TaskStackView;->destroyViewPool()V

    .line 659
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/systemui/recents/views/RecentsView;->removeView(Landroid/view/View;)V

    .line 655
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 663
    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 664
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/recents/views/TaskStackView;

    .line 666
    .local v5, "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v5}, Lcom/android/systemui/recents/views/TaskStackView;->reset()V

    .line 667
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/model/TaskStack;

    invoke-virtual {v5, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setStack(Lcom/android/systemui/recents/model/TaskStack;)V

    .line 663
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 671
    .end local v5    # "tsv":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_2
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    .line 672
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    :goto_2
    if-ge v0, v1, :cond_3

    .line 673
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/model/TaskStack;

    .line 674
    .local v3, "stack":Lcom/android/systemui/recents/model/TaskStack;
    new-instance v4, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6, v3}, Lcom/android/systemui/recents/views/TaskStackView;-><init>(Landroid/content/Context;Lcom/android/systemui/recents/model/TaskStack;)V

    .line 675
    .local v4, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v4, p0}, Lcom/android/systemui/recents/views/TaskStackView;->setCallbacks(Lcom/android/systemui/recents/views/TaskStackView$TaskStackViewCallbacks;)V

    .line 676
    invoke-virtual {p0, v4}, Lcom/android/systemui/recents/views/RecentsView;->addView(Landroid/view/View;)V

    .line 677
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 686
    .end local v3    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-boolean v6, v6, Lcom/android/systemui/recents/RecentsConfiguration;->debugModeEnabled:Z

    if-eqz v6, :cond_4

    .line 687
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 688
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mTaskStackViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/views/TaskStackView;

    .line 689
    .restart local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    iget-object v6, p0, Lcom/android/systemui/recents/views/RecentsView;->mDebugOverlay:Lcom/android/systemui/recents/views/DebugOverlayView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/recents/views/TaskStackView;->setDebugOverlay(Lcom/android/systemui/recents/views/DebugOverlayView;)V

    .line 687
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 694
    .end local v4    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_4
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableRecentsButtonsLayout:Z

    if-eqz v6, :cond_6

    .line 695
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableCloseAllLayout:Z

    if-nez v6, :cond_5

    .line 696
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateRecentsButtonsLayout()V

    .line 699
    :cond_5
    sget-boolean v6, Lcom/android/systemui/recents/Constants$Features;->EnableShortcutLayout:Z

    if-eqz v6, :cond_6

    .line 700
    invoke-direct {p0}, Lcom/android/systemui/recents/views/RecentsView;->updateShortcutTextColor()V

    .line 706
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->requestLayout()V

    .line 707
    return-void
.end method

.method public startCloseAllRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;

    .prologue
    .line 880
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 882
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 883
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 884
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 885
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 886
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 887
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    const/4 v4, 0x0

    iput v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->startOffset:I

    .line 888
    invoke-virtual {v3, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startCloseAllAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;)V

    .line 883
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 891
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewCloseAllContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 892
    return-void
.end method

.method public startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;

    .prologue
    .line 830
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 832
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 833
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 834
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 835
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 836
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startEnterRecentsAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;)V

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 838
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewEnterContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 839
    return-void
.end method

.method public startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;

    .prologue
    .line 845
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 846
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getTaskStackViews()Ljava/util/List;

    move-result-object v3

    .line 847
    .local v3, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 848
    .local v1, "stackCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 849
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/TaskStackView;

    .line 850
    .local v2, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v2, p1}, Lcom/android/systemui/recents/views/TaskStackView;->startExitToHomeAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;)V

    .line 848
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 852
    .end local v2    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 855
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mCb:Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;

    invoke-interface {v4}, Lcom/android/systemui/recents/views/RecentsView$RecentsViewCallbacks;->onExitToHomeAnimationTriggered()V

    .line 856
    return-void
.end method

.method public startExitToPreviousAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;Lcom/android/systemui/recents/model/Task;)V
    .locals 5
    .param p1, "ctx"    # Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;
    .param p2, "t"    # Lcom/android/systemui/recents/model/Task;

    .prologue
    .line 862
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->increment()V

    .line 863
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/RecentsView;->getChildCount()I

    move-result v1

    .line 864
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 865
    invoke-virtual {p0, v2}, Lcom/android/systemui/recents/views/RecentsView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 866
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mSearchBar:Lcom/android/systemui/recents/RecentsAppWidgetHostView;

    if-eq v0, v4, :cond_0

    move-object v3, v0

    .line 867
    check-cast v3, Lcom/android/systemui/recents/views/TaskStackView;

    .line 868
    .local v3, "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/recents/views/TaskStackView;->startExitToPreviousAppAnimation(Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;Lcom/android/systemui/recents/model/Task;)V

    .line 864
    .end local v3    # "stackView":Lcom/android/systemui/recents/views/TaskStackView;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 871
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-object v4, p1, Lcom/android/systemui/recents/views/ViewAnimation$TaskViewExitContext;->postAnimationTrigger:Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;

    invoke-virtual {v4}, Lcom/android/systemui/recents/misc/ReferenceCountedTrigger;->decrement()V

    .line 872
    return-void
.end method

.method public unfilterFilteredStacks()Z
    .locals 5

    .prologue
    .line 1179
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 1181
    const/4 v3, 0x0

    .line 1182
    .local v3, "stacksUnfiltered":Z
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1183
    .local v1, "numStacks":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 1184
    iget-object v4, p0, Lcom/android/systemui/recents/views/RecentsView;->mStacks:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/model/TaskStack;

    .line 1185
    .local v2, "stack":Lcom/android/systemui/recents/model/TaskStack;
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->hasFilteredTasks()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1186
    invoke-virtual {v2}, Lcom/android/systemui/recents/model/TaskStack;->unfilterTasks()V

    .line 1187
    const/4 v3, 0x1

    .line 1183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1192
    .end local v0    # "i":I
    .end local v1    # "numStacks":I
    .end local v2    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    .end local v3    # "stacksUnfiltered":Z
    :cond_1
    const/4 v3, 0x0

    :cond_2
    return v3
.end method

.method public updateCloseAllButtonVisibility(Z)V
    .locals 4
    .param p1, "showCloseAll"    # Z

    .prologue
    const/16 v3, 0x8

    .line 494
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 495
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsRemoveAllButton:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 497
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 498
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz p1, :cond_2

    .line 518
    :cond_1
    :goto_0
    return-void

    .line 499
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_3

    if-eqz p1, :cond_1

    .line 502
    :cond_3
    if-eqz p1, :cond_4

    .line 503
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0500ac

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 507
    .local v0, "anim":Landroid/view/animation/Animation;
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget-object v1, v1, Lcom/android/systemui/recents/RecentsConfiguration;->sineInOut90Interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 509
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 510
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 512
    if-eqz p1, :cond_5

    .line 513
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 505
    .end local v0    # "anim":Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mContext:Landroid/content/Context;

    const v2, 0x7f0500a1

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_1

    .line 515
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/recents/views/RecentsView;->mRecentsBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
