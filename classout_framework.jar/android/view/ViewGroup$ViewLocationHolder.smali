.class Landroid/view/ViewGroup$ViewLocationHolder;
.super Ljava/lang/Object;
.source "ViewGroup.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewLocationHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/view/ViewGroup$ViewLocationHolder;",
        ">;"
    }
.end annotation


# static fields
.field public static final COMPARISON_STRATEGY_LOCATION:I = 0x2

.field public static final COMPARISON_STRATEGY_STRIPE:I = 0x1

.field private static final MAX_POOL_SIZE:I = 0x20

.field private static sComparisonStrategy:I

.field private static final sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/view/ViewGroup$ViewLocationHolder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mLayoutDirection:I

.field private final mLocation:Landroid/graphics/Rect;

.field public mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8024
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    .line 8031
    const/4 v0, 0x1

    sput v0, sComparisonStrategy:I

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .prologue
    .line 8020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8033
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mLocation:Landroid/graphics/Rect;

    return-void
.end method

.method private clear()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 8116
    const/4 v0, 0x0

    iput-object v0, p0, mView:Landroid/view/View;

    .line 8117
    iget-object v0, p0, mLocation:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 8118
    return-void
.end method

.method private init(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 5
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 8108
    iget-object v0, p0, mLocation:Landroid/graphics/Rect;

    .line 8109
    .local v0, "viewLocation":Landroid/graphics/Rect;
    invoke-virtual {p2, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 8110
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 8111
    iput-object p2, p0, mView:Landroid/view/View;

    .line 8112
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    iput v1, p0, mLayoutDirection:I

    .line 8113
    return-void
.end method

.method public static obtain(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/ViewGroup$ViewLocationHolder;
    .registers 4
    .param p0, "root"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 8040
    sget-object v1, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v1}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$ViewLocationHolder;

    .line 8041
    .local v0, "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    if-nez v0, :cond_f

    .line 8042
    new-instance v0, Landroid/view/ViewGroup$ViewLocationHolder;

    .end local v0    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    invoke-direct {v0}, <init>()V

    .line 8044
    .restart local v0    # "holder":Landroid/view/ViewGroup$ViewLocationHolder;
    :cond_f
    invoke-direct {v0, p0, p1}, init(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 8045
    return-object v0
.end method

.method public static setComparisonStrategy(I)V
    .registers 1
    .param p0, "strategy"    # I

    .prologue
    .line 8049
    sput p0, sComparisonStrategy:I

    .line 8050
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I
    .registers 9
    .param p1, "another"    # Landroid/view/ViewGroup$ViewLocationHolder;

    .prologue
    const/4 v1, 0x1

    .line 8060
    if-nez p1, :cond_4

    .line 8104
    :cond_3
    :goto_3
    return v1

    .line 8064
    :cond_4
    sget v5, sComparisonStrategy:I

    if-ne v5, v1, :cond_20

    .line 8066
    iget-object v5, p0, mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p1, mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    if-gtz v5, :cond_15

    .line 8067
    const/4 v1, -0x1

    goto :goto_3

    .line 8070
    :cond_15
    iget-object v5, p0, mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p1, mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    if-gez v5, :cond_3

    .line 8076
    :cond_20
    iget v5, p0, mLayoutDirection:I

    if-nez v5, :cond_3e

    .line 8077
    iget-object v5, p0, mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p1, mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v6

    .line 8078
    .local v1, "leftDifference":I
    if-nez v1, :cond_3

    .line 8088
    .end local v1    # "leftDifference":I
    :cond_30
    iget-object v5, p0, mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p1, mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int v3, v5, v6

    .line 8089
    .local v3, "topDifference":I
    if-eqz v3, :cond_4c

    move v1, v3

    .line 8090
    goto :goto_3

    .line 8082
    .end local v3    # "topDifference":I
    :cond_3e
    iget-object v5, p0, mLocation:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget-object v6, p1, mLocation:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v2, v5, v6

    .line 8083
    .local v2, "rightDifference":I
    if-eqz v2, :cond_30

    .line 8084
    neg-int v1, v2

    goto :goto_3

    .line 8093
    .end local v2    # "rightDifference":I
    .restart local v3    # "topDifference":I
    :cond_4c
    iget-object v5, p0, mLocation:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iget-object v6, p1, mLocation:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v0, v5, v6

    .line 8094
    .local v0, "heightDiference":I
    if-eqz v0, :cond_5e

    .line 8095
    neg-int v1, v0

    goto :goto_3

    .line 8098
    :cond_5e
    iget-object v5, p0, mLocation:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    iget-object v6, p1, mLocation:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v4, v5, v6

    .line 8099
    .local v4, "widthDiference":I
    if-eqz v4, :cond_70

    .line 8100
    neg-int v1, v4

    goto :goto_3

    .line 8104
    :cond_70
    iget-object v5, p0, mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v5

    iget-object v6, p1, mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAccessibilityViewId()I

    move-result v6

    sub-int v1, v5, v6

    goto :goto_3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 8020
    check-cast p1, Landroid/view/ViewGroup$ViewLocationHolder;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, compareTo(Landroid/view/ViewGroup$ViewLocationHolder;)I

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2

    .prologue
    .line 8053
    invoke-direct {p0}, clear()V

    .line 8054
    sget-object v0, sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 8055
    return-void
.end method
