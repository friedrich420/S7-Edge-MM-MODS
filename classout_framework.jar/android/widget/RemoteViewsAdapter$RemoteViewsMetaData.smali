.class Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
.super Ljava/lang/Object;
.source "RemoteViewsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsMetaData"
.end annotation


# instance fields
.field count:I

.field hasStableIds:Z

.field mFirstView:Landroid/widget/RemoteViews;

.field mFirstViewHeight:I

.field private final mTypeIdIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mUserLoadingView:Landroid/widget/RemoteViews;

.field viewTypeCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 456
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 454
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mTypeIdIndexMap:Ljava/util/HashMap;

    .line 457
    invoke-virtual {p0}, reset()V

    .line 458
    return-void
.end method

.method static synthetic access$1900(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .registers 8
    .param p0, "x0"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/view/View;
    .param p3, "x3"    # Landroid/view/ViewGroup;
    .param p4, "x4"    # Ljava/lang/Object;
    .param p5, "x5"    # Landroid/view/LayoutInflater;
    .param p6, "x6"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 441
    invoke-direct/range {p0 .. p6}, createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    move-result-object v0

    return-object v0
.end method

.method private createLoadingView(ILandroid/view/View;Landroid/view/ViewGroup;Ljava/lang/Object;Landroid/view/LayoutInflater;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    .registers 19
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "lock"    # Ljava/lang/Object;
    .param p5, "layoutInflater"    # Landroid/view/LayoutInflater;
    .param p6, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 513
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 514
    .local v1, "context":Landroid/content/Context;
    new-instance v6, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;

    invoke-direct {v6, v1}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;-><init>(Landroid/content/Context;)V

    .line 517
    .local v6, "layout":Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;
    monitor-enter p4

    .line 518
    const/4 v2, 0x0

    .line 520
    .local v2, "customLoadingViewAvailable":Z
    :try_start_b
    iget-object v9, p0, mUserLoadingView:Landroid/widget/RemoteViews;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_7d

    if-eqz v9, :cond_2b

    .line 523
    :try_start_f
    iget-object v9, p0, mUserLoadingView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v8

    .line 525
    .local v8, "loadingView":Landroid/view/View;
    const v9, 0x1020046

    new-instance v10, Ljava/lang/Integer;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8, v9, v10}, Landroid/view/View;->setTagInternal(ILjava/lang/Object;)V

    .line 527
    invoke-virtual {v6, v8}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2a} :catch_74
    .catchall {:try_start_f .. :try_end_2a} :catchall_7d

    .line 528
    const/4 v2, 0x1

    .line 534
    .end local v8    # "loadingView":Landroid/view/View;
    :cond_2b
    :goto_2b
    if-nez v2, :cond_72

    .line 537
    :try_start_2d
    iget v9, p0, mFirstViewHeight:I
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_7d

    if-gez v9, :cond_55

    .line 539
    :try_start_31
    iget-object v9, p0, mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v10

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, p3, v0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;

    move-result-object v5

    .line 540
    .local v5, "firstView":Landroid/view/View;
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/view/View;->measure(II)V

    .line 543
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    iput v9, p0, mFirstViewHeight:I

    .line 544
    const/4 v9, 0x0

    iput-object v9, p0, mFirstView:Landroid/widget/RemoteViews;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_55} :catch_80
    .catchall {:try_start_31 .. :try_end_55} :catchall_7d

    .line 555
    .end local v5    # "firstView":Landroid/view/View;
    :cond_55
    :goto_55
    const v9, 0x10900db

    const/4 v10, 0x0

    :try_start_59
    move-object/from16 v0, p5

    invoke-virtual {v0, v9, v6, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 558
    .local v7, "loadingTextView":Landroid/widget/TextView;
    iget v9, p0, mFirstViewHeight:I

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setHeight(I)V

    .line 559
    new-instance v9, Ljava/lang/Integer;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 561
    invoke-virtual {v6, v7}, Landroid/widget/RemoteViewsAdapter$RemoteViewsFrameLayout;->addView(Landroid/view/View;)V

    .line 563
    .end local v7    # "loadingTextView":Landroid/widget/TextView;
    :cond_72
    monitor-exit p4

    .line 565
    return-object v6

    .line 529
    :catch_74
    move-exception v4

    .line 530
    .local v4, "e":Ljava/lang/Exception;
    const-string v9, "RemoteViewsAdapter"

    const-string v10, "Error inflating custom loading view, using default loadingview instead"

    invoke-static {v9, v10, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 563
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_7d
    move-exception v9

    monitor-exit p4
    :try_end_7f
    .catchall {:try_start_59 .. :try_end_7f} :catchall_7d

    throw v9

    .line 545
    :catch_80
    move-exception v4

    .line 546
    .restart local v4    # "e":Ljava/lang/Exception;
    :try_start_81
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v3, v9, Landroid/util/DisplayMetrics;->density:F

    .line 547
    .local v3, "density":F
    const/high16 v9, 0x42480000    # 50.0f

    mul-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, p0, mFirstViewHeight:I

    .line 549
    const/4 v9, 0x0

    iput-object v9, p0, mFirstView:Landroid/widget/RemoteViews;

    .line 550
    const-string v9, "RemoteViewsAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error inflating first RemoteViews"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_af
    .catchall {:try_start_81 .. :try_end_af} :catchall_7d

    goto :goto_55
.end method


# virtual methods
.method public getMappedViewType(I)I
    .registers 6
    .param p1, "typeId"    # I

    .prologue
    .line 490
    iget-object v1, p0, mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 491
    iget-object v1, p0, mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 496
    :goto_1c
    return v0

    .line 494
    :cond_1d
    iget-object v1, p0, mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 495
    .local v0, "incrementalTypeId":I
    iget-object v1, p0, mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c
.end method

.method public isViewTypeInRange(I)Z
    .registers 4
    .param p1, "typeId"    # I

    .prologue
    .line 501
    invoke-virtual {p0, p1}, getMappedViewType(I)I

    move-result v0

    .line 502
    .local v0, "mappedType":I
    iget v1, p0, viewTypeCount:I

    if-lt v0, v1, :cond_a

    .line 503
    const/4 v1, 0x0

    .line 505
    :goto_9
    return v1

    :cond_a
    const/4 v1, 0x1

    goto :goto_9
.end method

.method public reset()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 470
    iput v0, p0, count:I

    .line 473
    iput v1, p0, viewTypeCount:I

    .line 474
    iput-boolean v1, p0, hasStableIds:Z

    .line 475
    iput-object v2, p0, mUserLoadingView:Landroid/widget/RemoteViews;

    .line 476
    iput-object v2, p0, mFirstView:Landroid/widget/RemoteViews;

    .line 477
    iput v0, p0, mFirstViewHeight:I

    .line 478
    iget-object v0, p0, mTypeIdIndexMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 479
    return-void
.end method

.method public set(Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;)V
    .registers 4
    .param p1, "d"    # Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    .prologue
    .line 461
    monitor-enter p1

    .line 462
    :try_start_1
    iget v0, p1, count:I

    iput v0, p0, count:I

    .line 463
    iget v0, p1, viewTypeCount:I

    iput v0, p0, viewTypeCount:I

    .line 464
    iget-boolean v0, p1, hasStableIds:Z

    iput-boolean v0, p0, hasStableIds:Z

    .line 465
    iget-object v0, p1, mUserLoadingView:Landroid/widget/RemoteViews;

    iget-object v1, p1, mFirstView:Landroid/widget/RemoteViews;

    invoke-virtual {p0, v0, v1}, setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V

    .line 466
    monitor-exit p1

    .line 467
    return-void

    .line 466
    :catchall_16
    move-exception v0

    monitor-exit p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public setLoadingViewTemplates(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;)V
    .registers 4
    .param p1, "loadingView"    # Landroid/widget/RemoteViews;
    .param p2, "firstView"    # Landroid/widget/RemoteViews;

    .prologue
    .line 482
    iput-object p1, p0, mUserLoadingView:Landroid/widget/RemoteViews;

    .line 483
    if-eqz p2, :cond_9

    .line 484
    iput-object p2, p0, mFirstView:Landroid/widget/RemoteViews;

    .line 485
    const/4 v0, -0x1

    iput v0, p0, mFirstViewHeight:I

    .line 487
    :cond_9
    return-void
.end method
