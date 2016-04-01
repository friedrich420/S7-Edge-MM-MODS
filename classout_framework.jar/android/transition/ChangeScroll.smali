.class public Landroid/transition/ChangeScroll;
.super Landroid/transition/Transition;
.source "ChangeScroll.java"


# static fields
.field private static final PROPNAME_SCROLL_X:Ljava/lang/String; = "android:changeScroll:x"

.field private static final PROPNAME_SCROLL_Y:Ljava/lang/String; = "android:changeScroll:y"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .registers 5
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 54
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeScroll:x"

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollX()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v1, "android:changeScroll:y"

    iget-object v2, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 50
    invoke-direct {p0, p1}, captureValues(Landroid/transition/TransitionValues;)V

    .line 51
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 45
    invoke-direct {p0, p1}, captureValues(Landroid/transition/TransitionValues;)V

    .line 46
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 16
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 61
    if-eqz p2, :cond_7

    if-nez p3, :cond_9

    .line 62
    :cond_7
    const/4 v7, 0x0

    .line 79
    :goto_8
    return-object v7

    .line 64
    :cond_9
    iget-object v6, p3, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 65
    .local v6, "view":Landroid/view/View;
    iget-object v7, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeScroll:x"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 66
    .local v4, "startX":I
    iget-object v7, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeScroll:x"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 67
    .local v0, "endX":I
    iget-object v7, p2, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeScroll:y"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 68
    .local v5, "startY":I
    iget-object v7, p3, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v8, "android:changeScroll:y"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 69
    .local v1, "endY":I
    const/4 v2, 0x0

    .line 70
    .local v2, "scrollXAnimator":Landroid/animation/Animator;
    const/4 v3, 0x0

    .line 71
    .local v3, "scrollYAnimator":Landroid/animation/Animator;
    if-eq v4, v0, :cond_57

    .line 72
    invoke-virtual {v6, v4}, Landroid/view/View;->setScrollX(I)V

    .line 73
    const-string/jumbo v7, "scrollX"

    new-array v8, v11, [I

    aput v4, v8, v9

    aput v0, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 75
    :cond_57
    if-eq v5, v1, :cond_69

    .line 76
    invoke-virtual {v6, v5}, Landroid/view/View;->setScrollY(I)V

    .line 77
    const-string/jumbo v7, "scrollY"

    new-array v8, v11, [I

    aput v5, v8, v9

    aput v1, v8, v10

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 79
    :cond_69
    invoke-static {v2, v3}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v7

    goto :goto_8
.end method
