.class public abstract Landroid/transition/Transition;
.super Ljava/lang/Object;
.source "Transition.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/Transition$EpicenterCallback;,
        Landroid/transition/Transition$ArrayListManager;,
        Landroid/transition/Transition$AnimationInfo;,
        Landroid/transition/Transition$TransitionListenerAdapter;,
        Landroid/transition/Transition$TransitionListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static final DEFAULT_MATCH_ORDER:[I

.field private static final LOG_TAG:Ljava/lang/String; = "Transition"

.field private static final MATCH_FIRST:I = 0x1

.field public static final MATCH_ID:I = 0x3

.field private static final MATCH_ID_STR:Ljava/lang/String; = "id"

.field public static final MATCH_INSTANCE:I = 0x1

.field private static final MATCH_INSTANCE_STR:Ljava/lang/String; = "instance"

.field public static final MATCH_ITEM_ID:I = 0x4

.field private static final MATCH_ITEM_ID_STR:Ljava/lang/String; = "itemId"

.field private static final MATCH_LAST:I = 0x4

.field public static final MATCH_NAME:I = 0x2

.field private static final MATCH_NAME_STR:Ljava/lang/String; = "name"

.field private static final MATCH_VIEW_NAME_STR:Ljava/lang/String; = "viewName"

.field private static final STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

.field private static sRunningAnimators:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mCanRemoveViews:Z

.field private mCurrentAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field mDuration:J

.field private mEndValues:Landroid/transition/TransitionValuesMaps;

.field mEndValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field private mEnded:Z

.field mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

.field mInterpolator:Landroid/animation/TimeInterpolator;

.field mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/Transition$TransitionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMatchOrder:[I

.field private mName:Ljava/lang/String;

.field mNameOverrides:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNumInstances:I

.field mParent:Landroid/transition/TransitionSet;

.field private mPathMotion:Landroid/transition/PathMotion;

.field mPaused:Z

.field mPropagation:Landroid/transition/TransitionPropagation;

.field mSceneRoot:Landroid/view/ViewGroup;

.field mStartDelay:J

.field private mStartValues:Landroid/transition/TransitionValuesMaps;

.field mStartValuesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;"
        }
    .end annotation
.end field

.field mTargetChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIdExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNameExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeChildExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypeExcludes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargetTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field mTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 159
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, DEFAULT_MATCH_ORDER:[I

    .line 166
    new-instance v0, Landroid/transition/Transition$1;

    invoke-direct {v0}, Landroid/transition/Transition$1;-><init>()V

    sput-object v0, STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    .line 200
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, sRunningAnimators:Ljava/lang/ThreadLocal;

    return-void

    .line 159
    nop

    :array_18
    .array-data 4
        0x2
        0x1
        0x3
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mName:Ljava/lang/String;

    .line 178
    iput-wide v4, p0, mStartDelay:J

    .line 179
    iput-wide v4, p0, mDuration:J

    .line 180
    iput-object v1, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTargetIds:Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTargets:Ljava/util/ArrayList;

    .line 183
    iput-object v1, p0, mTargetNames:Ljava/util/ArrayList;

    .line 184
    iput-object v1, p0, mTargetTypes:Ljava/util/ArrayList;

    .line 185
    iput-object v1, p0, mTargetIdExcludes:Ljava/util/ArrayList;

    .line 186
    iput-object v1, p0, mTargetExcludes:Ljava/util/ArrayList;

    .line 187
    iput-object v1, p0, mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 188
    iput-object v1, p0, mTargetNameExcludes:Ljava/util/ArrayList;

    .line 189
    iput-object v1, p0, mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 190
    iput-object v1, p0, mTargetChildExcludes:Ljava/util/ArrayList;

    .line 191
    iput-object v1, p0, mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 192
    new-instance v0, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 193
    new-instance v0, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v0}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v0, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 194
    iput-object v1, p0, mParent:Landroid/transition/TransitionSet;

    .line 195
    sget-object v0, DEFAULT_MATCH_ORDER:[I

    iput-object v0, p0, mMatchOrder:[I

    .line 204
    iput-object v1, p0, mSceneRoot:Landroid/view/ViewGroup;

    .line 212
    iput-boolean v2, p0, mCanRemoveViews:Z

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mCurrentAnimators:Ljava/util/ArrayList;

    .line 220
    iput v2, p0, mNumInstances:I

    .line 223
    iput-boolean v2, p0, mPaused:Z

    .line 227
    iput-boolean v2, p0, mEnded:Z

    .line 230
    iput-object v1, p0, mListeners:Ljava/util/ArrayList;

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAnimators:Ljava/util/ArrayList;

    .line 249
    sget-object v0, STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v0, p0, mPathMotion:Landroid/transition/PathMotion;

    .line 257
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, mName:Ljava/lang/String;

    .line 178
    const-wide/16 v8, -0x1

    iput-wide v8, p0, mStartDelay:J

    .line 179
    const-wide/16 v8, -0x1

    iput-wide v8, p0, mDuration:J

    .line 180
    const/4 v5, 0x0

    iput-object v5, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    .line 181
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, mTargetIds:Ljava/util/ArrayList;

    .line 182
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, mTargets:Ljava/util/ArrayList;

    .line 183
    const/4 v5, 0x0

    iput-object v5, p0, mTargetNames:Ljava/util/ArrayList;

    .line 184
    const/4 v5, 0x0

    iput-object v5, p0, mTargetTypes:Ljava/util/ArrayList;

    .line 185
    const/4 v5, 0x0

    iput-object v5, p0, mTargetIdExcludes:Ljava/util/ArrayList;

    .line 186
    const/4 v5, 0x0

    iput-object v5, p0, mTargetExcludes:Ljava/util/ArrayList;

    .line 187
    const/4 v5, 0x0

    iput-object v5, p0, mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 188
    const/4 v5, 0x0

    iput-object v5, p0, mTargetNameExcludes:Ljava/util/ArrayList;

    .line 189
    const/4 v5, 0x0

    iput-object v5, p0, mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 190
    const/4 v5, 0x0

    iput-object v5, p0, mTargetChildExcludes:Ljava/util/ArrayList;

    .line 191
    const/4 v5, 0x0

    iput-object v5, p0, mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 192
    new-instance v5, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v5}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v5, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 193
    new-instance v5, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v5}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v5, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 194
    const/4 v5, 0x0

    iput-object v5, p0, mParent:Landroid/transition/TransitionSet;

    .line 195
    sget-object v5, DEFAULT_MATCH_ORDER:[I

    iput-object v5, p0, mMatchOrder:[I

    .line 204
    const/4 v5, 0x0

    iput-object v5, p0, mSceneRoot:Landroid/view/ViewGroup;

    .line 212
    const/4 v5, 0x0

    iput-boolean v5, p0, mCanRemoveViews:Z

    .line 216
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, mCurrentAnimators:Ljava/util/ArrayList;

    .line 220
    const/4 v5, 0x0

    iput v5, p0, mNumInstances:I

    .line 223
    const/4 v5, 0x0

    iput-boolean v5, p0, mPaused:Z

    .line 227
    const/4 v5, 0x0

    iput-boolean v5, p0, mEnded:Z

    .line 230
    const/4 v5, 0x0

    iput-object v5, p0, mListeners:Ljava/util/ArrayList;

    .line 234
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, mAnimators:Ljava/util/ArrayList;

    .line 249
    sget-object v5, STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v5, p0, mPathMotion:Landroid/transition/PathMotion;

    .line 270
    sget-object v5, Lcom/android/internal/R$styleable;->Transition:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 271
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v5, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    int-to-long v2, v5

    .line 272
    .local v2, "duration":J
    const-wide/16 v8, 0x0

    cmp-long v5, v2, v8

    if-ltz v5, :cond_90

    .line 273
    invoke-virtual {p0, v2, v3}, setDuration(J)Landroid/transition/Transition;

    .line 275
    :cond_90
    const/4 v5, 0x2

    const/4 v8, -0x1

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    int-to-long v6, v5

    .line 276
    .local v6, "startDelay":J
    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_a0

    .line 277
    invoke-virtual {p0, v6, v7}, setStartDelay(J)Landroid/transition/Transition;

    .line 279
    :cond_a0
    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v0, v5, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 280
    .local v4, "resID":I
    if-lez v4, :cond_af

    .line 281
    invoke-static {p1, v4}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {p0, v5}, setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;

    .line 283
    :cond_af
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    .local v1, "matchOrder":Ljava/lang/String;
    if-eqz v1, :cond_bd

    .line 285
    invoke-static {v1}, parseMatchOrder(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {p0, v5}, setMatchOrder([I)V

    .line 287
    :cond_bd
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 288
    return-void
.end method

.method static synthetic access$000(Landroid/transition/Transition;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Landroid/transition/Transition;

    .prologue
    .line 120
    iget-object v0, p0, mCurrentAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addUnmatched(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    const/4 v4, 0x0

    .line 630
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_23

    .line 631
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/TransitionValues;

    .line 632
    .local v2, "start":Landroid/transition/TransitionValues;
    iget-object v3, v2, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 633
    iget-object v3, p0, mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 634
    iget-object v3, p0, mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 639
    .end local v2    # "start":Landroid/transition/TransitionValues;
    :cond_23
    const/4 v1, 0x0

    :goto_24
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_45

    .line 640
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    .line 641
    .local v0, "end":Landroid/transition/TransitionValues;
    iget-object v3, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v3}, isValidTarget(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 642
    iget-object v3, p0, mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 643
    iget-object v3, p0, mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    :cond_42
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 646
    .end local v0    # "end":Landroid/transition/TransitionValues;
    :cond_45
    return-void
.end method

.method static addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V
    .registers 12
    .param p0, "transitionValuesMaps"    # Landroid/transition/TransitionValuesMaps;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    const/4 v8, 0x0

    .line 1485
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1486
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1487
    .local v1, "id":I
    if-ltz v1, :cond_19

    .line 1488
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_68

    .line 1490
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1495
    :cond_19
    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v5

    .line 1496
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_2c

    .line 1497
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6e

    .line 1499
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    :cond_2c
    :goto_2c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/ListView;

    if-eqz v7, :cond_67

    .line 1505
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    .line 1506
    .local v4, "listview":Landroid/widget/ListView;
    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v7

    invoke-interface {v7}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v7

    if-eqz v7, :cond_67

    .line 1507
    invoke-virtual {v4, p1}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v6

    .line 1508
    .local v6, "position":I
    invoke-virtual {v4, v6}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v2

    .line 1509
    .local v2, "itemId":J
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result v7

    if-ltz v7, :cond_74

    .line 1511
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1512
    .local v0, "alreadyMatched":Landroid/view/View;
    if-eqz v0, :cond_67

    .line 1513
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1514
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3, v8}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1522
    .end local v0    # "alreadyMatched":Landroid/view/View;
    .end local v2    # "itemId":J
    .end local v4    # "listview":Landroid/widget/ListView;
    .end local v6    # "position":I
    :cond_67
    :goto_67
    return-void

    .line 1492
    .end local v5    # "name":Ljava/lang/String;
    :cond_68
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_19

    .line 1501
    .restart local v5    # "name":Ljava/lang/String;
    :cond_6e
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v7, v5, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    .line 1517
    .restart local v2    # "itemId":J
    .restart local v4    # "listview":Landroid/widget/ListView;
    .restart local v6    # "position":I
    :cond_74
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1518
    iget-object v7, p0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v7, v2, v3, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_67
.end method

.method private static alreadyContains([II)Z
    .registers 5
    .param p0, "array"    # [I
    .param p1, "searchIndex"    # I

    .prologue
    .line 514
    aget v1, p0, p1

    .line 515
    .local v1, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p1, :cond_e

    .line 516
    aget v2, p0, v0

    if-ne v2, v1, :cond_b

    .line 517
    const/4 v2, 0x1

    .line 520
    :goto_a
    return v2

    .line 515
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 520
    :cond_e
    const/4 v2, 0x0

    goto :goto_a
.end method

.method private captureHierarchy(Landroid/view/View;Z)V
    .registers 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 1556
    if-nez p1, :cond_3

    .line 1611
    :cond_2
    return-void

    .line 1559
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1560
    .local v1, "id":I
    iget-object v5, p0, mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_17

    iget-object v5, p0, mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1563
    :cond_17
    iget-object v5, p0, mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_23

    iget-object v5, p0, mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1566
    :cond_23
    iget-object v5, p0, mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_43

    if-eqz p1, :cond_43

    .line 1567
    iget-object v5, p0, mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1568
    .local v2, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    if-ge v0, v2, :cond_43

    .line 1569
    iget-object v5, p0, mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1568
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 1574
    .end local v0    # "i":I
    .end local v2    # "numTypes":I
    :cond_43
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_66

    .line 1575
    new-instance v4, Landroid/transition/TransitionValues;

    invoke-direct {v4}, Landroid/transition/TransitionValues;-><init>()V

    .line 1576
    .local v4, "values":Landroid/transition/TransitionValues;
    iput-object p1, v4, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1577
    if-eqz p2, :cond_a4

    .line 1578
    invoke-virtual {p0, v4}, captureStartValues(Landroid/transition/TransitionValues;)V

    .line 1582
    :goto_57
    iget-object v5, v4, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1583
    invoke-virtual {p0, v4}, capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1584
    if-eqz p2, :cond_a8

    .line 1585
    iget-object v5, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v5, p1, v4}, addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1590
    .end local v4    # "values":Landroid/transition/TransitionValues;
    :cond_66
    :goto_66
    instance-of v5, p1, Landroid/view/ViewGroup;

    if-eqz v5, :cond_2

    .line 1592
    iget-object v5, p0, mTargetIdChildExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_7a

    iget-object v5, p0, mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1595
    :cond_7a
    iget-object v5, p0, mTargetChildExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_86

    iget-object v5, p0, mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1598
    :cond_86
    iget-object v5, p0, mTargetTypeChildExcludes:Ljava/util/ArrayList;

    if-eqz v5, :cond_ae

    .line 1599
    iget-object v5, p0, mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1600
    .restart local v2    # "numTypes":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_91
    if-ge v0, v2, :cond_ae

    .line 1601
    iget-object v5, p0, mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1600
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 1580
    .end local v0    # "i":I
    .end local v2    # "numTypes":I
    .restart local v4    # "values":Landroid/transition/TransitionValues;
    :cond_a4
    invoke-virtual {p0, v4}, captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_57

    .line 1587
    :cond_a8
    iget-object v5, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v5, p1, v4}, addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_66

    .end local v4    # "values":Landroid/transition/TransitionValues;
    :cond_ae
    move-object v3, p1

    .line 1606
    check-cast v3, Landroid/view/ViewGroup;

    .line 1607
    .local v3, "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_b2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 1608
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {p0, v5, p2}, captureHierarchy(Landroid/view/View;Z)V

    .line 1607
    add-int/lit8 v0, v0, 0x1

    goto :goto_b2
.end method

.method private static excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;
    .registers 3
    .param p2, "exclude"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayList",
            "<TT;>;TT;Z)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 1222
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_8

    .line 1223
    if-eqz p2, :cond_9

    .line 1224
    invoke-static {p0, p1}, Landroid/transition/Transition$ArrayListManager;->add(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    .line 1229
    :cond_8
    :goto_8
    return-object p0

    .line 1226
    :cond_9
    invoke-static {p0, p1}, Landroid/transition/Transition$ArrayListManager;->remove(Ljava/util/ArrayList;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    goto :goto_8
.end method

.method private static getRunningAnimators()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 850
    sget-object v1, sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArrayMap;

    .line 851
    .local v0, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-nez v0, :cond_14

    .line 852
    new-instance v0, Landroid/util/ArrayMap;

    .end local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 853
    .restart local v0    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    sget-object v1, sRunningAnimators:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 855
    :cond_14
    return-object v0
.end method

.method private static isValidMatch(I)Z
    .registers 3
    .param p0, "match"    # I

    .prologue
    const/4 v0, 0x1

    .line 510
    if-lt p0, v0, :cond_7

    const/4 v1, 0x4

    if-gt p0, v1, :cond_7

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private static isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z
    .registers 8
    .param p0, "oldValues"    # Landroid/transition/TransitionValues;
    .param p1, "newValues"    # Landroid/transition/TransitionValues;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1823
    iget-object v3, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eq v3, v4, :cond_10

    .line 1845
    :goto_f
    return v0

    .line 1827
    :cond_10
    iget-object v3, p0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1828
    .local v2, "oldValue":Ljava/lang/Object;
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1830
    .local v1, "newValue":Ljava/lang/Object;
    if-nez v2, :cond_22

    if-nez v1, :cond_22

    .line 1832
    const/4 v0, 0x0

    .local v0, "changed":Z
    goto :goto_f

    .line 1833
    .end local v0    # "changed":Z
    :cond_22
    if-eqz v2, :cond_26

    if-nez v1, :cond_28

    .line 1835
    :cond_26
    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    goto :goto_f

    .line 1838
    .end local v0    # "changed":Z
    :cond_28
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2f

    const/4 v0, 0x1

    .restart local v0    # "changed":Z
    :cond_2f
    goto :goto_f
.end method

.method private matchIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    .local p4, "endIds":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 578
    .local v3, "numStartIds":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_4a

    .line 579
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 580
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_47

    invoke-virtual {p0, v5}, isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 581
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {p4, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 582
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_47

    invoke-virtual {p0, v1}, isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 583
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 584
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    .line 585
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v0, :cond_47

    .line 586
    iget-object v6, p0, mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object v6, p0, mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 594
    .end local v5    # "startView":Landroid/view/View;
    :cond_4a
    return-void
.end method

.method private matchInstances(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 529
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_6
    if-ltz v1, :cond_3d

    .line 530
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 531
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_3a

    invoke-virtual {p0, v3}, isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 532
    invoke-virtual {p2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    .line 533
    .local v0, "end":Landroid/transition/TransitionValues;
    if-eqz v0, :cond_3a

    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v4, :cond_3a

    iget-object v4, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p0, v4}, isValidTarget(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 534
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/TransitionValues;

    .line 535
    .local v2, "start":Landroid/transition/TransitionValues;
    iget-object v4, p0, mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v4, p0, mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 529
    .end local v0    # "end":Landroid/transition/TransitionValues;
    .end local v2    # "start":Landroid/transition/TransitionValues;
    :cond_3a
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    .line 540
    .end local v3    # "view":Landroid/view/View;
    :cond_3d
    return-void
.end method

.method private matchItemIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startItemIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    .local p4, "endItemIds":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 551
    .local v3, "numStartIds":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_4a

    .line 552
    invoke-virtual {p3, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 553
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_47

    invoke-virtual {p0, v5}, isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 554
    invoke-virtual {p3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {p4, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 555
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_47

    invoke-virtual {p0, v1}, isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 556
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 557
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    .line 558
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v0, :cond_47

    .line 559
    iget-object v6, p0, mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    iget-object v6, p0, mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 567
    .end local v5    # "startView":Landroid/view/View;
    :cond_4a
    return-void
.end method

.method private matchNames(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/view/View;",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p2, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    .local p3, "startNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    .local p4, "endNames":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/view/View;>;"
    invoke-virtual {p3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 605
    .local v3, "numStartNames":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    if-ge v2, v3, :cond_4a

    .line 606
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 607
    .local v5, "startView":Landroid/view/View;
    if-eqz v5, :cond_47

    invoke-virtual {p0, v5}, isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 608
    invoke-virtual {p3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p4, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 609
    .local v1, "endView":Landroid/view/View;
    if-eqz v1, :cond_47

    invoke-virtual {p0, v1}, isValidTarget(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_47

    .line 610
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/TransitionValues;

    .line 611
    .local v4, "startValues":Landroid/transition/TransitionValues;
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/transition/TransitionValues;

    .line 612
    .local v0, "endValues":Landroid/transition/TransitionValues;
    if-eqz v4, :cond_47

    if-eqz v0, :cond_47

    .line 613
    iget-object v6, p0, mStartValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v6, p0, mEndValuesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-virtual {p1, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .end local v0    # "endValues":Landroid/transition/TransitionValues;
    .end local v1    # "endView":Landroid/view/View;
    .end local v4    # "startValues":Landroid/transition/TransitionValues;
    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 621
    .end local v5    # "startView":Landroid/view/View;
    :cond_4a
    return-void
.end method

.method private matchStartAndEnd(Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V
    .registers 8
    .param p1, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p2, "endValues"    # Landroid/transition/TransitionValuesMaps;

    .prologue
    .line 650
    new-instance v2, Landroid/util/ArrayMap;

    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 652
    .local v2, "unmatchedStart":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    new-instance v1, Landroid/util/ArrayMap;

    iget-object v3, p2, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-direct {v1, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 655
    .local v1, "unmatchedEnd":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/view/View;Landroid/transition/TransitionValues;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v3, p0, mMatchOrder:[I

    array-length v3, v3

    if-ge v0, v3, :cond_3a

    .line 656
    iget-object v3, p0, mMatchOrder:[I

    aget v3, v3, v0

    packed-switch v3, :pswitch_data_3e

    .line 655
    :goto_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 658
    :pswitch_1e
    invoke-direct {p0, v2, v1}, matchInstances(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_1b

    .line 661
    :pswitch_22
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-direct {p0, v2, v1, v3, v4}, matchNames(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    goto :goto_1b

    .line 665
    :pswitch_2a
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-direct {p0, v2, v1, v3, v4}, matchIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    goto :goto_1b

    .line 669
    :pswitch_32
    iget-object v3, p1, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    iget-object v4, p2, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-direct {p0, v2, v1, v3, v4}, matchItemIds(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    goto :goto_1b

    .line 674
    :cond_3a
    invoke-direct {p0, v2, v1}, addUnmatched(Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    .line 675
    return-void

    .line 656
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_22
        :pswitch_2a
        :pswitch_32
    .end packed-switch
.end method

.method private static parseMatchOrder(Ljava/lang/String;)[I
    .registers 9
    .param p0, "matchOrderString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 291
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v5, ","

    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    .local v3, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v5

    new-array v1, v5, [I

    .line 293
    .local v1, "matches":[I
    const/4 v0, 0x0

    .line 294
    .local v0, "index":I
    :goto_10
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_8d

    .line 295
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "token":Ljava/lang/String;
    const-string v5, "id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 297
    const/4 v5, 0x3

    aput v5, v1, v0

    .line 314
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 315
    goto :goto_10

    .line 298
    :cond_2c
    const-string v5, "instance"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 299
    const/4 v5, 0x1

    aput v5, v1, v0

    goto :goto_29

    .line 300
    :cond_38
    const-string/jumbo v5, "name"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 301
    aput v7, v1, v0

    goto :goto_29

    .line 302
    :cond_44
    const-string/jumbo v5, "viewName"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 303
    aput v7, v1, v0

    goto :goto_29

    .line 304
    :cond_50
    const-string v5, "itemId"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 305
    const/4 v5, 0x4

    aput v5, v1, v0

    goto :goto_29

    .line 306
    :cond_5c
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 307
    array-length v5, v1

    add-int/lit8 v5, v5, -0x1

    new-array v2, v5, [I

    .line 308
    .local v2, "smallerMatches":[I
    invoke-static {v1, v6, v2, v6, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 309
    move-object v1, v2

    .line 310
    add-int/lit8 v0, v0, -0x1

    .line 311
    goto :goto_29

    .line 312
    .end local v2    # "smallerMatches":[I
    :cond_6e
    new-instance v5, Landroid/view/InflateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown match type in matchOrder: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 316
    .end local v4    # "token":Ljava/lang/String;
    :cond_8d
    return-object v1
.end method

.method private runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V
    .registers 4
    .param p1, "animator"    # Landroid/animation/Animator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/animation/Animator;",
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/animation/Animator;",
            "Landroid/transition/Transition$AnimationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 886
    .local p2, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    if-eqz p1, :cond_d

    .line 888
    new-instance v0, Landroid/transition/Transition$2;

    invoke-direct {v0, p0, p2}, Landroid/transition/Transition$2;-><init>(Landroid/transition/Transition;Landroid/util/ArrayMap;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 899
    invoke-virtual {p0, p1}, animate(Landroid/animation/Animator;)V

    .line 901
    :cond_d
    return-void
.end method


# virtual methods
.method public addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 1973
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 1974
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mListeners:Ljava/util/ArrayList;

    .line 1976
    :cond_b
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1977
    return-object p0
.end method

.method public addTarget(I)Landroid/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I

    .prologue
    .line 980
    if-lez p1, :cond_b

    .line 981
    iget-object v0, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    :cond_b
    return-object p0
.end method

.method public addTarget(Landroid/view/View;)Landroid/transition/Transition;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 1312
    iget-object v0, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1313
    return-object p0
.end method

.method public addTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .registers 3
    .param p1, "targetType"    # Ljava/lang/Class;

    .prologue
    .line 1036
    if-eqz p1, :cond_12

    .line 1037
    iget-object v0, p0, mTargetTypes:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 1038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTargetTypes:Ljava/util/ArrayList;

    .line 1040
    :cond_d
    iget-object v0, p0, mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    :cond_12
    return-object p0
.end method

.method public addTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 1004
    if-eqz p1, :cond_12

    .line 1005
    iget-object v0, p0, mTargetNames:Ljava/util/ArrayList;

    if-nez v0, :cond_d

    .line 1006
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mTargetNames:Ljava/util/ArrayList;

    .line 1008
    :cond_d
    iget-object v0, p0, mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1010
    :cond_12
    return-object p0
.end method

.method protected animate(Landroid/animation/Animator;)V
    .registers 6
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const-wide/16 v2, 0x0

    .line 1860
    if-nez p1, :cond_8

    .line 1861
    invoke-virtual {p0}, end()V

    .line 1881
    :goto_7
    return-void

    .line 1863
    :cond_8
    invoke-virtual {p0}, getDuration()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_17

    .line 1864
    invoke-virtual {p0}, getDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 1866
    :cond_17
    invoke-virtual {p0}, getStartDelay()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2b

    .line 1867
    invoke-virtual {p0}, getStartDelay()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 1869
    :cond_2b
    invoke-virtual {p0}, getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 1870
    invoke-virtual {p0}, getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1872
    :cond_38
    new-instance v0, Landroid/transition/Transition$3;

    invoke-direct {v0, p0}, Landroid/transition/Transition$3;-><init>(Landroid/transition/Transition;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1879
    invoke-virtual {p1}, Landroid/animation/Animator;->start()V

    goto :goto_7
.end method

.method public canRemoveViews()Z
    .registers 2

    .prologue
    .line 2179
    iget-boolean v0, p0, mCanRemoveViews:Z

    return v0
.end method

.method protected cancel()V
    .registers 7

    .prologue
    .line 1949
    iget-object v5, p0, mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1950
    .local v2, "numAnimators":I
    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_18

    .line 1951
    iget-object v5, p0, mCurrentAnimators:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1952
    .local v0, "animator":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 1950
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 1954
    .end local v0    # "animator":Landroid/animation/Animator;
    :cond_18
    iget-object v5, p0, mListeners:Ljava/util/ArrayList;

    if-eqz v5, :cond_3f

    iget-object v5, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3f

    .line 1955
    iget-object v5, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1957
    .local v4, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1958
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_31
    if-ge v1, v3, :cond_3f

    .line 1959
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v5, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionCancel(Landroid/transition/Transition;)V

    .line 1958
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1962
    .end local v3    # "numListeners":I
    .end local v4    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_3f
    return-void
.end method

.method public abstract captureEndValues(Landroid/transition/TransitionValues;)V
.end method

.method capturePropagationValues(Landroid/transition/TransitionValues;)V
    .registers 7
    .param p1, "transitionValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 2151
    iget-object v3, p0, mPropagation:Landroid/transition/TransitionPropagation;

    if-eqz v3, :cond_14

    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_14

    .line 2152
    iget-object v3, p0, mPropagation:Landroid/transition/TransitionPropagation;

    invoke-virtual {v3}, Landroid/transition/TransitionPropagation;->getPropagationProperties()[Ljava/lang/String;

    move-result-object v2

    .line 2153
    .local v2, "propertyNames":[Ljava/lang/String;
    if-nez v2, :cond_15

    .line 2167
    .end local v2    # "propertyNames":[Ljava/lang/String;
    :cond_14
    :goto_14
    return-void

    .line 2156
    .restart local v2    # "propertyNames":[Ljava/lang/String;
    :cond_15
    const/4 v0, 0x1

    .line 2157
    .local v0, "containsAll":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    array-length v3, v2

    if-ge v1, v3, :cond_25

    .line 2158
    iget-object v3, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v4, v2, v1

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 2159
    const/4 v0, 0x0

    .line 2163
    :cond_25
    if-nez v0, :cond_14

    .line 2164
    iget-object v3, p0, mPropagation:Landroid/transition/TransitionPropagation;

    invoke-virtual {v3, p1}, Landroid/transition/TransitionPropagation;->captureValues(Landroid/transition/TransitionValues;)V

    goto :goto_14

    .line 2157
    :cond_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_17
.end method

.method public abstract captureStartValues(Landroid/transition/TransitionValues;)V
.end method

.method captureValues(Landroid/view/ViewGroup;Z)V
    .registers 12
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "start"    # Z

    .prologue
    .line 1422
    invoke-virtual {p0, p2}, clearValues(Z)V

    .line 1423
    iget-object v8, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-gtz v8, :cond_13

    iget-object v8, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_a7

    :cond_13
    iget-object v8, p0, mTargetNames:Ljava/util/ArrayList;

    if-eqz v8, :cond_1f

    iget-object v8, p0, mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a7

    :cond_1f
    iget-object v8, p0, mTargetTypes:Ljava/util/ArrayList;

    if-eqz v8, :cond_2b

    iget-object v8, p0, mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_a7

    .line 1426
    :cond_2b
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    iget-object v8, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_6e

    .line 1427
    iget-object v8, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1428
    .local v2, "id":I
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1429
    .local v7, "view":Landroid/view/View;
    if-eqz v7, :cond_61

    .line 1430
    new-instance v6, Landroid/transition/TransitionValues;

    invoke-direct {v6}, Landroid/transition/TransitionValues;-><init>()V

    .line 1431
    .local v6, "values":Landroid/transition/TransitionValues;
    iput-object v7, v6, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1432
    if-eqz p2, :cond_64

    .line 1433
    invoke-virtual {p0, v6}, captureStartValues(Landroid/transition/TransitionValues;)V

    .line 1437
    :goto_52
    iget-object v8, v6, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1438
    invoke-virtual {p0, v6}, capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1439
    if-eqz p2, :cond_68

    .line 1440
    iget-object v8, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v8, v7, v6}, addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1426
    .end local v6    # "values":Landroid/transition/TransitionValues;
    :cond_61
    :goto_61
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1435
    .restart local v6    # "values":Landroid/transition/TransitionValues;
    :cond_64
    invoke-virtual {p0, v6}, captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_52

    .line 1442
    :cond_68
    iget-object v8, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v8, v7, v6}, addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_61

    .line 1446
    .end local v2    # "id":I
    .end local v6    # "values":Landroid/transition/TransitionValues;
    .end local v7    # "view":Landroid/view/View;
    :cond_6e
    const/4 v1, 0x0

    :goto_6f
    iget-object v8, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_aa

    .line 1447
    iget-object v8, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1448
    .restart local v7    # "view":Landroid/view/View;
    new-instance v6, Landroid/transition/TransitionValues;

    invoke-direct {v6}, Landroid/transition/TransitionValues;-><init>()V

    .line 1449
    .restart local v6    # "values":Landroid/transition/TransitionValues;
    iput-object v7, v6, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 1450
    if-eqz p2, :cond_9d

    .line 1451
    invoke-virtual {p0, v6}, captureStartValues(Landroid/transition/TransitionValues;)V

    .line 1455
    :goto_8b
    iget-object v8, v6, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    invoke-virtual {v8, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    invoke-virtual {p0, v6}, capturePropagationValues(Landroid/transition/TransitionValues;)V

    .line 1457
    if-eqz p2, :cond_a1

    .line 1458
    iget-object v8, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v8, v7, v6}, addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    .line 1446
    :goto_9a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6f

    .line 1453
    :cond_9d
    invoke-virtual {p0, v6}, captureEndValues(Landroid/transition/TransitionValues;)V

    goto :goto_8b

    .line 1460
    :cond_a1
    iget-object v8, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    invoke-static {v8, v7, v6}, addViewValues(Landroid/transition/TransitionValuesMaps;Landroid/view/View;Landroid/transition/TransitionValues;)V

    goto :goto_9a

    .line 1464
    .end local v1    # "i":I
    .end local v6    # "values":Landroid/transition/TransitionValues;
    .end local v7    # "view":Landroid/view/View;
    :cond_a7
    invoke-direct {p0, p1, p2}, captureHierarchy(Landroid/view/View;Z)V

    .line 1466
    :cond_aa
    if-nez p2, :cond_f1

    iget-object v8, p0, mNameOverrides:Landroid/util/ArrayMap;

    if-eqz v8, :cond_f1

    .line 1467
    iget-object v8, p0, mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 1468
    .local v3, "numOverrides":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1469
    .local v4, "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_bc
    if-ge v1, v3, :cond_d4

    .line 1470
    iget-object v8, p0, mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1471
    .local v0, "fromName":Ljava/lang/String;
    iget-object v8, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v8, v8, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1469
    add-int/lit8 v1, v1, 0x1

    goto :goto_bc

    .line 1473
    .end local v0    # "fromName":Ljava/lang/String;
    :cond_d4
    const/4 v1, 0x0

    :goto_d5
    if-ge v1, v3, :cond_f1

    .line 1474
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 1475
    .restart local v7    # "view":Landroid/view/View;
    if-eqz v7, :cond_ee

    .line 1476
    iget-object v8, p0, mNameOverrides:Landroid/util/ArrayMap;

    invoke-virtual {v8, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1477
    .local v5, "toName":Ljava/lang/String;
    iget-object v8, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v8, v8, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v8, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    .end local v5    # "toName":Ljava/lang/String;
    :cond_ee
    add-int/lit8 v1, v1, 0x1

    goto :goto_d5

    .line 1481
    .end local v1    # "i":I
    .end local v3    # "numOverrides":I
    .end local v4    # "overriddenViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v7    # "view":Landroid/view/View;
    :cond_f1
    return-void
.end method

.method clearValues(Z)V
    .registers 4
    .param p1, "start"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1530
    if-eqz p1, :cond_22

    .line 1531
    iget-object v0, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1532
    iget-object v0, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1533
    iget-object v0, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1534
    iget-object v0, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1535
    iput-object v1, p0, mStartValuesList:Ljava/util/ArrayList;

    .line 1543
    :goto_21
    return-void

    .line 1537
    :cond_22
    iget-object v0, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1538
    iget-object v0, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->idValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1539
    iget-object v0, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clear()V

    .line 1540
    iget-object v0, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v0, v0, Landroid/transition/TransitionValuesMaps;->nameValues:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 1541
    iput-object v1, p0, mEndValuesList:Ljava/util/ArrayList;

    goto :goto_21
.end method

.method public clone()Landroid/transition/Transition;
    .registers 4

    .prologue
    .line 2206
    const/4 v1, 0x0

    .line 2208
    .local v1, "clone":Landroid/transition/Transition;
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/transition/Transition;

    move-object v1, v0

    .line 2209
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, mAnimators:Ljava/util/ArrayList;

    .line 2210
    new-instance v2, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 2211
    new-instance v2, Landroid/transition/TransitionValuesMaps;

    invoke-direct {v2}, Landroid/transition/TransitionValuesMaps;-><init>()V

    iput-object v2, v1, mEndValues:Landroid/transition/TransitionValuesMaps;

    .line 2212
    const/4 v2, 0x0

    iput-object v2, v1, mStartValuesList:Ljava/util/ArrayList;

    .line 2213
    const/4 v2, 0x0

    iput-object v2, v1, mEndValuesList:Ljava/util/ArrayList;
    :try_end_24
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_24} :catch_25

    .line 2216
    :goto_24
    return-object v1

    .line 2214
    :catch_25
    move-exception v2

    goto :goto_24
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, clone()Landroid/transition/Transition;

    move-result-object v0

    return-object v0
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;
    .registers 5
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 473
    const/4 v0, 0x0

    return-object v0
.end method

.method protected createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 38
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/transition/TransitionValuesMaps;
    .param p3, "endValues"    # Landroid/transition/TransitionValuesMaps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/transition/TransitionValuesMaps;",
            "Landroid/transition/TransitionValuesMaps;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/transition/TransitionValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 694
    .local p4, "startValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    .local p5, "endValuesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    invoke-static {}, getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v25

    .line 695
    .local v25, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    const-wide v20, 0x7fffffffffffffffL

    .line 696
    .local v20, "minStartDelay":J
    move-object/from16 v0, p0

    iget-object v6, v0, mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 697
    .local v19, "minAnimator":I
    new-instance v27, Landroid/util/SparseLongArray;

    invoke-direct/range {v27 .. v27}, Landroid/util/SparseLongArray;-><init>()V

    .line 698
    .local v27, "startDelays":Landroid/util/SparseLongArray;
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 699
    .local v28, "startValuesListCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1b
    move/from16 v0, v28

    if-ge v15, v0, :cond_151

    .line 700
    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/transition/TransitionValues;

    .line 701
    .local v26, "start":Landroid/transition/TransitionValues;
    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/transition/TransitionValues;

    .line 702
    .local v14, "end":Landroid/transition/TransitionValues;
    if-eqz v26, :cond_3f

    move-object/from16 v0, v26

    iget-object v6, v0, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3f

    .line 703
    const/16 v26, 0x0

    .line 705
    :cond_3f
    if-eqz v14, :cond_4c

    iget-object v6, v14, Landroid/transition/TransitionValues;->targetedTransitions:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 706
    const/4 v14, 0x0

    .line 708
    :cond_4c
    if-nez v26, :cond_53

    if-nez v14, :cond_53

    .line 699
    :cond_50
    :goto_50
    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    .line 712
    :cond_53
    if-eqz v26, :cond_61

    if-eqz v14, :cond_61

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v14}, isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result v6

    if-eqz v6, :cond_b6

    :cond_61
    const/16 v17, 0x1

    .line 713
    .local v17, "isChanged":Z
    :goto_63
    if-eqz v17, :cond_50

    .line 732
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2, v14}, createAnimator(Landroid/view/ViewGroup;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object v11

    .line 733
    .local v11, "animator":Landroid/animation/Animator;
    if-eqz v11, :cond_50

    .line 735
    const/4 v5, 0x0

    .line 736
    .local v5, "view":Landroid/view/View;
    const/4 v9, 0x0

    .line 737
    .local v9, "infoValues":Landroid/transition/TransitionValues;
    if-eqz v14, :cond_148

    .line 738
    iget-object v5, v14, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 739
    invoke-virtual/range {p0 .. p0}, getTransitionProperties()[Ljava/lang/String;

    move-result-object v24

    .line 740
    .local v24, "properties":[Ljava/lang/String;
    if-eqz v5, :cond_fe

    if-eqz v24, :cond_fe

    move-object/from16 v0, v24

    array-length v6, v0

    if-lez v6, :cond_fe

    .line 741
    new-instance v9, Landroid/transition/TransitionValues;

    .end local v9    # "infoValues":Landroid/transition/TransitionValues;
    invoke-direct {v9}, Landroid/transition/TransitionValues;-><init>()V

    .line 742
    .restart local v9    # "infoValues":Landroid/transition/TransitionValues;
    iput-object v5, v9, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    .line 743
    move-object/from16 v0, p3

    iget-object v6, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/transition/TransitionValues;

    .line 744
    .local v22, "newValues":Landroid/transition/TransitionValues;
    if-eqz v22, :cond_b9

    .line 745
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_99
    move-object/from16 v0, v24

    array-length v6, v0

    move/from16 v0, v18

    if-ge v0, v6, :cond_b9

    .line 746
    iget-object v6, v9, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v7, v24, v18

    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    aget-object v29, v24, v18

    move-object/from16 v0, v29

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    add-int/lit8 v18, v18, 0x1

    goto :goto_99

    .line 712
    .end local v5    # "view":Landroid/view/View;
    .end local v9    # "infoValues":Landroid/transition/TransitionValues;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v17    # "isChanged":Z
    .end local v18    # "j":I
    .end local v22    # "newValues":Landroid/transition/TransitionValues;
    .end local v24    # "properties":[Ljava/lang/String;
    :cond_b6
    const/16 v17, 0x0

    goto :goto_63

    .line 750
    .restart local v5    # "view":Landroid/view/View;
    .restart local v9    # "infoValues":Landroid/transition/TransitionValues;
    .restart local v11    # "animator":Landroid/animation/Animator;
    .restart local v17    # "isChanged":Z
    .restart local v22    # "newValues":Landroid/transition/TransitionValues;
    .restart local v24    # "properties":[Ljava/lang/String;
    :cond_b9
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArrayMap;->size()I

    move-result v23

    .line 751
    .local v23, "numExistingAnims":I
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_bf
    move/from16 v0, v18

    move/from16 v1, v23

    if-ge v0, v1, :cond_fe

    .line 752
    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/animation/Animator;

    .line 753
    .local v10, "anim":Landroid/animation/Animator;
    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$AnimationInfo;

    .line 754
    .local v4, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    if-eqz v6, :cond_144

    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-ne v6, v5, :cond_144

    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    if-nez v6, :cond_e9

    invoke-virtual/range {p0 .. p0}, getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f5

    :cond_e9
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->name:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 757
    :cond_f5
    iget-object v6, v4, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    invoke-virtual {v6, v9}, Landroid/transition/TransitionValues;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_144

    .line 759
    const/4 v11, 0x0

    .line 768
    .end local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v10    # "anim":Landroid/animation/Animator;
    .end local v18    # "j":I
    .end local v22    # "newValues":Landroid/transition/TransitionValues;
    .end local v23    # "numExistingAnims":I
    .end local v24    # "properties":[Ljava/lang/String;
    :cond_fe
    :goto_fe
    if-eqz v11, :cond_50

    .line 769
    move-object/from16 v0, p0

    iget-object v6, v0, mPropagation:Landroid/transition/TransitionPropagation;

    if-eqz v6, :cond_127

    .line 770
    move-object/from16 v0, p0

    iget-object v6, v0, mPropagation:Landroid/transition/TransitionPropagation;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-virtual {v6, v0, v1, v2, v14}, Landroid/transition/TransitionPropagation;->getStartDelay(Landroid/view/ViewGroup;Landroid/transition/Transition;Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)J

    move-result-wide v12

    .line 772
    .local v12, "delay":J
    move-object/from16 v0, p0

    iget-object v6, v0, mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    move-object/from16 v0, v27

    invoke-virtual {v0, v6, v12, v13}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 773
    move-wide/from16 v0, v20

    invoke-static {v12, v13, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v20

    .line 775
    .end local v12    # "delay":J
    :cond_127
    new-instance v4, Landroid/transition/Transition$AnimationInfo;

    invoke-virtual/range {p0 .. p0}, getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v8

    move-object/from16 v7, p0

    invoke-direct/range {v4 .. v9}, Landroid/transition/Transition$AnimationInfo;-><init>(Landroid/view/View;Ljava/lang/String;Landroid/transition/Transition;Landroid/view/WindowId;Landroid/transition/TransitionValues;)V

    .line 777
    .restart local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    move-object/from16 v0, p0

    iget-object v6, v0, mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_50

    .line 751
    .restart local v10    # "anim":Landroid/animation/Animator;
    .restart local v18    # "j":I
    .restart local v22    # "newValues":Landroid/transition/TransitionValues;
    .restart local v23    # "numExistingAnims":I
    .restart local v24    # "properties":[Ljava/lang/String;
    :cond_144
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_bf

    .line 766
    .end local v4    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v10    # "anim":Landroid/animation/Animator;
    .end local v18    # "j":I
    .end local v22    # "newValues":Landroid/transition/TransitionValues;
    .end local v23    # "numExistingAnims":I
    .end local v24    # "properties":[Ljava/lang/String;
    :cond_148
    if-eqz v26, :cond_14f

    move-object/from16 v0, v26

    iget-object v5, v0, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    :goto_14e
    goto :goto_fe

    :cond_14f
    const/4 v5, 0x0

    goto :goto_14e

    .line 783
    .end local v5    # "view":Landroid/view/View;
    .end local v9    # "infoValues":Landroid/transition/TransitionValues;
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v14    # "end":Landroid/transition/TransitionValues;
    .end local v17    # "isChanged":Z
    .end local v26    # "start":Landroid/transition/TransitionValues;
    :cond_151
    const-wide/16 v6, 0x0

    cmp-long v6, v20, v6

    if-eqz v6, :cond_184

    .line 784
    const/4 v15, 0x0

    :goto_158
    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseLongArray;->size()I

    move-result v6

    if-ge v15, v6, :cond_184

    .line 785
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v16

    .line 786
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v6, v0, mAnimators:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/animation/Animator;

    .line 787
    .restart local v11    # "animator":Landroid/animation/Animator;
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v6

    sub-long v6, v6, v20

    invoke-virtual {v11}, Landroid/animation/Animator;->getStartDelay()J

    move-result-wide v30

    add-long v12, v6, v30

    .line 788
    .restart local v12    # "delay":J
    invoke-virtual {v11, v12, v13}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 784
    add-int/lit8 v15, v15, 0x1

    goto :goto_158

    .line 791
    .end local v11    # "animator":Landroid/animation/Animator;
    .end local v12    # "delay":J
    .end local v16    # "index":I
    :cond_184
    return-void
.end method

.method protected end()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 1917
    iget v4, p0, mNumInstances:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, mNumInstances:I

    .line 1918
    iget v4, p0, mNumInstances:I

    if-nez v4, :cond_6f

    .line 1919
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    if-eqz v4, :cond_32

    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_32

    .line 1920
    iget-object v4, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1922
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1923
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_24
    if-ge v0, v1, :cond_32

    .line 1924
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v4, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionEnd(Landroid/transition/Transition;)V

    .line 1923
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1927
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_32
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_33
    iget-object v4, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_4f

    .line 1928
    iget-object v4, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1929
    .local v3, "view":Landroid/view/View;
    if-eqz v3, :cond_4c

    .line 1930
    invoke-virtual {v3, v5}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1927
    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_33

    .line 1933
    .end local v3    # "view":Landroid/view/View;
    :cond_4f
    const/4 v0, 0x0

    :goto_50
    iget-object v4, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v4}, Landroid/util/LongSparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_6c

    .line 1934
    iget-object v4, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v4, v4, Landroid/transition/TransitionValuesMaps;->itemIdValues:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1935
    .restart local v3    # "view":Landroid/view/View;
    if-eqz v3, :cond_69

    .line 1936
    invoke-virtual {v3, v5}, Landroid/view/View;->setHasTransientState(Z)V

    .line 1933
    :cond_69
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 1939
    .end local v3    # "view":Landroid/view/View;
    :cond_6c
    const/4 v4, 0x1

    iput-boolean v4, p0, mEnded:Z

    .line 1941
    .end local v0    # "i":I
    :cond_6f
    return-void
.end method

.method public excludeChildren(IZ)Landroid/transition/Transition;
    .registers 5
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 1159
    if-ltz p1, :cond_e

    .line 1160
    iget-object v0, p0, mTargetIdChildExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p2}, excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mTargetIdChildExcludes:Ljava/util/ArrayList;

    .line 1162
    :cond_e
    return-object p0
.end method

.method public excludeChildren(Landroid/view/View;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 1213
    iget-object v0, p0, mTargetChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mTargetChildExcludes:Ljava/util/ArrayList;

    .line 1214
    return-object p0
.end method

.method public excludeChildren(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 1281
    iget-object v0, p0, mTargetTypeChildExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mTargetTypeChildExcludes:Ljava/util/ArrayList;

    .line 1282
    return-object p0
.end method

.method public excludeTarget(IZ)Landroid/transition/Transition;
    .registers 5
    .param p1, "targetId"    # I
    .param p2, "exclude"    # Z

    .prologue
    .line 1101
    if-ltz p1, :cond_e

    .line 1102
    iget-object v0, p0, mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1, p2}, excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mTargetIdExcludes:Ljava/util/ArrayList;

    .line 1104
    :cond_e
    return-object p0
.end method

.method public excludeTarget(Landroid/view/View;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "target"    # Landroid/view/View;
    .param p2, "exclude"    # Z

    .prologue
    .line 1187
    iget-object v0, p0, mTargetExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mTargetExcludes:Ljava/util/ArrayList;

    .line 1188
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/Class;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "exclude"    # Z

    .prologue
    .line 1254
    iget-object v0, p0, mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mTargetTypeExcludes:Ljava/util/ArrayList;

    .line 1255
    return-object p0
.end method

.method public excludeTarget(Ljava/lang/String;Z)Landroid/transition/Transition;
    .registers 4
    .param p1, "targetName"    # Ljava/lang/String;
    .param p2, "exclude"    # Z

    .prologue
    .line 1129
    iget-object v0, p0, mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-static {v0, p1, p2}, excludeObject(Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, mTargetNameExcludes:Ljava/util/ArrayList;

    .line 1130
    return-object p0
.end method

.method public forceVisibility(IZ)V
    .registers 3
    .param p1, "visibility"    # I
    .param p2, "isStartValue"    # Z

    .prologue
    .line 2197
    return-void
.end method

.method public getDuration()J
    .registers 3

    .prologue
    .line 343
    iget-wide v0, p0, mDuration:J

    return-wide v0
.end method

.method public getEpicenter()Landroid/graphics/Rect;
    .registers 2

    .prologue
    .line 2033
    iget-object v0, p0, mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    if-nez v0, :cond_6

    .line 2034
    const/4 v0, 0x0

    .line 2036
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    invoke-virtual {v0, p0}, Landroid/transition/Transition$EpicenterCallback;->onGetEpicenter(Landroid/transition/Transition;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_5
.end method

.method public getEpicenterCallback()Landroid/transition/Transition$EpicenterCallback;
    .registers 2

    .prologue
    .line 2022
    iget-object v0, p0, mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    return-object v0
.end method

.method public getInterpolator()Landroid/animation/TimeInterpolator;
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    return-object v0
.end method

.method getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .registers 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewInStart"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1639
    iget-object v7, p0, mParent:Landroid/transition/TransitionSet;

    if-eqz v7, :cond_c

    .line 1640
    iget-object v6, p0, mParent:Landroid/transition/TransitionSet;

    invoke-virtual {v6, p1, p2}, Landroid/transition/TransitionSet;->getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v5

    .line 1664
    :cond_b
    :goto_b
    return-object v5

    .line 1642
    :cond_c
    if-eqz p2, :cond_14

    iget-object v3, p0, mStartValuesList:Ljava/util/ArrayList;

    .line 1643
    .local v3, "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :goto_10
    if-nez v3, :cond_17

    move-object v5, v6

    .line 1644
    goto :goto_b

    .line 1642
    .end local v3    # "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :cond_14
    iget-object v3, p0, mEndValuesList:Ljava/util/ArrayList;

    goto :goto_10

    .line 1646
    .restart local v3    # "lookIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :cond_17
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1647
    .local v0, "count":I
    const/4 v2, -0x1

    .line 1648
    .local v2, "index":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1d
    if-ge v1, v0, :cond_2e

    .line 1649
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/transition/TransitionValues;

    .line 1650
    .local v5, "values":Landroid/transition/TransitionValues;
    if-nez v5, :cond_29

    move-object v5, v6

    .line 1652
    goto :goto_b

    .line 1654
    :cond_29
    iget-object v7, v5, Landroid/transition/TransitionValues;->view:Landroid/view/View;

    if-ne v7, p1, :cond_3c

    .line 1655
    move v2, v1

    .line 1659
    .end local v5    # "values":Landroid/transition/TransitionValues;
    :cond_2e
    const/4 v5, 0x0

    .line 1660
    .restart local v5    # "values":Landroid/transition/TransitionValues;
    if-ltz v2, :cond_b

    .line 1661
    if-eqz p2, :cond_3f

    iget-object v4, p0, mEndValuesList:Ljava/util/ArrayList;

    .line 1662
    .local v4, "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :goto_35
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "values":Landroid/transition/TransitionValues;
    check-cast v5, Landroid/transition/TransitionValues;

    .restart local v5    # "values":Landroid/transition/TransitionValues;
    goto :goto_b

    .line 1648
    .end local v4    # "matchIn":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/TransitionValues;>;"
    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 1661
    :cond_3f
    iget-object v4, p0, mStartValuesList:Ljava/util/ArrayList;

    goto :goto_35
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2232
    iget-object v0, p0, mName:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOverrides()Landroid/util/ArrayMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2193
    iget-object v0, p0, mNameOverrides:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public getPathMotion()Landroid/transition/PathMotion;
    .registers 2

    .prologue
    .line 2115
    iget-object v0, p0, mPathMotion:Landroid/transition/PathMotion;

    return-object v0
.end method

.method public getPropagation()Landroid/transition/TransitionPropagation;
    .registers 2

    .prologue
    .line 2143
    iget-object v0, p0, mPropagation:Landroid/transition/TransitionPropagation;

    return-object v0
.end method

.method public getStartDelay()J
    .registers 3

    .prologue
    .line 370
    iget-wide v0, p0, mStartDelay:J

    return-wide v0
.end method

.method public getTargetIds()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1361
    iget-object v0, p0, mTargetIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1389
    iget-object v0, p0, mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetTypes()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1411
    iget-object v0, p0, mTargetTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargetViewNames()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1397
    iget-object v0, p0, mTargetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTargets()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1375
    iget-object v0, p0, mTargets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 422
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "start"    # Z

    .prologue
    .line 1620
    iget-object v1, p0, mParent:Landroid/transition/TransitionSet;

    if-eqz v1, :cond_b

    .line 1621
    iget-object v1, p0, mParent:Landroid/transition/TransitionSet;

    invoke-virtual {v1, p1, p2}, Landroid/transition/TransitionSet;->getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v1

    .line 1624
    :goto_a
    return-object v1

    .line 1623
    :cond_b
    if-eqz p2, :cond_18

    iget-object v0, p0, mStartValues:Landroid/transition/TransitionValuesMaps;

    .line 1624
    .local v0, "valuesMaps":Landroid/transition/TransitionValuesMaps;
    :goto_f
    iget-object v1, v0, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/transition/TransitionValues;

    goto :goto_a

    .line 1623
    .end local v0    # "valuesMaps":Landroid/transition/TransitionValuesMaps;
    :cond_18
    iget-object v0, p0, mEndValues:Landroid/transition/TransitionValuesMaps;

    goto :goto_f
.end method

.method public isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z
    .registers 10
    .param p1, "startValues"    # Landroid/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/transition/TransitionValues;

    .prologue
    .line 1796
    const/4 v5, 0x0

    .line 1799
    .local v5, "valuesChanged":Z
    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    .line 1800
    invoke-virtual {p0}, getTransitionProperties()[Ljava/lang/String;

    move-result-object v4

    .line 1801
    .local v4, "properties":[Ljava/lang/String;
    if-eqz v4, :cond_1c

    .line 1802
    array-length v0, v4

    .line 1803
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    if-ge v1, v0, :cond_18

    .line 1804
    aget-object v6, v4, v1

    invoke-static {p1, p2, v6}, isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_19

    .line 1805
    const/4 v5, 0x1

    .line 1818
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v4    # "properties":[Ljava/lang/String;
    :cond_18
    :goto_18
    return v5

    .line 1803
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    .restart local v4    # "properties":[Ljava/lang/String;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1810
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1c
    iget-object v6, p1, Landroid/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_26
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1811
    .local v3, "key":Ljava/lang/String;
    invoke-static {p1, p2, v3}, isValueChanged(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 1812
    const/4 v5, 0x1

    .line 1813
    goto :goto_18
.end method

.method isValidTarget(Landroid/view/View;)Z
    .registers 10
    .param p1, "target"    # Landroid/view/View;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 804
    if-nez p1, :cond_6

    move v4, v5

    .line 846
    :goto_5
    return v4

    .line 807
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 808
    .local v2, "targetId":I
    iget-object v4, p0, mTargetIdExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_1c

    iget-object v4, p0, mTargetIdExcludes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    move v4, v5

    .line 809
    goto :goto_5

    .line 811
    :cond_1c
    iget-object v4, p0, mTargetExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_2a

    iget-object v4, p0, mTargetExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    move v4, v5

    .line 812
    goto :goto_5

    .line 814
    :cond_2a
    iget-object v4, p0, mTargetTypeExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_4c

    if-eqz p1, :cond_4c

    .line 815
    iget-object v4, p0, mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 816
    .local v1, "numTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_37
    if-ge v0, v1, :cond_4c

    .line 817
    iget-object v4, p0, mTargetTypeExcludes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    .line 818
    .local v3, "type":Ljava/lang/Class;
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_49

    move v4, v5

    .line 819
    goto :goto_5

    .line 816
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_37

    .line 823
    .end local v0    # "i":I
    .end local v1    # "numTypes":I
    .end local v3    # "type":Ljava/lang/Class;
    :cond_4c
    iget-object v4, p0, mTargetNameExcludes:Ljava/util/ArrayList;

    if-eqz v4, :cond_66

    if-eqz p1, :cond_66

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 824
    iget-object v4, p0, mTargetNameExcludes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    move v4, v5

    .line 825
    goto :goto_5

    .line 828
    :cond_66
    iget-object v4, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_91

    iget-object v4, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_91

    iget-object v4, p0, mTargetTypes:Ljava/util/ArrayList;

    if-eqz v4, :cond_82

    iget-object v4, p0, mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_91

    :cond_82
    iget-object v4, p0, mTargetNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_8e

    iget-object v4, p0, mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_91

    :cond_8e
    move v4, v6

    .line 831
    goto/16 :goto_5

    .line 833
    :cond_91
    iget-object v4, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a5

    iget-object v4, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    :cond_a5
    move v4, v6

    .line 834
    goto/16 :goto_5

    .line 836
    :cond_a8
    iget-object v4, p0, mTargetNames:Ljava/util/ArrayList;

    if-eqz v4, :cond_bb

    iget-object v4, p0, mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bb

    move v4, v6

    .line 837
    goto/16 :goto_5

    .line 839
    :cond_bb
    iget-object v4, p0, mTargetTypes:Ljava/util/ArrayList;

    if-eqz v4, :cond_dc

    .line 840
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c0
    iget-object v4, p0, mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_dc

    .line 841
    iget-object v4, p0, mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d9

    move v4, v6

    .line 842
    goto/16 :goto_5

    .line 840
    :cond_d9
    add-int/lit8 v0, v0, 0x1

    goto :goto_c0

    .end local v0    # "i":I
    :cond_dc
    move v4, v5

    .line 846
    goto/16 :goto_5
.end method

.method public pause(Landroid/view/View;)V
    .registers 11
    .param p1, "sceneRoot"    # Landroid/view/View;

    .prologue
    .line 1675
    iget-boolean v8, p0, mEnded:Z

    if-nez v8, :cond_60

    .line 1676
    invoke-static {}, getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1677
    .local v5, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1678
    .local v4, "numOldAnims":I
    if-eqz p1, :cond_36

    .line 1679
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v7

    .line 1680
    .local v7, "windowId":Landroid/view/WindowId;
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_14
    if-ltz v1, :cond_36

    .line 1681
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition$AnimationInfo;

    .line 1682
    .local v2, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v8, :cond_33

    if-eqz v7, :cond_33

    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    invoke-virtual {v7, v8}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_33

    .line 1683
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1684
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->pause()V

    .line 1680
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_33
    add-int/lit8 v1, v1, -0x1

    goto :goto_14

    .line 1688
    .end local v1    # "i":I
    .end local v2    # "info":Landroid/transition/Transition$AnimationInfo;
    .end local v7    # "windowId":Landroid/view/WindowId;
    :cond_36
    iget-object v8, p0, mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_5d

    iget-object v8, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5d

    .line 1689
    iget-object v8, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1691
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1692
    .local v3, "numListeners":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4f
    if-ge v1, v3, :cond_5d

    .line 1693
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v8, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionPause(Landroid/transition/Transition;)V

    .line 1692
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 1696
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_5d
    const/4 v8, 0x1

    iput-boolean v8, p0, mPaused:Z

    .line 1698
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    :cond_60
    return-void
.end method

.method playTransition(Landroid/view/ViewGroup;)V
    .registers 20
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 1739
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, mStartValuesList:Ljava/util/ArrayList;

    .line 1740
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v1, v0, mEndValuesList:Ljava/util/ArrayList;

    .line 1741
    move-object/from16 v0, p0

    iget-object v1, v0, mStartValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v0, p0

    iget-object v2, v0, mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, matchStartAndEnd(Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;)V

    .line 1743
    invoke-static {}, getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v15

    .line 1744
    .local v15, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v15}, Landroid/util/ArrayMap;->size()I

    move-result v11

    .line 1745
    .local v11, "numOldAnims":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getWindowId()Landroid/view/WindowId;

    move-result-object v17

    .line 1746
    .local v17, "windowId":Landroid/view/WindowId;
    add-int/lit8 v10, v11, -0x1

    .local v10, "i":I
    :goto_2d
    if-ltz v10, :cond_92

    .line 1747
    invoke-virtual {v15, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    .line 1748
    .local v7, "anim":Landroid/animation/Animator;
    if-eqz v7, :cond_89

    .line 1749
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/transition/Transition$AnimationInfo;

    .line 1750
    .local v12, "oldInfo":Landroid/transition/Transition$AnimationInfo;
    if-eqz v12, :cond_89

    iget-object v1, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v1, :cond_89

    iget-object v1, v12, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    move-object/from16 v0, v17

    if-ne v1, v0, :cond_89

    .line 1751
    iget-object v13, v12, Landroid/transition/Transition$AnimationInfo;->values:Landroid/transition/TransitionValues;

    .line 1752
    .local v13, "oldValues":Landroid/transition/TransitionValues;
    iget-object v14, v12, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    .line 1753
    .local v14, "oldView":Landroid/view/View;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, getTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v16

    .line 1754
    .local v16, "startValues":Landroid/transition/TransitionValues;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v1}, getMatchedTransitionValues(Landroid/view/View;Z)Landroid/transition/TransitionValues;

    move-result-object v9

    .line 1755
    .local v9, "endValues":Landroid/transition/TransitionValues;
    if-nez v16, :cond_6b

    if-nez v9, :cond_6b

    .line 1756
    move-object/from16 v0, p0

    iget-object v1, v0, mEndValues:Landroid/transition/TransitionValuesMaps;

    iget-object v1, v1, Landroid/transition/TransitionValuesMaps;->viewValues:Landroid/util/ArrayMap;

    invoke-virtual {v1, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "endValues":Landroid/transition/TransitionValues;
    check-cast v9, Landroid/transition/TransitionValues;

    .line 1758
    .restart local v9    # "endValues":Landroid/transition/TransitionValues;
    :cond_6b
    if-nez v16, :cond_6f

    if-eqz v9, :cond_8c

    :cond_6f
    iget-object v1, v12, Landroid/transition/Transition$AnimationInfo;->transition:Landroid/transition/Transition;

    invoke-virtual {v1, v13, v9}, isTransitionRequired(Landroid/transition/TransitionValues;Landroid/transition/TransitionValues;)Z

    move-result v1

    if-eqz v1, :cond_8c

    const/4 v8, 0x1

    .line 1760
    .local v8, "cancel":Z
    :goto_78
    if-eqz v8, :cond_89

    .line 1761
    invoke-virtual {v7}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_86

    invoke-virtual {v7}, Landroid/animation/Animator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 1765
    :cond_86
    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 1746
    .end local v8    # "cancel":Z
    .end local v9    # "endValues":Landroid/transition/TransitionValues;
    .end local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v13    # "oldValues":Landroid/transition/TransitionValues;
    .end local v14    # "oldView":Landroid/view/View;
    .end local v16    # "startValues":Landroid/transition/TransitionValues;
    :cond_89
    :goto_89
    add-int/lit8 v10, v10, -0x1

    goto :goto_2d

    .line 1758
    .restart local v9    # "endValues":Landroid/transition/TransitionValues;
    .restart local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .restart local v13    # "oldValues":Landroid/transition/TransitionValues;
    .restart local v14    # "oldView":Landroid/view/View;
    .restart local v16    # "startValues":Landroid/transition/TransitionValues;
    :cond_8c
    const/4 v8, 0x0

    goto :goto_78

    .line 1770
    .restart local v8    # "cancel":Z
    :cond_8e
    invoke-virtual {v15, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_89

    .line 1777
    .end local v7    # "anim":Landroid/animation/Animator;
    .end local v8    # "cancel":Z
    .end local v9    # "endValues":Landroid/transition/TransitionValues;
    .end local v12    # "oldInfo":Landroid/transition/Transition$AnimationInfo;
    .end local v13    # "oldValues":Landroid/transition/TransitionValues;
    .end local v14    # "oldView":Landroid/view/View;
    .end local v16    # "startValues":Landroid/transition/TransitionValues;
    :cond_92
    move-object/from16 v0, p0

    iget-object v3, v0, mStartValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v0, p0

    iget-object v4, v0, mEndValues:Landroid/transition/TransitionValuesMaps;

    move-object/from16 v0, p0

    iget-object v5, v0, mStartValuesList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v6, v0, mEndValuesList:Ljava/util/ArrayList;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, createAnimators(Landroid/view/ViewGroup;Landroid/transition/TransitionValuesMaps;Landroid/transition/TransitionValuesMaps;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1778
    invoke-virtual/range {p0 .. p0}, runAnimators()V

    .line 1779
    return-void
.end method

.method public removeListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;
    .registers 3
    .param p1, "listener"    # Landroid/transition/Transition$TransitionListener;

    .prologue
    .line 1988
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_5

    .line 1995
    :cond_4
    :goto_4
    return-object p0

    .line 1991
    :cond_5
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1992
    iget-object v0, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 1993
    const/4 v0, 0x0

    iput-object v0, p0, mListeners:Ljava/util/ArrayList;

    goto :goto_4
.end method

.method public removeTarget(I)Landroid/transition/Transition;
    .registers 4
    .param p1, "targetId"    # I

    .prologue
    .line 1056
    if-lez p1, :cond_b

    .line 1057
    iget-object v0, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1059
    :cond_b
    return-object p0
.end method

.method public removeTarget(Landroid/view/View;)Landroid/transition/Transition;
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 1327
    if-eqz p1, :cond_7

    .line 1328
    iget-object v0, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1330
    :cond_7
    return-object p0
.end method

.method public removeTarget(Ljava/lang/Class;)Landroid/transition/Transition;
    .registers 3
    .param p1, "target"    # Ljava/lang/Class;

    .prologue
    .line 1344
    if-eqz p1, :cond_7

    .line 1345
    iget-object v0, p0, mTargetTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1347
    :cond_7
    return-object p0
.end method

.method public removeTarget(Ljava/lang/String;)Landroid/transition/Transition;
    .registers 3
    .param p1, "targetName"    # Ljava/lang/String;

    .prologue
    .line 1073
    if-eqz p1, :cond_b

    iget-object v0, p0, mTargetNames:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1074
    iget-object v0, p0, mTargetNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1076
    :cond_b
    return-object p0
.end method

.method public resume(Landroid/view/View;)V
    .registers 11
    .param p1, "sceneRoot"    # Landroid/view/View;

    .prologue
    .line 1708
    iget-boolean v8, p0, mPaused:Z

    if-eqz v8, :cond_62

    .line 1709
    iget-boolean v8, p0, mEnded:Z

    if-nez v8, :cond_5f

    .line 1710
    invoke-static {}, getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v5

    .line 1711
    .local v5, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 1712
    .local v4, "numOldAnims":I
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    move-result-object v7

    .line 1713
    .local v7, "windowId":Landroid/view/WindowId;
    add-int/lit8 v1, v4, -0x1

    .local v1, "i":I
    :goto_16
    if-ltz v1, :cond_38

    .line 1714
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/transition/Transition$AnimationInfo;

    .line 1715
    .local v2, "info":Landroid/transition/Transition$AnimationInfo;
    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->view:Landroid/view/View;

    if-eqz v8, :cond_35

    if-eqz v7, :cond_35

    iget-object v8, v2, Landroid/transition/Transition$AnimationInfo;->windowId:Landroid/view/WindowId;

    invoke-virtual {v7, v8}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_35

    .line 1716
    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 1717
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->resume()V

    .line 1713
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_16

    .line 1720
    .end local v2    # "info":Landroid/transition/Transition$AnimationInfo;
    :cond_38
    iget-object v8, p0, mListeners:Ljava/util/ArrayList;

    if-eqz v8, :cond_5f

    iget-object v8, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_5f

    .line 1721
    iget-object v8, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1723
    .local v6, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1724
    .local v3, "numListeners":I
    const/4 v1, 0x0

    :goto_51
    if-ge v1, v3, :cond_5f

    .line 1725
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v8, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionResume(Landroid/transition/Transition;)V

    .line 1724
    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 1729
    .end local v1    # "i":I
    .end local v3    # "numListeners":I
    .end local v4    # "numOldAnims":I
    .end local v5    # "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    .end local v6    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    .end local v7    # "windowId":Landroid/view/WindowId;
    :cond_5f
    const/4 v8, 0x0

    iput-boolean v8, p0, mPaused:Z

    .line 1731
    :cond_62
    return-void
.end method

.method protected runAnimators()V
    .registers 5

    .prologue
    .line 868
    invoke-virtual {p0}, start()V

    .line 869
    invoke-static {}, getRunningAnimators()Landroid/util/ArrayMap;

    move-result-object v2

    .line 871
    .local v2, "runningAnimators":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/animation/Animator;Landroid/transition/Transition$AnimationInfo;>;"
    iget-object v3, p0, mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 875
    .local v0, "anim":Landroid/animation/Animator;
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 876
    invoke-virtual {p0}, start()V

    .line 877
    invoke-direct {p0, v0, v2}, runAnimator(Landroid/animation/Animator;Landroid/util/ArrayMap;)V

    goto :goto_d

    .line 880
    .end local v0    # "anim":Landroid/animation/Animator;
    :cond_26
    iget-object v3, p0, mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 881
    invoke-virtual {p0}, end()V

    .line 882
    return-void
.end method

.method setCanRemoveViews(Z)V
    .registers 2
    .param p1, "canRemoveViews"    # Z

    .prologue
    .line 2175
    iput-boolean p1, p0, mCanRemoveViews:Z

    .line 2176
    return-void
.end method

.method public setDuration(J)Landroid/transition/Transition;
    .registers 4
    .param p1, "duration"    # J

    .prologue
    .line 330
    iput-wide p1, p0, mDuration:J

    .line 331
    return-object p0
.end method

.method public setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V
    .registers 2
    .param p1, "epicenterCallback"    # Landroid/transition/Transition$EpicenterCallback;

    .prologue
    .line 2009
    iput-object p1, p0, mEpicenterCallback:Landroid/transition/Transition$EpicenterCallback;

    .line 2010
    return-void
.end method

.method public setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/Transition;
    .registers 2
    .param p1, "interpolator"    # Landroid/animation/TimeInterpolator;

    .prologue
    .line 384
    iput-object p1, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    .line 385
    return-object p0
.end method

.method public varargs setMatchOrder([I)V
    .registers 6
    .param p1, "matches"    # [I

    .prologue
    .line 493
    if-eqz p1, :cond_5

    array-length v2, p1

    if-nez v2, :cond_a

    .line 494
    :cond_5
    sget-object v2, DEFAULT_MATCH_ORDER:[I

    iput-object v2, p0, mMatchOrder:[I

    .line 507
    :goto_9
    return-void

    .line 496
    :cond_a
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_b
    array-length v2, p1

    if-ge v0, v2, :cond_31

    .line 497
    aget v1, p1, v0

    .line 498
    .local v1, "match":I
    invoke-static {v1}, isValidMatch(I)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 499
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "matches contains invalid value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 501
    :cond_1f
    invoke-static {p1, v0}, alreadyContains([II)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 502
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "matches contains a duplicate value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 496
    :cond_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 505
    .end local v1    # "match":I
    :cond_31
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, mMatchOrder:[I

    goto :goto_9
.end method

.method public setNameOverrides(Landroid/util/ArrayMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2188
    .local p1, "overrides":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, mNameOverrides:Landroid/util/ArrayMap;

    .line 2189
    return-void
.end method

.method public setPathMotion(Landroid/transition/PathMotion;)V
    .registers 3
    .param p1, "pathMotion"    # Landroid/transition/PathMotion;

    .prologue
    .line 2077
    if-nez p1, :cond_7

    .line 2078
    sget-object v0, STRAIGHT_PATH_MOTION:Landroid/transition/PathMotion;

    iput-object v0, p0, mPathMotion:Landroid/transition/PathMotion;

    .line 2082
    :goto_6
    return-void

    .line 2080
    :cond_7
    iput-object p1, p0, mPathMotion:Landroid/transition/PathMotion;

    goto :goto_6
.end method

.method public setPropagation(Landroid/transition/TransitionPropagation;)V
    .registers 2
    .param p1, "transitionPropagation"    # Landroid/transition/TransitionPropagation;

    .prologue
    .line 2129
    iput-object p1, p0, mPropagation:Landroid/transition/TransitionPropagation;

    .line 2130
    return-void
.end method

.method setSceneRoot(Landroid/view/ViewGroup;)Landroid/transition/Transition;
    .registers 2
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    .line 2170
    iput-object p1, p0, mSceneRoot:Landroid/view/ViewGroup;

    .line 2171
    return-object p0
.end method

.method public setStartDelay(J)Landroid/transition/Transition;
    .registers 4
    .param p1, "startDelay"    # J

    .prologue
    .line 357
    iput-wide p1, p0, mStartDelay:J

    .line 358
    return-object p0
.end method

.method protected start()V
    .registers 5

    .prologue
    .line 1891
    iget v3, p0, mNumInstances:I

    if-nez v3, :cond_2e

    .line 1892
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    if-eqz v3, :cond_2b

    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2b

    .line 1893
    iget-object v3, p0, mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 1895
    .local v2, "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1896
    .local v1, "numListeners":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    if-ge v0, v1, :cond_2b

    .line 1897
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/transition/Transition$TransitionListener;

    invoke-interface {v3, p0}, Landroid/transition/Transition$TransitionListener;->onTransitionStart(Landroid/transition/Transition;)V

    .line 1896
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1900
    .end local v0    # "i":I
    .end local v1    # "numListeners":I
    .end local v2    # "tmpListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/transition/Transition$TransitionListener;>;"
    :cond_2b
    const/4 v3, 0x0

    iput-boolean v3, p0, mEnded:Z

    .line 1902
    :cond_2e
    iget v3, p0, mNumInstances:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, mNumInstances:I

    .line 1903
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2201
    const-string v0, ""

    invoke-virtual {p0, v0}, toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 2236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "@"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2238
    .local v1, "result":Ljava/lang/String;
    iget-wide v2, p0, mDuration:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_58

    .line 2239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dur("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mDuration:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2241
    :cond_58
    iget-wide v2, p0, mStartDelay:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_7d

    .line 2242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dly("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, mStartDelay:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2244
    :cond_7d
    iget-object v2, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    if-eqz v2, :cond_a0

    .line 2245
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "interp("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2247
    :cond_a0
    iget-object v2, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_b0

    iget-object v2, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_157

    .line 2248
    :cond_b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "tgts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2249
    iget-object v2, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_104

    .line 2250
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_cd
    iget-object v2, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_104

    .line 2251
    if-lez v0, :cond_ea

    .line 2252
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2254
    :cond_ea
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2250
    add-int/lit8 v0, v0, 0x1

    goto :goto_cd

    .line 2257
    .end local v0    # "i":I
    :cond_104
    iget-object v2, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_144

    .line 2258
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_10d
    iget-object v2, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_144

    .line 2259
    if-lez v0, :cond_12a

    .line 2260
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2262
    :cond_12a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2258
    add-int/lit8 v0, v0, 0x1

    goto :goto_10d

    .line 2265
    .end local v0    # "i":I
    :cond_144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2267
    :cond_157
    return-object v1
.end method
