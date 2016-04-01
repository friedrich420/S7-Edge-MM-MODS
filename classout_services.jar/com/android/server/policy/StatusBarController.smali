.class public Lcom/android/server/policy/StatusBarController;
.super Lcom/android/server/policy/BarController;
.source "StatusBarController.java"


# static fields
.field private static final TRANSITION_DURATION:J = 0x78L


# instance fields
.field private final mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;


# direct methods
.method public constructor <init>()V
    .registers 8

    .prologue
    const/high16 v2, 0x4000000

    .line 109
    const-string v1, "StatusBar"

    const/high16 v3, 0x10000000

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x1

    move-object v0, p0

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/BarController;-><init>(Ljava/lang/String;IIIII)V

    .line 42
    new-instance v0, Lcom/android/server/policy/StatusBarController$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/StatusBarController$1;-><init>(Lcom/android/server/policy/StatusBarController;)V

    iput-object v0, p0, mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/StatusBarController;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    .registers 5
    .param p0, "x0"    # Lcom/android/server/policy/StatusBarController;
    .param p1, "x1"    # Landroid/view/animation/Animation;
    .param p2, "x2"    # Landroid/view/animation/Animation;

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J

    move-result-wide v0

    return-wide v0
.end method

.method private calculateStatusBarTransitionStartTime(Landroid/view/animation/Animation;Landroid/view/animation/Animation;)J
    .registers 11
    .param p1, "openAnimation"    # Landroid/view/animation/Animation;
    .param p2, "closeAnimation"    # Landroid/view/animation/Animation;

    .prologue
    .line 129
    if-eqz p1, :cond_37

    if-eqz p2, :cond_37

    .line 130
    invoke-direct {p0, p1}, findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object v1

    .line 131
    .local v1, "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    invoke-direct {p0, p2}, findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    .line 132
    .local v0, "closeTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    if-eqz v1, :cond_2b

    .line 137
    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-direct {p0, v3}, findAlmostThereFraction(Landroid/view/animation/Interpolator;)F

    move-result v2

    .line 138
    .local v2, "t":F
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getStartOffset()J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-virtual {v1}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v6

    long-to-float v3, v6

    mul-float/2addr v3, v2

    float-to-long v6, v3

    add-long/2addr v4, v6

    const-wide/16 v6, 0x78

    sub-long/2addr v4, v6

    .line 147
    .end local v0    # "closeTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v2    # "t":F
    :goto_2a
    return-wide v4

    .line 141
    .restart local v0    # "closeTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    .restart local v1    # "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_2b
    if-eqz v0, :cond_32

    .line 142
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_2a

    .line 144
    :cond_32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_2a

    .line 147
    .end local v0    # "closeTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    .end local v1    # "openTranslateAnimation":Landroid/view/animation/TranslateAnimation;
    :cond_37
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    goto :goto_2a
.end method

.method private findAlmostThereFraction(Landroid/view/animation/Interpolator;)F
    .registers 6
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 176
    const/high16 v1, 0x3f000000    # 0.5f

    .line 177
    .local v1, "val":F
    const/high16 v0, 0x3e800000    # 0.25f

    .line 178
    .local v0, "adj":F
    :goto_4
    const v2, 0x3c23d70a    # 0.01f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1d

    .line 179
    invoke-interface {p1, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v2

    const v3, 0x3f7d70a4    # 0.99f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1b

    .line 180
    add-float/2addr v1, v0

    .line 184
    :goto_17
    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    goto :goto_4

    .line 182
    :cond_1b
    sub-float/2addr v1, v0

    goto :goto_17

    .line 186
    :cond_1d
    return v1
.end method

.method private findTranslateAnimation(Landroid/view/animation/Animation;)Landroid/view/animation/TranslateAnimation;
    .registers 6
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 157
    instance-of v3, p1, Landroid/view/animation/TranslateAnimation;

    if-eqz v3, :cond_7

    .line 158
    check-cast p1, Landroid/view/animation/TranslateAnimation;

    .line 168
    .end local p1    # "animation":Landroid/view/animation/Animation;
    :goto_6
    return-object p1

    .line 159
    .restart local p1    # "animation":Landroid/view/animation/Animation;
    :cond_7
    instance-of v3, p1, Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_2e

    move-object v2, p1

    .line 160
    check-cast v2, Landroid/view/animation/AnimationSet;

    .line 161
    .local v2, "set":Landroid/view/animation/AnimationSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2e

    .line 162
    invoke-virtual {v2}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/Animation;

    .line 163
    .local v0, "a":Landroid/view/animation/Animation;
    instance-of v3, v0, Landroid/view/animation/TranslateAnimation;

    if-eqz v3, :cond_2b

    .line 164
    check-cast v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "a":Landroid/view/animation/Animation;
    move-object p1, v0

    goto :goto_6

    .line 161
    .restart local v0    # "a":Landroid/view/animation/Animation;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 168
    .end local v0    # "a":Landroid/view/animation/Animation;
    .end local v1    # "i":I
    .end local v2    # "set":Landroid/view/animation/AnimationSet;
    :cond_2e
    const/4 p1, 0x0

    goto :goto_6
.end method


# virtual methods
.method public getAppTransitionListener()Landroid/view/WindowManagerInternal$AppTransitionListener;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, mAppTransitionListener:Landroid/view/WindowManagerInternal$AppTransitionListener;

    return-object v0
.end method
