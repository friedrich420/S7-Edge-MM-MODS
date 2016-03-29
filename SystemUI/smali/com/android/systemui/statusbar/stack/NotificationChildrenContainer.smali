.class public Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
.super Landroid/view/ViewGroup;
.source "NotificationChildrenContainer.java"


# instance fields
.field private final mChildPadding:I

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollapseButton:Landroid/view/View;

.field private final mCollapseButtonHeight:I

.field private final mCollapseDivider:Landroid/view/View;

.field private final mDividerHeight:I

.field private final mDividers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxNotificationHeight:I

.field private final mNotificationAppearDistance:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0196

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0197

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c00e5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mMaxNotificationHeight:I

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0198

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationAppearDistance:I

    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/LayoutInflater;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 72
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04004a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButton:Landroid/view/View;

    .line 74
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0195

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonHeight:I

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButton:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseDivider:Landroid/view/View;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseDivider:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 79
    return-void
.end method

.method private inflateDivider()Landroid/view/View;
    .locals 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040049

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p2, "childIndex"    # I

    .prologue
    .line 160
    if-gez p2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 161
    .local v1, "newIndex":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 162
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "divider":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    add-int/lit8 v3, v1, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v2, v3, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 170
    .end local v0    # "divider":Landroid/view/View;
    :cond_0
    return-void

    .end local v1    # "newIndex":I
    :cond_1
    move v1, p2

    .line 160
    goto :goto_0
.end method

.method public applyChildOrder(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "childOrder":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    if-nez p1, :cond_1

    .line 201
    const/4 v4, 0x0

    .line 221
    :cond_0
    return v4

    .line 203
    :cond_1
    const/4 v4, 0x0

    .line 204
    .local v4, "result":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 205
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 206
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 207
    .local v1, "desiredChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    if-eq v0, v1, :cond_2

    .line 208
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 209
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 210
    const/4 v4, 0x1

    .line 204
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v1    # "desiredChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_3
    const/4 v2, 0x1

    .line 216
    .local v2, "first":Z
    const/4 v3, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 217
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 218
    .restart local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 219
    const/4 v2, 0x0

    .line 216
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 10
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 281
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 282
    .local v1, "childCount":I
    const/4 v4, 0x1

    .line 283
    .local v4, "firstChild":Z
    new-instance v3, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 284
    .local v3, "dividerState":Lcom/android/systemui/statusbar/stack/ViewState;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 285
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 286
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v6

    .line 287
    .local v6, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 284
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 290
    :cond_0
    if-nez v4, :cond_1

    .line 292
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 293
    .local v2, "divider":Landroid/view/View;
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 294
    iget v7, v6, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v7, v8

    float-to-int v7, v7

    int-to-float v7, v7

    iput v7, v3, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 296
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, v3, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 297
    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 301
    .end local v2    # "divider":Landroid/view/View;
    :goto_2
    invoke-virtual {p1, v0, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    goto :goto_1

    .line 299
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 303
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v6    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 7

    .prologue
    .line 225
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    .line 226
    .local v1, "childCount":I
    const/4 v3, 0x0

    .line 227
    .local v3, "intrinsicHeight":I
    const/4 v4, 0x0

    .line 228
    .local v4, "visibleChildren":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 229
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 230
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_0

    .line 228
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 233
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v3, v5

    .line 234
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 236
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_1
    if-lez v4, :cond_2

    .line 237
    add-int/lit8 v5, v4, -0x1

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    mul-int/2addr v5, v6

    add-int/2addr v3, v5

    .line 239
    :cond_2
    return v3
.end method

.method public getNotificationChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackViewState;)V
    .locals 10
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "parentState"    # Lcom/android/systemui/statusbar/stack/StackViewState;

    .prologue
    const/4 v9, 0x0

    .line 249
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 250
    .local v1, "childCount":I
    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonHeight:I

    .line 251
    .local v6, "yPosition":I
    const/4 v3, 0x1

    .line 252
    .local v3, "firstChild":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 253
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 254
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_0

    .line 252
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 257
    :cond_0
    if-nez v3, :cond_1

    .line 259
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    add-int/2addr v6, v7

    .line 263
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v2

    .line 264
    .local v2, "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    .line 265
    .local v5, "intrinsicHeight":I
    int-to-float v7, v6

    iput v7, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 266
    const/4 v7, 0x0

    iput v7, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    .line 267
    iput v5, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    .line 268
    iget-boolean v7, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    iput-boolean v7, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    .line 269
    iget-boolean v7, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    iput-boolean v7, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    .line 270
    iget-boolean v7, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    iput-boolean v7, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    .line 271
    iget-boolean v7, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    iput-boolean v7, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    .line 272
    iget v7, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->scale:F

    iput v7, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->scale:F

    .line 273
    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    .line 274
    iput v9, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->topOverLap:I

    .line 275
    iget v7, p2, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    iput v7, v2, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    .line 276
    add-int/2addr v6, v5

    goto :goto_1

    .line 261
    .end local v2    # "childState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v5    # "intrinsicHeight":I
    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    .line 278
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    return-void
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 7
    .param p1, "y"    # F

    .prologue
    .line 390
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 391
    .local v3, "count":I
    const/4 v1, 0x0

    .local v1, "childIdx":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 392
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 393
    .local v4, "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    .line 394
    .local v2, "childTop":F
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v6

    int-to-float v6, v6

    add-float v5, v2, v6

    .line 395
    .local v5, "top":F
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v2, v6

    .line 396
    .local v0, "bottom":F
    cmpl-float v6, p1, v5

    if-ltz v6, :cond_0

    cmpg-float v6, p1, v0

    if-gtz v6, :cond_0

    .line 400
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v4    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "top":F
    :goto_1
    return-object v4

    .line 391
    .restart local v0    # "bottom":F
    .restart local v2    # "childTop":F
    .restart local v4    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v5    # "top":F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "bottom":F
    .end local v2    # "childTop":F
    .end local v4    # "slidingChild":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v5    # "top":F
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 83
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 84
    .local v1, "childCount":I
    const/4 v4, 0x1

    .line 85
    .local v4, "firstChild":Z
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_5

    .line 86
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 87
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_1

    const/4 v7, 0x1

    .line 88
    .local v7, "viewGone":Z
    :goto_1
    if-eqz v5, :cond_0

    .line 89
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    add-int/lit8 v9, v5, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 90
    .local v2, "divider":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    .line 91
    .local v3, "dividerVisibility":I
    if-eqz v7, :cond_2

    const/4 v6, 0x4

    .line 92
    .local v6, "newVisibility":I
    :goto_2
    if-eq v3, v6, :cond_0

    .line 93
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 96
    .end local v2    # "divider":Landroid/view/View;
    .end local v3    # "dividerVisibility":I
    .end local v6    # "newVisibility":I
    :cond_0
    if-eqz v7, :cond_3

    .line 85
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 87
    .end local v7    # "viewGone":Z
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 91
    .restart local v2    # "divider":Landroid/view/View;
    .restart local v3    # "dividerVisibility":I
    .restart local v7    # "viewGone":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 99
    .end local v2    # "divider":Landroid/view/View;
    .end local v3    # "dividerVisibility":I
    :cond_3
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v0, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 100
    if-nez v4, :cond_4

    .line 101
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    add-int/lit8 v9, v5, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 103
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 106
    .end local v0    # "child":Landroid/view/View;
    .end local v7    # "viewGone":Z
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButton:Landroid/view/View;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonHeight:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 107
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseDivider:Landroid/view/View;

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonHeight:I

    iget v11, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    sub-int/2addr v10, v11

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v11

    iget v12, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonHeight:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 109
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 113
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mMaxNotificationHeight:I

    .line 114
    .local v14, "ownMaxHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 115
    .local v10, "heightMode":I
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v10, v0, :cond_2

    const/4 v8, 0x1

    .line 116
    .local v8, "hasFixedHeight":Z
    :goto_0
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    if-ne v10, v0, :cond_3

    const/4 v12, 0x1

    .line 117
    .local v12, "isHeightLimited":Z
    :goto_1
    if-nez v8, :cond_0

    if-eqz v12, :cond_1

    .line 118
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 119
    .local v15, "size":I
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 121
    .end local v15    # "size":I
    :cond_1
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 122
    .local v13, "newHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 123
    .local v6, "dividerHeightSpec":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonHeight:I

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 125
    .local v4, "collapseButtonHeightSpec":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButton:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->measure(II)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseDivider:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1, v6}, Landroid/view/View;->measure(II)V

    .line 127
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButtonHeight:I

    .line 128
    .local v9, "height":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v3

    .line 129
    .local v3, "childCount":I
    const/4 v7, 0x1

    .line 130
    .local v7, "firstChild":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_2
    if-ge v11, v3, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 132
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 130
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 115
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childCount":I
    .end local v4    # "collapseButtonHeightSpec":I
    .end local v6    # "dividerHeightSpec":I
    .end local v7    # "firstChild":Z
    .end local v8    # "hasFixedHeight":Z
    .end local v9    # "height":I
    .end local v11    # "i":I
    .end local v12    # "isHeightLimited":Z
    .end local v13    # "newHeightSpec":I
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 116
    .restart local v8    # "hasFixedHeight":Z
    :cond_3
    const/4 v12, 0x0

    goto :goto_1

    .line 135
    .restart local v2    # "child":Landroid/view/View;
    .restart local v3    # "childCount":I
    .restart local v4    # "collapseButtonHeightSpec":I
    .restart local v6    # "dividerHeightSpec":I
    .restart local v7    # "firstChild":Z
    .restart local v9    # "height":I
    .restart local v11    # "i":I
    .restart local v12    # "isHeightLimited":Z
    .restart local v13    # "newHeightSpec":I
    :cond_4
    move/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Landroid/view/View;->measure(II)V

    .line 136
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v17

    add-int v9, v9, v17

    .line 137
    if-nez v7, :cond_5

    .line 139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    move-object/from16 v17, v0

    add-int/lit8 v18, v11, -0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 140
    .local v5, "divider":Landroid/view/View;
    move/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/view/View;->measure(II)V

    .line 141
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    move/from16 v17, v0

    add-int v9, v9, v17

    .line 142
    goto :goto_3

    .line 143
    .end local v5    # "divider":Landroid/view/View;
    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    .line 146
    .end local v2    # "child":Landroid/view/View;
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 147
    .local v16, "width":I
    if-eqz v8, :cond_8

    move v9, v14

    .line 150
    :cond_7
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setMeasuredDimension(II)V

    .line 151
    return-void

    .line 147
    :cond_8
    if-eqz v12, :cond_7

    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    goto :goto_4
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 12
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    const/4 v11, 0x0

    .line 316
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    .line 317
    .local v1, "childCount":I
    const/4 v4, 0x1

    .line 318
    .local v4, "firstChild":Z
    new-instance v6, Lcom/android/systemui/statusbar/stack/StackViewState;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/stack/StackViewState;-><init>()V

    .line 319
    .local v6, "sourceState":Lcom/android/systemui/statusbar/stack/StackViewState;
    new-instance v3, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 320
    .local v3, "dividerState":Lcom/android/systemui/statusbar/stack/ViewState;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v1, :cond_2

    .line 321
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 322
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v7

    .line 323
    .local v7, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_0

    .line 320
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 326
    :cond_0
    if-nez v4, :cond_1

    .line 328
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    add-int/lit8 v9, v5, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 329
    .local v2, "divider":Landroid/view/View;
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 330
    iget v8, v7, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v9, v10

    int-to-float v9, v9

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    sub-float/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationAppearDistance:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v3, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 332
    iput v11, v3, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 333
    invoke-virtual {p1, v2, v3}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 337
    .end local v2    # "divider":Landroid/view/View;
    :goto_2
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/stack/StackViewState;->copyFrom(Lcom/android/systemui/statusbar/stack/ViewState;)V

    .line 338
    iput v11, v6, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    .line 339
    iget v8, v6, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationAppearDistance:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    iput v8, v6, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    .line 340
    invoke-virtual {p1, v0, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    goto :goto_1

    .line 335
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 342
    .end local v0    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v7    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setAlpha(F)V

    .line 343
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseDivider:Landroid/view/View;

    invoke-virtual {v8, v11}, Landroid/view/View;->setAlpha(F)V

    .line 344
    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseDivider:Landroid/view/View;

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationAppearDistance:I

    div-int/lit8 v9, v9, 0x4

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 345
    return-void
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 5
    .param p1, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 174
    .local v0, "childIndex":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 176
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 178
    .local v1, "divider":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    .line 180
    .end local v1    # "divider":Landroid/view/View;
    :cond_0
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    .line 182
    return-void
.end method

.method public setCollapseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "collapseClickListener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    return-void
.end method

.method public setTintColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseDivider:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->applyTint(Landroid/view/View;I)V

    .line 405
    return-void
.end method

.method public startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackStateAnimator;ZJJ)V
    .locals 24
    .param p1, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "stateAnimator"    # Lcom/android/systemui/statusbar/stack/StackStateAnimator;
    .param p3, "withDelays"    # Z
    .param p4, "baseDelay"    # J
    .param p6, "duration"    # J

    .prologue
    .line 349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 350
    .local v2, "childCount":I
    const/16 v21, 0x1

    .line 351
    .local v21, "firstChild":Z
    new-instance v5, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    .line 352
    .local v5, "dividerState":Lcom/android/systemui/statusbar/stack/ViewState;
    const/16 v23, 0x0

    .line 353
    .local v23, "notGoneIndex":I
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    if-ge v0, v2, :cond_3

    .line 354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 355
    .local v10, "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v11

    .line 356
    .local v11, "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_0

    .line 353
    :goto_1
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 359
    :cond_0
    const/4 v3, 0x3

    add-int/lit8 v8, v23, 0x1

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v20

    .line 361
    .local v20, "difference":I
    if-eqz p3, :cond_1

    mul-int/lit8 v3, v20, 0x36

    int-to-long v6, v3

    .line 364
    .local v6, "delay":J
    :goto_2
    add-long v6, v6, p4

    .line 365
    if-nez v21, :cond_2

    .line 367
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    add-int/lit8 v8, v22, -0x1

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 368
    .local v4, "divider":Landroid/view/View;
    invoke-virtual {v5, v4}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 369
    iget v3, v11, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v3, v8

    iput v3, v5, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 371
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v5, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move-object/from16 v3, p2

    move-wide/from16 v8, p6

    .line 372
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 376
    .end local v4    # "divider":Landroid/view/View;
    :goto_3
    const/4 v13, -0x1

    move-object/from16 v9, p2

    move-object/from16 v12, p1

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startStackAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;IJ)V

    .line 377
    add-int/lit8 v23, v23, 0x1

    goto :goto_1

    .line 361
    .end local v6    # "delay":J
    :cond_1
    const-wide/16 v6, 0x0

    goto :goto_2

    .line 374
    .restart local v6    # "delay":J
    :cond_2
    const/16 v21, 0x0

    goto :goto_3

    .line 379
    .end local v6    # "delay":J
    .end local v10    # "child":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v11    # "viewState":Lcom/android/systemui/statusbar/stack/StackViewState;
    .end local v20    # "difference":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButton:Landroid/view/View;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 380
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v5, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 381
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseButton:Landroid/view/View;

    move-object/from16 v13, p2

    move-object v15, v5

    move-wide/from16 v16, p4

    move-wide/from16 v18, p6

    invoke-virtual/range {v13 .. v19}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 382
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseDivider:Landroid/view/View;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    .line 383
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v5, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    .line 384
    const/4 v3, 0x0

    iput v3, v5, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    .line 385
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapseDivider:Landroid/view/View;

    move-object/from16 v13, p2

    move-object v15, v5

    move-wide/from16 v16, p4

    move-wide/from16 v18, p6

    invoke-virtual/range {v13 .. v19}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    .line 386
    return-void
.end method
