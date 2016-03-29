.class public Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;
.super Ljava/lang/Object;
.source "RecentsViewLayoutAlgorithm.java"


# instance fields
.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;)V
    .locals 0
    .param p1, "config"    # Lcom/android/systemui/recents/RecentsConfiguration;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    .line 33
    return-void
.end method

.method private getRelativeCoordinate(IIII)I
    .locals 3
    .param p1, "availableOffset"    # I
    .param p2, "availableSize"    # I
    .param p3, "otherCoord"    # I
    .param p4, "otherSize"    # I

    .prologue
    .line 37
    int-to-float v1, p3

    int-to-float v2, p4

    div-float v0, v1, v2

    .line 38
    .local v0, "relPos":F
    int-to-float v1, p2

    mul-float/2addr v1, v0

    float-to-int v1, v1

    add-int/2addr v1, p1

    return v1
.end method


# virtual methods
.method computeStackRects(Ljava/util/List;Landroid/graphics/Rect;)Ljava/util/List;
    .locals 16
    .param p2, "availableBounds"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "stackViews":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/recents/views/TaskStackView;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .local v2, "bounds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v7

    .line 47
    .local v7, "stackViewsCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v7, :cond_0

    .line 48
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskStackView;->getStack()Lcom/android/systemui/recents/model/TaskStack;

    move-result-object v6

    .line 49
    .local v6, "stack":Lcom/android/systemui/recents/model/TaskStack;
    iget-object v5, v6, Lcom/android/systemui/recents/model/TaskStack;->stackBounds:Landroid/graphics/Rect;

    .line 50
    .local v5, "sb":Landroid/graphics/Rect;
    iget-object v3, v6, Lcom/android/systemui/recents/model/TaskStack;->displayBounds:Landroid/graphics/Rect;

    .line 51
    .local v3, "db":Landroid/graphics/Rect;
    move-object/from16 v1, p2

    .line 52
    .local v1, "ab":Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    iget v9, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget v11, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v12

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v11, v12}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;->getRelativeCoordinate(IIII)I

    move-result v9

    iget v10, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v11

    iget v12, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;->getRelativeCoordinate(IIII)I

    move-result v10

    iget v11, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    iget v13, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v13, v14}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;->getRelativeCoordinate(IIII)I

    move-result v11

    iget v12, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v13

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14, v15}, Lcom/android/systemui/recents/views/RecentsViewLayoutAlgorithm;->getRelativeCoordinate(IIII)I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "ab":Landroid/graphics/Rect;
    .end local v3    # "db":Landroid/graphics/Rect;
    .end local v5    # "sb":Landroid/graphics/Rect;
    .end local v6    # "stack":Lcom/android/systemui/recents/model/TaskStack;
    :cond_0
    return-object v2
.end method
