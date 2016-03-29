.class public Lcom/android/systemui/recents/views/DualScreenViewControl;
.super Ljava/lang/Object;
.source "DualScreenViewControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    }
.end annotation


# static fields
.field public static final ALPHA_PROPERTY:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEBUG:Z

.field public static final DIM_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRANSLATION_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static mLaunchRunnable:Ljava/lang/Runnable;

.field private static final mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;


# instance fields
.field private mInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 59
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$1;

    const-string v1, "dim"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DualScreenViewControl$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->DIM_PROPERTY:Landroid/util/Property;

    .line 212
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$2;

    const-string v1, "translation"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DualScreenViewControl$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->TRANSLATION_X:Landroid/util/Property;

    .line 225
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$3;

    const-string v1, "translation"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DualScreenViewControl$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->TRANSLATION_Y:Landroid/util/Property;

    .line 238
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$4;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/android/systemui/recents/views/DualScreenViewControl$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->ALPHA_PROPERTY:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    .line 71
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recents/views/DualScreenViewControl;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/recents/views/DualScreenViewControl;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static getInstance()Lcom/android/systemui/recents/views/DualScreenViewControl;
    .locals 2

    .prologue
    .line 91
    sget-object v1, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    :try_start_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl;

    invoke-direct {v0}, Lcom/android/systemui/recents/views/DualScreenViewControl;-><init>()V

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    .line 95
    :cond_0
    sget-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->sInstance:Lcom/android/systemui/recents/views/DualScreenViewControl;

    monitor-exit v1

    return-object v0

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private makeLaunchRunnable(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Ljava/lang/Runnable;
    .locals 7
    .param p1, "fromScreen"    # I
    .param p2, "taskId"    # I
    .param p3, "isActive"    # Z
    .param p4, "taskName"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 307
    new-instance v0, Lcom/android/systemui/recents/views/DualScreenViewControl$6;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/recents/views/DualScreenViewControl$6;-><init>(Lcom/android/systemui/recents/views/DualScreenViewControl;IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V

    .line 340
    .local v0, "run":Ljava/lang/Runnable;
    return-object v0
.end method


# virtual methods
.method public moveAnimationView(Landroid/view/View;IZ)V
    .locals 10
    .param p1, "moveView"    # Landroid/view/View;
    .param p2, "swipeDireciton"    # I
    .param p3, "isMove"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 357
    sget-object v7, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 358
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v8

    if-nez v8, :cond_0

    .line 359
    monitor-exit v7

    .line 400
    .end local p1    # "moveView":Landroid/view/View;
    :goto_0
    return-void

    .line 360
    .restart local p1    # "moveView":Landroid/view/View;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    .line 361
    .local v1, "fromScreen":I
    if-nez v1, :cond_5

    .line 362
    .local v4, "toScreen":I
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 363
    .local v2, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v2, :cond_4

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    if-eqz v6, :cond_4

    .line 364
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    .line 365
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 368
    :cond_1
    const/4 v5, 0x0

    .line 369
    .local v5, "translate":F
    if-nez p2, :cond_6

    .line 370
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v5

    .line 371
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    iget v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startX:F

    add-float/2addr v8, v5

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 377
    :goto_2
    sget-boolean v6, Lcom/android/systemui/recents/views/DualScreenViewControl;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 381
    :cond_2
    if-eqz p3, :cond_7

    .line 382
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_3

    instance-of v6, p1, Lcom/android/systemui/recents/views/TaskView;

    if-eqz v6, :cond_3

    .line 383
    iget-object v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/recents/views/TaskView;

    move-object v6, v0

    const/4 v9, 0x1

    invoke-virtual {v8, v6, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 385
    :cond_3
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 386
    .local v3, "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v3, :cond_4

    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_4

    .line 387
    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    check-cast p1, Lcom/android/systemui/recents/views/TaskView;

    .end local p1    # "moveView":Landroid/view/View;
    const/4 v8, 0x1

    invoke-virtual {v6, p1, v8}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 399
    .end local v3    # "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v5    # "translate":F
    :cond_4
    :goto_3
    monitor-exit v7

    goto :goto_0

    .end local v1    # "fromScreen":I
    .end local v2    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v4    # "toScreen":I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .restart local v1    # "fromScreen":I
    .restart local p1    # "moveView":Landroid/view/View;
    :cond_5
    move v4, v6

    .line 361
    goto :goto_1

    .line 373
    .restart local v2    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .restart local v4    # "toScreen":I
    .restart local v5    # "translate":F
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v5

    .line 374
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    iget v8, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->startY:F

    add-float/2addr v8, v5

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setTranslationY(F)V

    goto :goto_2

    .line 390
    :cond_7
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_8

    .line 391
    iget-object v6, v2, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V

    .line 393
    :cond_8
    iget-object v6, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 394
    .restart local v3    # "oppositeInfo":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v3, :cond_4

    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    if-eqz v6, :cond_4

    .line 395
    iget-object v6, v3, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->taskStackView:Lcom/android/systemui/recents/views/TaskStackView;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/systemui/recents/views/TaskStackView;->setDimAllTask(Lcom/android/systemui/recents/views/TaskView;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public setAlphaAnimationView(Landroid/view/View;)V
    .locals 7
    .param p1, "moveView"    # Landroid/view/View;

    .prologue
    .line 344
    sget-object v4, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 345
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    if-nez v3, :cond_0

    .line 346
    monitor-exit v4

    .line 354
    :goto_0
    return-void

    .line 347
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    .line 348
    .local v0, "fromScreen":I
    if-nez v0, :cond_2

    const/4 v2, 0x1

    .line 349
    .local v2, "toScreen":I
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mInfos:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;

    .line 350
    .local v1, "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->rootView:Landroid/view/ViewGroup;

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 351
    iget-object v3, v1, Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;->animationView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 353
    :cond_1
    monitor-exit v4

    goto :goto_0

    .end local v0    # "fromScreen":I
    .end local v1    # "info":Lcom/android/systemui/recents/views/DualScreenViewControl$RootInfo;
    .end local v2    # "toScreen":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 348
    .restart local v0    # "fromScreen":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setLaunchTask(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)V
    .locals 1
    .param p1, "fromScreen"    # I
    .param p2, "taskId"    # I
    .param p3, "isActive"    # Z
    .param p4, "taskName"    # Ljava/lang/String;
    .param p5, "listener"    # Landroid/app/ActivityOptions$OnAnimationStartedListener;

    .prologue
    .line 303
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/recents/views/DualScreenViewControl;->makeLaunchRunnable(IIZLjava/lang/String;Landroid/app/ActivityOptions$OnAnimationStartedListener;)Ljava/lang/Runnable;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/recents/views/DualScreenViewControl;->mLaunchRunnable:Ljava/lang/Runnable;

    .line 304
    return-void
.end method
