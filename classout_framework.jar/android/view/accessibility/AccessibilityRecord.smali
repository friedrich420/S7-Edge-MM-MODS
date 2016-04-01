.class public Landroid/view/accessibility/AccessibilityRecord;
.super Ljava/lang/Object;
.source "AccessibilityRecord.java"


# static fields
.field private static final GET_SOURCE_PREFETCH_FLAGS:I = 0x7

.field private static final MAX_POOL_SIZE:I = 0xa

.field private static final PROPERTY_CHECKED:I = 0x1

.field private static final PROPERTY_ENABLED:I = 0x2

.field private static final PROPERTY_FULL_SCREEN:I = 0x80

.field private static final PROPERTY_IMPORTANT_FOR_ACCESSIBILITY:I = 0x200

.field private static final PROPERTY_PASSWORD:I = 0x4

.field private static final PROPERTY_SCROLLABLE:I = 0x100

.field private static final UNDEFINED:I = -0x1

.field private static sPool:Landroid/view/accessibility/AccessibilityRecord;

.field private static final sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field mAddedCount:I

.field mBeforeText:Ljava/lang/CharSequence;

.field mBooleanProperties:I

.field mClassName:Ljava/lang/CharSequence;

.field mConnectionId:I

.field mContentDescription:Ljava/lang/CharSequence;

.field mCurrentItemIndex:I

.field mFromIndex:I

.field private mIsInPool:Z

.field mItemCount:I

.field mMaxScrollX:I

.field mMaxScrollY:I

.field private mNext:Landroid/view/accessibility/AccessibilityRecord;

.field mParcelableData:Landroid/os/Parcelable;

.field mRemovedCount:I

.field mScrollX:I

.field mScrollY:I

.field mSealed:Z

.field mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

.field mSourceWindowId:I

.field final mText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field mToIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput v0, p0, mBooleanProperties:I

    .line 82
    iput v1, p0, mCurrentItemIndex:I

    .line 83
    iput v1, p0, mItemCount:I

    .line 84
    iput v1, p0, mFromIndex:I

    .line 85
    iput v1, p0, mToIndex:I

    .line 86
    iput v1, p0, mScrollX:I

    .line 87
    iput v1, p0, mScrollY:I

    .line 88
    iput v1, p0, mMaxScrollX:I

    .line 89
    iput v1, p0, mMaxScrollY:I

    .line 91
    iput v1, p0, mAddedCount:I

    .line 92
    iput v1, p0, mRemovedCount:I

    .line 94
    iput v1, p0, mSourceWindowId:I

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mText:Ljava/util/List;

    .line 103
    iput v1, p0, mConnectionId:I

    .line 109
    return-void
.end method

.method private clearSourceNode()V
    .registers 2

    .prologue
    .line 830
    iget-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_c

    .line 831
    iget-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 832
    const/4 v0, 0x0

    iput-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 834
    :cond_c
    return-void
.end method

.method private getBooleanProperty(I)Z
    .registers 3
    .param p1, "property"    # I

    .prologue
    .line 701
    iget v0, p0, mBooleanProperties:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public static obtain()Landroid/view/accessibility/AccessibilityRecord;
    .registers 3

    .prologue
    .line 738
    sget-object v2, sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 739
    :try_start_3
    sget-object v1, sPool:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v1, :cond_1d

    .line 740
    sget-object v0, sPool:Landroid/view/accessibility/AccessibilityRecord;

    .line 741
    .local v0, "record":Landroid/view/accessibility/AccessibilityRecord;
    sget-object v1, sPool:Landroid/view/accessibility/AccessibilityRecord;

    iget-object v1, v1, mNext:Landroid/view/accessibility/AccessibilityRecord;

    sput-object v1, sPool:Landroid/view/accessibility/AccessibilityRecord;

    .line 742
    sget v1, sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, sPoolSize:I

    .line 743
    const/4 v1, 0x0

    iput-object v1, v0, mNext:Landroid/view/accessibility/AccessibilityRecord;

    .line 744
    const/4 v1, 0x0

    iput-boolean v1, v0, mIsInPool:Z

    .line 745
    monitor-exit v2

    .line 747
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityRecord;
    :goto_1c
    return-object v0

    :cond_1d
    new-instance v0, Landroid/view/accessibility/AccessibilityRecord;

    invoke-direct {v0}, <init>()V

    monitor-exit v2

    goto :goto_1c

    .line 748
    :catchall_24
    move-exception v1

    monitor-exit v2
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v1
.end method

.method public static obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;
    .registers 2
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .prologue
    .line 726
    invoke-static {}, obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v0

    .line 727
    .local v0, "clone":Landroid/view/accessibility/AccessibilityRecord;
    invoke-virtual {v0, p0}, init(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 728
    return-object v0
.end method

.method private setBooleanProperty(IZ)V
    .registers 5
    .param p1, "property"    # I
    .param p2, "value"    # Z

    .prologue
    .line 711
    if-eqz p2, :cond_8

    .line 712
    iget v0, p0, mBooleanProperties:I

    or-int/2addr v0, p1

    iput v0, p0, mBooleanProperties:I

    .line 716
    :goto_7
    return-void

    .line 714
    :cond_8
    iget v0, p0, mBooleanProperties:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, mBooleanProperties:I

    goto :goto_7
.end method


# virtual methods
.method clear()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 807
    iput-boolean v2, p0, mSealed:Z

    .line 808
    iput v2, p0, mBooleanProperties:I

    .line 809
    iput v1, p0, mCurrentItemIndex:I

    .line 810
    iput v1, p0, mItemCount:I

    .line 811
    iput v1, p0, mFromIndex:I

    .line 812
    iput v1, p0, mToIndex:I

    .line 813
    iput v1, p0, mScrollX:I

    .line 814
    iput v1, p0, mScrollY:I

    .line 815
    iput v1, p0, mMaxScrollX:I

    .line 816
    iput v1, p0, mMaxScrollY:I

    .line 817
    iput v1, p0, mAddedCount:I

    .line 818
    iput v1, p0, mRemovedCount:I

    .line 819
    iput-object v0, p0, mClassName:Ljava/lang/CharSequence;

    .line 820
    iput-object v0, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 821
    iput-object v0, p0, mBeforeText:Ljava/lang/CharSequence;

    .line 822
    iput-object v0, p0, mParcelableData:Landroid/os/Parcelable;

    .line 823
    iget-object v0, p0, mText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 824
    invoke-direct {p0}, clearSourceNode()V

    .line 825
    iput v1, p0, mSourceWindowId:I

    .line 826
    iput v1, p0, mConnectionId:I

    .line 827
    return-void
.end method

.method enforceNotSealed()V
    .registers 3

    .prologue
    .line 688
    invoke-virtual {p0}, isSealed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 689
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_e
    return-void
.end method

.method enforceSealed()V
    .registers 3

    .prologue
    .line 676
    invoke-virtual {p0}, isSealed()Z

    move-result v0

    if-nez v0, :cond_e

    .line 677
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot perform this action on a not sealed instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 680
    :cond_e
    return-void
.end method

.method public getAddedCount()I
    .registers 2

    .prologue
    .line 490
    iget v0, p0, mAddedCount:I

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 563
    iget-object v0, p0, mBeforeText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, mClassName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 584
    iget-object v0, p0, mContentDescription:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .registers 2

    .prologue
    .line 345
    iget v0, p0, mCurrentItemIndex:I

    return v0
.end method

.method public getFromIndex()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, mFromIndex:I

    return v0
.end method

.method public getItemCount()I
    .registers 2

    .prologue
    .line 324
    iget v0, p0, mItemCount:I

    return v0
.end method

.method public getMaxScrollX()I
    .registers 2

    .prologue
    .line 452
    iget v0, p0, mMaxScrollX:I

    return v0
.end method

.method public getMaxScrollY()I
    .registers 2

    .prologue
    .line 471
    iget v0, p0, mMaxScrollY:I

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .registers 2

    .prologue
    .line 605
    iget-object v0, p0, mParcelableData:Landroid/os/Parcelable;

    return-object v0
.end method

.method public getRemovedCount()I
    .registers 2

    .prologue
    .line 511
    iget v0, p0, mRemovedCount:I

    return v0
.end method

.method public getScrollX()I
    .registers 2

    .prologue
    .line 414
    iget v0, p0, mScrollX:I

    return v0
.end method

.method public getScrollY()I
    .registers 2

    .prologue
    .line 433
    iget v0, p0, mScrollY:I

    return v0
.end method

.method public getSource()Landroid/view/accessibility/AccessibilityNodeInfo;
    .registers 2

    .prologue
    .line 168
    invoke-virtual {p0}, enforceSealed()V

    .line 169
    iget-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_e

    .line 170
    iget-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 173
    :goto_d
    return-object v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getSourceNodeId()J
    .registers 3

    .prologue
    .line 628
    iget-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_b

    iget-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getSourceNodeId()J

    move-result-wide v0

    :goto_a
    return-wide v0

    :cond_b
    const-wide/16 v0, -0x1

    goto :goto_a
.end method

.method public getText()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    iget-object v0, p0, mText:Ljava/util/List;

    return-object v0
.end method

.method public getToIndex()I
    .registers 2

    .prologue
    .line 394
    iget v0, p0, mToIndex:I

    return v0
.end method

.method public getWindowId()I
    .registers 2

    .prologue
    .line 193
    iget v0, p0, mSourceWindowId:I

    return v0
.end method

.method init(Landroid/view/accessibility/AccessibilityRecord;)V
    .registers 4
    .param p1, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .prologue
    .line 779
    iget-boolean v0, p1, mSealed:Z

    iput-boolean v0, p0, mSealed:Z

    .line 780
    iget v0, p1, mBooleanProperties:I

    iput v0, p0, mBooleanProperties:I

    .line 781
    iget v0, p1, mCurrentItemIndex:I

    iput v0, p0, mCurrentItemIndex:I

    .line 782
    iget v0, p1, mItemCount:I

    iput v0, p0, mItemCount:I

    .line 783
    iget v0, p1, mFromIndex:I

    iput v0, p0, mFromIndex:I

    .line 784
    iget v0, p1, mToIndex:I

    iput v0, p0, mToIndex:I

    .line 785
    iget v0, p1, mScrollX:I

    iput v0, p0, mScrollX:I

    .line 786
    iget v0, p1, mScrollY:I

    iput v0, p0, mScrollY:I

    .line 787
    iget v0, p1, mMaxScrollX:I

    iput v0, p0, mMaxScrollX:I

    .line 788
    iget v0, p1, mMaxScrollY:I

    iput v0, p0, mMaxScrollY:I

    .line 789
    iget v0, p1, mAddedCount:I

    iput v0, p0, mAddedCount:I

    .line 790
    iget v0, p1, mRemovedCount:I

    iput v0, p0, mRemovedCount:I

    .line 791
    iget-object v0, p1, mClassName:Ljava/lang/CharSequence;

    iput-object v0, p0, mClassName:Ljava/lang/CharSequence;

    .line 792
    iget-object v0, p1, mContentDescription:Ljava/lang/CharSequence;

    iput-object v0, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 793
    iget-object v0, p1, mBeforeText:Ljava/lang/CharSequence;

    iput-object v0, p0, mBeforeText:Ljava/lang/CharSequence;

    .line 794
    iget-object v0, p1, mParcelableData:Landroid/os/Parcelable;

    iput-object v0, p0, mParcelableData:Landroid/os/Parcelable;

    .line 795
    iget-object v0, p0, mText:Ljava/util/List;

    iget-object v1, p1, mText:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 796
    iget v0, p1, mSourceWindowId:I

    iput v0, p0, mSourceWindowId:I

    .line 797
    iget-object v0, p1, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_57

    .line 798
    iget-object v0, p1, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    iput-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 800
    :cond_57
    iget v0, p1, mConnectionId:I

    iput v0, p0, mConnectionId:I

    .line 801
    return-void
.end method

.method public isChecked()Z
    .registers 2

    .prologue
    .line 202
    const/4 v0, 0x1

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 223
    const/4 v0, 0x2

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .registers 2

    .prologue
    .line 265
    const/16 v0, 0x80

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isImportantForAccessibility()Z
    .registers 2

    .prologue
    .line 315
    const/16 v0, 0x200

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2

    .prologue
    .line 244
    const/4 v0, 0x4

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2

    .prologue
    .line 286
    const/16 v0, 0x100

    invoke-direct {p0, v0}, getBooleanProperty(I)Z

    move-result v0

    return v0
.end method

.method isSealed()Z
    .registers 2

    .prologue
    .line 667
    iget-boolean v0, p0, mSealed:Z

    return v0
.end method

.method public recycle()V
    .registers 4

    .prologue
    .line 759
    iget-boolean v0, p0, mIsInPool:Z

    if-eqz v0, :cond_c

    .line 760
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Record already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_c
    invoke-virtual {p0}, clear()V

    .line 763
    sget-object v1, sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 764
    :try_start_12
    sget v0, sPoolSize:I

    const/16 v2, 0xa

    if-gt v0, v2, :cond_27

    .line 765
    sget-object v0, sPool:Landroid/view/accessibility/AccessibilityRecord;

    iput-object v0, p0, mNext:Landroid/view/accessibility/AccessibilityRecord;

    .line 766
    sput-object p0, sPool:Landroid/view/accessibility/AccessibilityRecord;

    .line 767
    const/4 v0, 0x1

    iput-boolean v0, p0, mIsInPool:Z

    .line 768
    sget v0, sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, sPoolSize:I

    .line 770
    :cond_27
    monitor-exit v1

    .line 771
    return-void

    .line 770
    :catchall_29
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_29

    throw v0
.end method

.method public setAddedCount(I)V
    .registers 2
    .param p1, "addedCount"    # I

    .prologue
    .line 501
    invoke-virtual {p0}, enforceNotSealed()V

    .line 502
    iput p1, p0, mAddedCount:I

    .line 503
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "beforeText"    # Ljava/lang/CharSequence;

    .prologue
    .line 574
    invoke-virtual {p0}, enforceNotSealed()V

    .line 575
    iput-object p1, p0, mBeforeText:Ljava/lang/CharSequence;

    .line 576
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "isChecked"    # Z

    .prologue
    .line 213
    invoke-virtual {p0}, enforceNotSealed()V

    .line 214
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 215
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "className"    # Ljava/lang/CharSequence;

    .prologue
    .line 543
    invoke-virtual {p0}, enforceNotSealed()V

    .line 544
    iput-object p1, p0, mClassName:Ljava/lang/CharSequence;

    .line 545
    return-void
.end method

.method public setConnectionId(I)V
    .registers 4
    .param p1, "connectionId"    # I

    .prologue
    .line 640
    invoke-virtual {p0}, enforceNotSealed()V

    .line 641
    iput p1, p0, mConnectionId:I

    .line 642
    iget-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_10

    .line 643
    iget-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    iget v1, p0, mConnectionId:I

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setConnectionId(I)V

    .line 645
    :cond_10
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 2
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;

    .prologue
    .line 595
    invoke-virtual {p0}, enforceNotSealed()V

    .line 596
    iput-object p1, p0, mContentDescription:Ljava/lang/CharSequence;

    .line 597
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .registers 2
    .param p1, "currentItemIndex"    # I

    .prologue
    .line 356
    invoke-virtual {p0}, enforceNotSealed()V

    .line 357
    iput p1, p0, mCurrentItemIndex:I

    .line 358
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z

    .prologue
    .line 234
    invoke-virtual {p0}, enforceNotSealed()V

    .line 235
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 236
    return-void
.end method

.method public setFromIndex(I)V
    .registers 2
    .param p1, "fromIndex"    # I

    .prologue
    .line 383
    invoke-virtual {p0}, enforceNotSealed()V

    .line 384
    iput p1, p0, mFromIndex:I

    .line 385
    return-void
.end method

.method public setFullScreen(Z)V
    .registers 3
    .param p1, "isFullScreen"    # Z

    .prologue
    .line 276
    invoke-virtual {p0}, enforceNotSealed()V

    .line 277
    const/16 v0, 0x80

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 278
    return-void
.end method

.method public setItemCount(I)V
    .registers 2
    .param p1, "itemCount"    # I

    .prologue
    .line 335
    invoke-virtual {p0}, enforceNotSealed()V

    .line 336
    iput p1, p0, mItemCount:I

    .line 337
    return-void
.end method

.method public setMaxScrollX(I)V
    .registers 2
    .param p1, "maxScrollX"    # I

    .prologue
    .line 461
    invoke-virtual {p0}, enforceNotSealed()V

    .line 462
    iput p1, p0, mMaxScrollX:I

    .line 463
    return-void
.end method

.method public setMaxScrollY(I)V
    .registers 2
    .param p1, "maxScrollY"    # I

    .prologue
    .line 480
    invoke-virtual {p0}, enforceNotSealed()V

    .line 481
    iput p1, p0, mMaxScrollY:I

    .line 482
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .registers 2
    .param p1, "parcelableData"    # Landroid/os/Parcelable;

    .prologue
    .line 616
    invoke-virtual {p0}, enforceNotSealed()V

    .line 617
    iput-object p1, p0, mParcelableData:Landroid/os/Parcelable;

    .line 618
    return-void
.end method

.method public setPassword(Z)V
    .registers 3
    .param p1, "isPassword"    # Z

    .prologue
    .line 255
    invoke-virtual {p0}, enforceNotSealed()V

    .line 256
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 257
    return-void
.end method

.method public setRemovedCount(I)V
    .registers 2
    .param p1, "removedCount"    # I

    .prologue
    .line 522
    invoke-virtual {p0}, enforceNotSealed()V

    .line 523
    iput p1, p0, mRemovedCount:I

    .line 524
    return-void
.end method

.method public setScrollX(I)V
    .registers 2
    .param p1, "scrollX"    # I

    .prologue
    .line 423
    invoke-virtual {p0}, enforceNotSealed()V

    .line 424
    iput p1, p0, mScrollX:I

    .line 425
    return-void
.end method

.method public setScrollY(I)V
    .registers 2
    .param p1, "scrollY"    # I

    .prologue
    .line 442
    invoke-virtual {p0}, enforceNotSealed()V

    .line 443
    iput p1, p0, mScrollY:I

    .line 444
    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z

    .prologue
    .line 297
    invoke-virtual {p0}, enforceNotSealed()V

    .line 298
    const/16 v0, 0x100

    invoke-direct {p0, v0, p1}, setBooleanProperty(IZ)V

    .line 299
    return-void
.end method

.method public setSealed(Z)V
    .registers 3
    .param p1, "sealed"    # Z

    .prologue
    .line 655
    iput-boolean p1, p0, mSealed:Z

    .line 656
    iget-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    if-eqz v0, :cond_b

    .line 657
    iget-object v0, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSealed(Z)V

    .line 659
    :cond_b
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 3
    .param p1, "source"    # Landroid/view/View;

    .prologue
    .line 119
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, setSource(Landroid/view/View;I)V

    .line 120
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 6
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .prologue
    const/4 v2, -0x1

    .line 137
    invoke-virtual {p0}, enforceNotSealed()V

    .line 138
    const/4 v0, 0x1

    .line 139
    .local v0, "important":Z
    iput v2, p0, mSourceWindowId:I

    .line 140
    invoke-direct {p0}, clearSourceNode()V

    .line 141
    if-eqz p1, :cond_23

    .line 142
    if-eq p2, v2, :cond_13

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_29

    .line 144
    :cond_13
    invoke-virtual {p1}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iput-object v2, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 153
    :cond_1d
    :goto_1d
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityWindowId()I

    move-result v2

    iput v2, p0, mSourceWindowId:I

    .line 155
    :cond_23
    const/16 v2, 0x200

    invoke-direct {p0, v2, v0}, setBooleanProperty(IZ)V

    .line 156
    return-void

    .line 147
    :cond_29
    invoke-virtual {p1}, Landroid/view/View;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    .line 148
    .local v1, "provider":Landroid/view/accessibility/AccessibilityNodeProvider;
    if-eqz v1, :cond_1d

    .line 149
    invoke-virtual {v1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    iput-object v2, p0, mSourceNode:Landroid/view/accessibility/AccessibilityNodeInfo;

    goto :goto_1d
.end method

.method public setToIndex(I)V
    .registers 2
    .param p1, "toIndex"    # I

    .prologue
    .line 404
    invoke-virtual {p0}, enforceNotSealed()V

    .line 405
    iput p1, p0, mToIndex:I

    .line 406
    return-void
.end method

.method public setWindowId(I)V
    .registers 2
    .param p1, "windowId"    # I

    .prologue
    .line 184
    iput p1, p0, mSourceWindowId:I

    .line 185
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [ ClassName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mClassName:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 840
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; Text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mText:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 841
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ContentDescription: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ItemCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mItemCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 843
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; CurrentItemIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mCurrentItemIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 844
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {p0, v2}, getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsPassword: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    invoke-direct {p0, v2}, getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsChecked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; IsFullScreen: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x80

    invoke-direct {p0, v2}, getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; Scrollable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {p0, v2}, getBooleanProperty(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 849
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; BeforeText: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mBeforeText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; FromIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mFromIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ToIndex: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mToIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 852
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ScrollX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ScrollY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; MaxScrollX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mMaxScrollX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; MaxScrollY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mMaxScrollY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; AddedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mAddedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; RemovedCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, mRemovedCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 858
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "; ParcelableData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, mParcelableData:Landroid/os/Parcelable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    const-string v1, " ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
