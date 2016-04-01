.class public Landroid/transition/ChangeBounds;
.super Landroid/transition/Transition;
.source "ChangeBounds.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/ChangeBounds$ViewBounds;
    }
.end annotation


# static fields
.field private static final BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "ChangeBounds"

.field private static final POSITION_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROPNAME_BOUNDS:Ljava/lang/String; = "android:changeBounds:bounds"

.field private static final PROPNAME_CLIP:Ljava/lang/String; = "android:changeBounds:clip"

.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:changeBounds:parent"

.field private static final PROPNAME_WINDOW_X:Ljava/lang/String; = "android:changeBounds:windowX"

.field private static final PROPNAME_WINDOW_Y:Ljava/lang/String; = "android:changeBounds:windowY"

.field private static final TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOP_LEFT_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/transition/ChangeBounds$ViewBounds;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private static sRectEvaluator:Landroid/animation/RectEvaluator;

.field private static final sTransitionProperties:[Ljava/lang/String;


# instance fields
.field mReparent:Z

.field mResizeClip:Z

.field tempLocation:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android:changeBounds:bounds"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android:changeBounds:clip"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android:changeBounds:parent"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android:changeBounds:windowX"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "android:changeBounds:windowY"

    aput-object v2, v0, v1

    sput-object v0, sTransitionProperties:[Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/transition/ChangeBounds$1;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "boundsOrigin"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    .line 86
    new-instance v0, Landroid/transition/ChangeBounds$2;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$2;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, TOP_LEFT_PROPERTY:Landroid/util/Property;

    .line 99
    new-instance v0, Landroid/transition/ChangeBounds$3;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$3;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    .line 112
    new-instance v0, Landroid/transition/ChangeBounds$4;

    const-class v1, Landroid/graphics/PointF;

    const-string v2, "bottomRight"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$4;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    .line 129
    new-instance v0, Landroid/transition/ChangeBounds$5;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "topLeft"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    .line 146
    new-instance v0, Landroid/transition/ChangeBounds$6;

    const-class v1, Landroid/graphics/PointF;

    const-string/jumbo v2, "position"

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$6;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, POSITION_PROPERTY:Landroid/util/Property;

    .line 168
    new-instance v0, Landroid/animation/RectEvaluator;

    invoke-direct {v0}, Landroid/animation/RectEvaluator;-><init>()V

    sput-object v0, sRectEvaluator:Landroid/animation/RectEvaluator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0}, Landroid/transition/Transition;-><init>()V

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, tempLocation:[I

    .line 164
    iput-boolean v1, p0, mResizeClip:Z

    .line 165
    iput-boolean v1, p0, mReparent:Z

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 173
    invoke-direct {p0, p1, p2}, Landroid/transition/Transition;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 163
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, tempLocation:[I

    .line 164
    iput-boolean v3, p0, mResizeClip:Z

    .line 165
    iput-boolean v3, p0, mReparent:Z

    .line 175
    sget-object v2, Lcom/android/internal/R$styleable;->ChangeBounds:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 176
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 177
    .local v1, "resizeClip":Z
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    invoke-virtual {p0, v1}, setResizeClip(Z)V

    .line 179
    return-void
.end method

.method private captureValues(Landroid/transition/TransitionValues;)V
    .registers 10
    .param p1, "values"    # Landroid/transition/TransitionValues;

    .prologue
    .line 233
    iget-object v0, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 235
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v1, :cond_77

    .line 236
    :cond_14
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:bounds"

    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:parent"

    iget-object v3, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-boolean v1, p0, mReparent:Z

    if-eqz v1, :cond_68

    .line 240
    iget-object v1, p1, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    iget-object v2, p0, tempLocation:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 241
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowX"

    iget-object v3, p0, tempLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:windowY"

    iget-object v3, p0, tempLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_68
    iget-boolean v1, p0, mResizeClip:Z

    if-eqz v1, :cond_77

    .line 245
    iget-object v1, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:changeBounds:clip"

    invoke-virtual {v0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    :cond_77
    return-void
.end method

.method private parentMatches(Landroid/view/View;Landroid/view/View;)Z
    .registers 8
    .param p1, "startParent"    # Landroid/view/View;
    .param p2, "endParent"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 261
    const/4 v1, 0x1

    .line 262
    .local v1, "parentMatches":Z
    iget-boolean v4, p0, mReparent:Z

    if-eqz v4, :cond_10

    .line 263
    invoke-virtual {p0, p1, v2}, getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v0

    .line 264
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-nez v0, :cond_13

    .line 265
    if-ne p1, p2, :cond_11

    move v1, v2

    .line 270
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    :cond_10
    :goto_10
    return v1

    .restart local v0    # "endValues":Landroid/transition/TransitionValues;
    :cond_11
    move v1, v3

    .line 265
    goto :goto_10

    .line 267
    :cond_13
    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne p2, v4, :cond_19

    move v1, v2

    :goto_18
    goto :goto_10

    :cond_19
    move v1, v3

    goto :goto_18
.end method


# virtual methods
.method public captureEndValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 257
    invoke-direct {p0, p1}, captureValues(Landroid/transition/TransitionValues;)V

    .line 258
    return-void
.end method

.method public captureStartValues(Landroid/transition/TransitionValues;)V
    .registers 2
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 252
    invoke-direct {p0, p1}, captureValues(Landroid/transition/TransitionValues;)V

    .line 253
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 62
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 276
    if-eqz p2, :cond_4

    if-nez p3, :cond_7

    .line 277
    :cond_4
    const/16 v18, 0x0

    .line 466
    :cond_6
    :goto_6
    return-object v18

    .line 279
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v47, v0

    .line 280
    .local v47, "startParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p3

    iget-object v0, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    move-object/from16 v29, v0

    .line 281
    .local v29, "endParentVals":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "android:changeBounds:parent"

    move-object/from16 v0, v47

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Landroid/view/ViewGroup;

    .line 282
    .local v46, "startParent":Landroid/view/ViewGroup;
    const-string v4, "android:changeBounds:parent"

    move-object/from16 v0, v29

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup;

    .line 283
    .local v28, "endParent":Landroid/view/ViewGroup;
    if-eqz v46, :cond_2b

    if-nez v28, :cond_2e

    .line 284
    :cond_2b
    const/16 v18, 0x0

    goto :goto_6

    .line 286
    :cond_2e
    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 287
    .local v6, "view":Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, v46

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, parentMatches(Landroid/view/View;Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_269

    .line 288
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/graphics/Rect;

    .line 289
    .local v42, "startBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:bounds"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/graphics/Rect;

    .line 290
    .local v25, "endBounds":Landroid/graphics/Rect;
    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v45, v0

    .line 291
    .local v45, "startLeft":I
    move-object/from16 v0, v25

    iget v8, v0, Landroid/graphics/Rect;->left:I

    .line 292
    .local v8, "endLeft":I
    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v49, v0

    .line 293
    .local v49, "startTop":I
    move-object/from16 v0, v25

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .line 294
    .local v9, "endTop":I
    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v48, v0

    .line 295
    .local v48, "startRight":I
    move-object/from16 v0, v25

    iget v10, v0, Landroid/graphics/Rect;->right:I

    .line 296
    .local v10, "endRight":I
    move-object/from16 v0, v42

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v41, v0

    .line 297
    .local v41, "startBottom":I
    move-object/from16 v0, v25

    iget v11, v0, Landroid/graphics/Rect;->bottom:I

    .line 298
    .local v11, "endBottom":I
    sub-int v50, v48, v45

    .line 299
    .local v50, "startWidth":I
    sub-int v44, v41, v49

    .line 300
    .local v44, "startHeight":I
    sub-int v30, v10, v8

    .line 301
    .local v30, "endWidth":I
    sub-int v27, v11, v9

    .line 302
    .local v27, "endHeight":I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Landroid/graphics/Rect;

    .line 303
    .local v43, "startClip":Landroid/graphics/Rect;
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:clip"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/graphics/Rect;

    .line 304
    .local v26, "endClip":Landroid/graphics/Rect;
    const/16 v36, 0x0

    .line 305
    .local v36, "numChanges":I
    if-eqz v50, :cond_a4

    if-nez v44, :cond_a8

    :cond_a4
    if-eqz v30, :cond_bc

    if-eqz v27, :cond_bc

    .line 306
    :cond_a8
    move/from16 v0, v45

    if-ne v0, v8, :cond_b0

    move/from16 v0, v49

    if-eq v0, v9, :cond_b2

    :cond_b0
    add-int/lit8 v36, v36, 0x1

    .line 307
    :cond_b2
    move/from16 v0, v48

    if-ne v0, v10, :cond_ba

    move/from16 v0, v41

    if-eq v0, v11, :cond_bc

    :cond_ba
    add-int/lit8 v36, v36, 0x1

    .line 309
    :cond_bc
    if-eqz v43, :cond_c8

    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_cc

    :cond_c8
    if-nez v43, :cond_ce

    if-eqz v26, :cond_ce

    .line 311
    :cond_cc
    add-int/lit8 v36, v36, 0x1

    .line 313
    :cond_ce
    if-lez v36, :cond_35c

    .line 315
    move-object/from16 v0, p0

    iget-boolean v4, v0, mResizeClip:Z

    if-nez v4, :cond_1d3

    .line 316
    move/from16 v0, v45

    move/from16 v1, v49

    move/from16 v2, v48

    move/from16 v3, v41

    invoke-virtual {v6, v0, v1, v2, v3}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 317
    const/4 v4, 0x2

    move/from16 v0, v36

    if-ne v0, v4, :cond_195

    .line 318
    move/from16 v0, v50

    move/from16 v1, v30

    if-ne v0, v1, :cond_133

    move/from16 v0, v44

    move/from16 v1, v27

    if-ne v0, v1, :cond_133

    .line 319
    invoke-virtual/range {p0 .. p0}, getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v45

    int-to-float v5, v0

    move/from16 v0, v49

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v54

    .line 321
    .local v54, "topLeftPath":Landroid/graphics/Path;
    sget-object v4, POSITION_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 401
    .end local v54    # "topLeftPath":Landroid/graphics/Path;
    .local v18, "anim":Landroid/animation/Animator;
    :goto_10b
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    .line 402
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v38

    check-cast v38, Landroid/view/ViewGroup;

    .line 403
    .local v38, "parent":Landroid/view/ViewGroup;
    const/4 v4, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->suppressLayout(Z)V

    .line 404
    new-instance v55, Landroid/transition/ChangeBounds$9;

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Landroid/transition/ChangeBounds$9;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;)V

    .line 430
    .local v55, "transitionListener":Landroid/transition/Transition$TransitionListener;
    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/16 :goto_6

    .line 324
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v38    # "parent":Landroid/view/ViewGroup;
    .end local v55    # "transitionListener":Landroid/transition/Transition$TransitionListener;
    :cond_133
    new-instance v56, Landroid/transition/ChangeBounds$ViewBounds;

    move-object/from16 v0, v56

    invoke-direct {v0, v6}, Landroid/transition/ChangeBounds$ViewBounds;-><init>(Landroid/view/View;)V

    .line 325
    .local v56, "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    invoke-virtual/range {p0 .. p0}, getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v45

    int-to-float v5, v0

    move/from16 v0, v49

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v54

    .line 327
    .restart local v54    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, TOP_LEFT_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v54

    invoke-static {v0, v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v53

    .line 330
    .local v53, "topLeftAnimator":Landroid/animation/ObjectAnimator;
    invoke-virtual/range {p0 .. p0}, getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v48

    int-to-float v5, v0

    move/from16 v0, v41

    int-to-float v12, v0

    int-to-float v13, v10

    int-to-float v14, v11

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v22

    .line 332
    .local v22, "bottomRightPath":Landroid/graphics/Path;
    sget-object v4, BOTTOM_RIGHT_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v56

    move-object/from16 v1, v22

    invoke-static {v0, v4, v5, v1}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v21

    .line 334
    .local v21, "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    new-instance v40, Landroid/animation/AnimatorSet;

    invoke-direct/range {v40 .. v40}, Landroid/animation/AnimatorSet;-><init>()V

    .line 335
    .local v40, "set":Landroid/animation/AnimatorSet;
    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v53, v4, v5

    const/4 v5, 0x1

    aput-object v21, v4, v5

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 336
    move-object/from16 v18, v40

    .line 337
    .restart local v18    # "anim":Landroid/animation/Animator;
    new-instance v4, Landroid/transition/ChangeBounds$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v56

    invoke-direct {v4, v0, v1}, Landroid/transition/ChangeBounds$7;-><init>(Landroid/transition/ChangeBounds;Landroid/transition/ChangeBounds$ViewBounds;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_10b

    .line 343
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v21    # "bottomRightAnimator":Landroid/animation/ObjectAnimator;
    .end local v22    # "bottomRightPath":Landroid/graphics/Path;
    .end local v40    # "set":Landroid/animation/AnimatorSet;
    .end local v53    # "topLeftAnimator":Landroid/animation/ObjectAnimator;
    .end local v54    # "topLeftPath":Landroid/graphics/Path;
    .end local v56    # "viewBounds":Landroid/transition/ChangeBounds$ViewBounds;
    :cond_195
    move/from16 v0, v45

    if-ne v0, v8, :cond_19d

    move/from16 v0, v49

    if-eq v0, v9, :cond_1b8

    .line 344
    :cond_19d
    invoke-virtual/range {p0 .. p0}, getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v45

    int-to-float v5, v0

    move/from16 v0, v49

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v54

    .line 346
    .restart local v54    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, TOP_LEFT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 348
    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_10b

    .line 349
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v54    # "topLeftPath":Landroid/graphics/Path;
    :cond_1b8
    invoke-virtual/range {p0 .. p0}, getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v48

    int-to-float v5, v0

    move/from16 v0, v41

    int-to-float v12, v0

    int-to-float v13, v10

    int-to-float v14, v11

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v20

    .line 351
    .local v20, "bottomRight":Landroid/graphics/Path;
    sget-object v4, BOTTOM_RIGHT_ONLY_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v20

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 353
    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_10b

    .line 355
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v20    # "bottomRight":Landroid/graphics/Path;
    :cond_1d3
    move/from16 v0, v50

    move/from16 v1, v30

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v35

    .line 356
    .local v35, "maxWidth":I
    move/from16 v0, v44

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v34

    .line 358
    .local v34, "maxHeight":I
    add-int v4, v45, v35

    add-int v5, v49, v34

    move/from16 v0, v45

    move/from16 v1, v49

    invoke-virtual {v6, v0, v1, v4, v5}, Landroid/view/View;->setLeftTopRightBottom(IIII)V

    .line 361
    const/16 v39, 0x0

    .line 362
    .local v39, "positionAnimator":Landroid/animation/ObjectAnimator;
    move/from16 v0, v45

    if-ne v0, v8, :cond_1f8

    move/from16 v0, v49

    if-eq v0, v9, :cond_211

    .line 363
    :cond_1f8
    invoke-virtual/range {p0 .. p0}, getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v45

    int-to-float v5, v0

    move/from16 v0, v49

    int-to-float v12, v0

    int-to-float v13, v8

    int-to-float v14, v9

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v54

    .line 365
    .restart local v54    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, POSITION_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-static {v6, v4, v5, v0}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v39

    .line 368
    .end local v54    # "topLeftPath":Landroid/graphics/Path;
    :cond_211
    move-object/from16 v7, v26

    .line 369
    .local v7, "finalClip":Landroid/graphics/Rect;
    if-nez v43, :cond_222

    .line 370
    new-instance v43, Landroid/graphics/Rect;

    .end local v43    # "startClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v43

    move/from16 v1, v50

    move/from16 v2, v44

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 372
    .restart local v43    # "startClip":Landroid/graphics/Rect;
    :cond_222
    if-nez v26, :cond_231

    .line 373
    new-instance v26, Landroid/graphics/Rect;

    .end local v26    # "endClip":Landroid/graphics/Rect;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v30

    move/from16 v2, v27

    invoke-direct {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 375
    .restart local v26    # "endClip":Landroid/graphics/Rect;
    :cond_231
    const/16 v24, 0x0

    .line 376
    .local v24, "clipAnimator":Landroid/animation/ObjectAnimator;
    move-object/from16 v0, v43

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_25f

    .line 377
    move-object/from16 v0, v43

    invoke-virtual {v6, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 378
    const-string v4, "clipBounds"

    sget-object v5, sRectEvaluator:Landroid/animation/RectEvaluator;

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v43, v12, v13

    const/4 v13, 0x1

    aput-object v26, v12, v13

    invoke-static {v6, v4, v5, v12}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v24

    .line 380
    new-instance v4, Landroid/transition/ChangeBounds$8;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v11}, Landroid/transition/ChangeBounds$8;-><init>(Landroid/transition/ChangeBounds;Landroid/view/View;Landroid/graphics/Rect;IIII)V

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 398
    :cond_25f
    move-object/from16 v0, v39

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Landroid/transition/TransitionUtils;->mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;

    move-result-object v18

    .restart local v18    # "anim":Landroid/animation/Animator;
    goto/16 :goto_10b

    .line 435
    .end local v7    # "finalClip":Landroid/graphics/Rect;
    .end local v8    # "endLeft":I
    .end local v9    # "endTop":I
    .end local v10    # "endRight":I
    .end local v11    # "endBottom":I
    .end local v18    # "anim":Landroid/animation/Animator;
    .end local v24    # "clipAnimator":Landroid/animation/ObjectAnimator;
    .end local v25    # "endBounds":Landroid/graphics/Rect;
    .end local v26    # "endClip":Landroid/graphics/Rect;
    .end local v27    # "endHeight":I
    .end local v30    # "endWidth":I
    .end local v34    # "maxHeight":I
    .end local v35    # "maxWidth":I
    .end local v36    # "numChanges":I
    .end local v39    # "positionAnimator":Landroid/animation/ObjectAnimator;
    .end local v41    # "startBottom":I
    .end local v42    # "startBounds":Landroid/graphics/Rect;
    .end local v43    # "startClip":Landroid/graphics/Rect;
    .end local v44    # "startHeight":I
    .end local v45    # "startLeft":I
    .end local v48    # "startRight":I
    .end local v49    # "startTop":I
    .end local v50    # "startWidth":I
    :cond_269
    move-object/from16 v0, p0

    iget-object v4, v0, tempLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 436
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowX"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, tempLocation:[I

    const/4 v12, 0x0

    aget v5, v5, v12

    sub-int v51, v4, v5

    .line 437
    .local v51, "startX":I
    move-object/from16 v0, p2

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, tempLocation:[I

    const/4 v12, 0x1

    aget v5, v5, v12

    sub-int v52, v4, v5

    .line 438
    .local v52, "startY":I
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowX"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, tempLocation:[I

    const/4 v12, 0x0

    aget v5, v5, v12

    sub-int v31, v4, v5

    .line 439
    .local v31, "endX":I
    move-object/from16 v0, p3

    iget-object v4, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v5, "android:changeBounds:windowY"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, tempLocation:[I

    const/4 v12, 0x1

    aget v5, v5, v12

    sub-int v32, v4, v5

    .line 441
    .local v32, "endY":I
    move/from16 v0, v51

    move/from16 v1, v31

    if-ne v0, v1, :cond_2e2

    move/from16 v0, v52

    move/from16 v1, v32

    if-eq v0, v1, :cond_35c

    .line 442
    :cond_2e2
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v57

    .line 443
    .local v57, "width":I
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v33

    .line 444
    .local v33, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v57

    move/from16 v1, v33

    invoke-static {v0, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v19

    .line 445
    .local v19, "bitmap":Landroid/graphics/Bitmap;
    new-instance v23, Landroid/graphics/Canvas;

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 446
    .local v23, "canvas":Landroid/graphics/Canvas;
    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 447
    new-instance v15, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 448
    .local v15, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    add-int v4, v51, v57

    add-int v5, v52, v33

    move/from16 v0, v51

    move/from16 v1, v52

    invoke-virtual {v15, v0, v1, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 449
    invoke-virtual {v6}, Landroid/view/View;->getTransitionAlpha()F

    move-result v17

    .line 450
    .local v17, "transitionAlpha":F
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v4

    invoke-virtual {v4, v15}, Landroid/view/ViewGroupOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 452
    invoke-virtual/range {p0 .. p0}, getPathMotion()Landroid/transition/PathMotion;

    move-result-object v4

    move/from16 v0, v51

    int-to-float v5, v0

    move/from16 v0, v52

    int-to-float v12, v0

    move/from16 v0, v31

    int-to-float v13, v0

    move/from16 v0, v32

    int-to-float v14, v0

    invoke-virtual {v4, v5, v12, v13, v14}, Landroid/transition/PathMotion;->getPath(FFFF)Landroid/graphics/Path;

    move-result-object v54

    .line 453
    .restart local v54    # "topLeftPath":Landroid/graphics/Path;
    sget-object v4, DRAWABLE_ORIGIN_PROPERTY:Landroid/util/Property;

    const/4 v5, 0x0

    move-object/from16 v0, v54

    invoke-static {v4, v5, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Landroid/util/Property;Landroid/animation/TypeConverter;Landroid/graphics/Path;)Landroid/animation/PropertyValuesHolder;

    move-result-object v37

    .line 455
    .local v37, "origin":Landroid/animation/PropertyValuesHolder;
    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v37, v4, v5

    invoke-static {v15, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v18

    .line 456
    .local v18, "anim":Landroid/animation/ObjectAnimator;
    new-instance v12, Landroid/transition/ChangeBounds$10;

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v16, v6

    invoke-direct/range {v12 .. v17}, Landroid/transition/ChangeBounds$10;-><init>(Landroid/transition/ChangeBounds;Landroid/view/ViewGroup;Landroid/graphics/drawable/BitmapDrawable;Landroid/view/View;F)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_6

    .line 466
    .end local v15    # "drawable":Landroid/graphics/drawable/BitmapDrawable;
    .end local v17    # "transitionAlpha":F
    .end local v18    # "anim":Landroid/animation/ObjectAnimator;
    .end local v19    # "bitmap":Landroid/graphics/Bitmap;
    .end local v23    # "canvas":Landroid/graphics/Canvas;
    .end local v31    # "endX":I
    .end local v32    # "endY":I
    .end local v33    # "height":I
    .end local v37    # "origin":Landroid/animation/PropertyValuesHolder;
    .end local v51    # "startX":I
    .end local v52    # "startY":I
    .end local v54    # "topLeftPath":Landroid/graphics/Path;
    .end local v57    # "width":I
    :cond_35c
    const/16 v18, 0x0

    goto/16 :goto_6
.end method

.method public getResizeClip()Z
    .registers 2

    .prologue
    .line 213
    iget-boolean v0, p0, mResizeClip:Z

    return v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 183
    sget-object v0, sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public setReparent(Z)V
    .registers 2
    .param p1, "reparent"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, mReparent:Z

    .line 230
    return-void
.end method

.method public setResizeClip(Z)V
    .registers 2
    .param p1, "resizeClip"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, mResizeClip:Z

    .line 202
    return-void
.end method
