.class public Landroid/view/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TOGETHER:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private static createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;
    .registers 11
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "parent"    # Landroid/view/animation/AnimationSet;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 106
    .local v0, "anim":Landroid/view/animation/Animation;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 109
    .local v1, "depth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_8e

    :cond_12
    const/4 v4, 0x1

    if-eq v3, v4, :cond_8e

    .line 111
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 115
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, "name":Ljava/lang/String;
    const-string/jumbo v4, "set"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 118
    new-instance v0, Landroid/view/animation/AnimationSet;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    move-object v4, v0

    .line 119
    check-cast v4, Landroid/view/animation/AnimationSet;

    invoke-static {p0, p1, v4, p3}, createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/view/animation/AnimationSet;Landroid/util/AttributeSet;)Landroid/view/animation/Animation;

    .line 132
    :goto_30
    if-eqz p2, :cond_5

    .line 133
    invoke-virtual {p2, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_5

    .line 120
    :cond_36
    const-string v4, "alpha"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 121
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/AlphaAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_30

    .line 122
    :cond_44
    const-string/jumbo v4, "scale"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 123
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/ScaleAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_30

    .line 124
    :cond_53
    const-string/jumbo v4, "rotate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_62

    .line 125
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/RotateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_30

    .line 126
    :cond_62
    const-string/jumbo v4, "translate"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 127
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    invoke-direct {v0, p0, p3}, Landroid/view/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "anim":Landroid/view/animation/Animation;
    goto :goto_30

    .line 129
    :cond_71
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 137
    .end local v2    # "name":Ljava/lang/String;
    :cond_8e
    return-object v0
.end method

.method private static createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    .registers 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 328
    const/4 v2, 0x0

    .line 332
    .local v2, "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 335
    .local v1, "depth":I
    :cond_5
    :goto_5
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    .local v4, "type":I
    const/4 v5, 0x3

    if-ne v4, v5, :cond_12

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_33c

    :cond_12
    const/4 v5, 0x1

    if-eq v4, v5, :cond_33c

    .line 337
    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    .line 341
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    .line 343
    .local v0, "attrs":Landroid/util/AttributeSet;
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, "name":Ljava/lang/String;
    const-string v5, "linearInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 346
    new-instance v2, Landroid/view/animation/LinearInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_5

    .line 347
    :cond_2e
    const-string v5, "accelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 348
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/AccelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_5

    .line 349
    :cond_3c
    const-string v5, "decelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 350
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/DecelerateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_5

    .line 351
    :cond_4a
    const-string v5, "accelerateDecelerateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 352
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_5

    .line 353
    :cond_58
    const-string v5, "cycleInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 354
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/CycleInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_5

    .line 355
    :cond_66
    const-string v5, "anticipateInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_74

    .line 356
    new-instance v2, Landroid/view/animation/AnticipateInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/AnticipateInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_5

    .line 357
    :cond_74
    const-string/jumbo v5, "overshootInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_83

    .line 358
    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/OvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto :goto_5

    .line 359
    :cond_83
    const-string v5, "anticipateOvershootInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_92

    .line 360
    new-instance v2, Landroid/view/animation/AnticipateOvershootInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 361
    :cond_92
    const-string v5, "bounceInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a1

    .line 362
    new-instance v2, Landroid/view/animation/BounceInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 363
    :cond_a1
    const-string/jumbo v5, "pathInterpolator"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b1

    .line 364
    new-instance v2, Landroid/view/animation/PathInterpolator;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/PathInterpolator;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 365
    :cond_b1
    const-string v5, "backEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c0

    .line 366
    new-instance v2, Landroid/view/animation/interpolator/BackEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/interpolator/BackEaseIn;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 367
    :cond_c0
    const-string v5, "backEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_cf

    .line 368
    new-instance v2, Landroid/view/animation/interpolator/BackEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/interpolator/BackEaseOut;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 369
    :cond_cf
    const-string v5, "backEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_de

    .line 370
    new-instance v2, Landroid/view/animation/interpolator/BackEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/interpolator/BackEaseInOut;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 371
    :cond_de
    const-string v5, "bounceEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 372
    new-instance v2, Landroid/view/animation/interpolator/BounceEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/BounceEaseIn;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 373
    :cond_ed
    const-string v5, "bounceEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_fc

    .line 374
    new-instance v2, Landroid/view/animation/interpolator/BounceEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/BounceEaseOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 375
    :cond_fc
    const-string v5, "bounceEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10b

    .line 376
    new-instance v2, Landroid/view/animation/interpolator/BounceEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/BounceEaseInOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 377
    :cond_10b
    const-string v5, "circEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11a

    .line 378
    new-instance v2, Landroid/view/animation/interpolator/CircEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/CircEaseIn;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 379
    :cond_11a
    const-string v5, "circEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_129

    .line 380
    new-instance v2, Landroid/view/animation/interpolator/CircEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/CircEaseOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 381
    :cond_129
    const-string v5, "circEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_138

    .line 382
    new-instance v2, Landroid/view/animation/interpolator/CircEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/CircEaseInOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 383
    :cond_138
    const-string v5, "cubicEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    .line 384
    new-instance v2, Landroid/view/animation/interpolator/CubicEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/CubicEaseIn;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 385
    :cond_147
    const-string v5, "cubicEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_156

    .line 386
    new-instance v2, Landroid/view/animation/interpolator/CubicEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/CubicEaseOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 387
    :cond_156
    const-string v5, "cubicEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_165

    .line 388
    new-instance v2, Landroid/view/animation/interpolator/CubicEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/CubicEaseInOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 389
    :cond_165
    const-string v5, "elasticEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_174

    .line 390
    new-instance v2, Landroid/view/animation/interpolator/ElasticEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/interpolator/ElasticEaseIn;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 391
    :cond_174
    const-string v5, "elasticEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_183

    .line 392
    new-instance v2, Landroid/view/animation/interpolator/ElasticEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/interpolator/ElasticEaseOut;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 393
    :cond_183
    const-string v5, "elasticEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_192

    .line 394
    new-instance v2, Landroid/view/animation/interpolator/ElasticEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2, p0, p1, v0}, Landroid/view/animation/interpolator/ElasticEaseInOut;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 395
    :cond_192
    const-string v5, "expoEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a1

    .line 396
    new-instance v2, Landroid/view/animation/interpolator/ExpoEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/ExpoEaseIn;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 397
    :cond_1a1
    const-string v5, "expoEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b0

    .line 398
    new-instance v2, Landroid/view/animation/interpolator/ExpoEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/ExpoEaseOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 399
    :cond_1b0
    const-string v5, "expoEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1bf

    .line 400
    new-instance v2, Landroid/view/animation/interpolator/ExpoEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/ExpoEaseInOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 401
    :cond_1bf
    const-string/jumbo v5, "quadEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1cf

    .line 402
    new-instance v2, Landroid/view/animation/interpolator/QuadEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuadEaseIn;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 403
    :cond_1cf
    const-string/jumbo v5, "quadEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1df

    .line 404
    new-instance v2, Landroid/view/animation/interpolator/QuadEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuadEaseOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 405
    :cond_1df
    const-string/jumbo v5, "quadEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ef

    .line 406
    new-instance v2, Landroid/view/animation/interpolator/QuadEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuadEaseInOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 407
    :cond_1ef
    const-string/jumbo v5, "quartEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1ff

    .line 408
    new-instance v2, Landroid/view/animation/interpolator/QuartEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuartEaseIn;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 409
    :cond_1ff
    const-string/jumbo v5, "quartEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20f

    .line 410
    new-instance v2, Landroid/view/animation/interpolator/QuartEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuartEaseOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 411
    :cond_20f
    const-string/jumbo v5, "quartEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21f

    .line 412
    new-instance v2, Landroid/view/animation/interpolator/QuartEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuartEaseInOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 413
    :cond_21f
    const-string/jumbo v5, "quintEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22f

    .line 414
    new-instance v2, Landroid/view/animation/interpolator/QuintEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintEaseIn;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 415
    :cond_22f
    const-string/jumbo v5, "quintEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23f

    .line 416
    new-instance v2, Landroid/view/animation/interpolator/QuintEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 417
    :cond_23f
    const-string/jumbo v5, "quintEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24f

    .line 418
    new-instance v2, Landroid/view/animation/interpolator/QuintEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintEaseInOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 419
    :cond_24f
    const-string/jumbo v5, "sineEaseIn"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25f

    .line 420
    new-instance v2, Landroid/view/animation/interpolator/SineEaseIn;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseIn;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 421
    :cond_25f
    const-string/jumbo v5, "sineEaseOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26f

    .line 422
    new-instance v2, Landroid/view/animation/interpolator/SineEaseOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 423
    :cond_26f
    const-string/jumbo v5, "sineEaseInOut"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27f

    .line 424
    new-instance v2, Landroid/view/animation/interpolator/SineEaseInOut;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineEaseInOut;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 425
    :cond_27f
    const-string/jumbo v5, "quintOut50"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28f

    .line 426
    new-instance v2, Landroid/view/animation/interpolator/QuintOut50;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut50;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 427
    :cond_28f
    const-string/jumbo v5, "quintOut80"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29f

    .line 428
    new-instance v2, Landroid/view/animation/interpolator/QuintOut80;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/QuintOut80;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 429
    :cond_29f
    const-string/jumbo v5, "sineIn33"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2af

    .line 430
    new-instance v2, Landroid/view/animation/interpolator/SineIn33;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineIn33;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 431
    :cond_2af
    const-string/jumbo v5, "sineInOut33"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2bf

    .line 432
    new-instance v2, Landroid/view/animation/interpolator/SineInOut33;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut33;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 433
    :cond_2bf
    const-string/jumbo v5, "sineInOut50"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2cf

    .line 434
    new-instance v2, Landroid/view/animation/interpolator/SineInOut50;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut50;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 435
    :cond_2cf
    const-string/jumbo v5, "sineInOut60"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2df

    .line 436
    new-instance v2, Landroid/view/animation/interpolator/SineInOut60;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut60;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 437
    :cond_2df
    const-string/jumbo v5, "sineInOut70"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2ef

    .line 438
    new-instance v2, Landroid/view/animation/interpolator/SineInOut70;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut70;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 439
    :cond_2ef
    const-string/jumbo v5, "sineInOut80"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2ff

    .line 440
    new-instance v2, Landroid/view/animation/interpolator/SineInOut80;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 441
    :cond_2ff
    const-string/jumbo v5, "sineInOut90"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30f

    .line 442
    new-instance v2, Landroid/view/animation/interpolator/SineInOut90;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineInOut90;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 443
    :cond_30f
    const-string/jumbo v5, "sineOut33"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31f

    .line 444
    new-instance v2, Landroid/view/animation/interpolator/SineOut33;

    .end local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    invoke-direct {v2}, Landroid/view/animation/interpolator/SineOut33;-><init>()V

    .restart local v2    # "interpolator":Landroid/view/animation/BaseInterpolator;
    goto/16 :goto_5

    .line 446
    :cond_31f
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown interpolator name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 449
    .end local v0    # "attrs":Landroid/util/AttributeSet;
    .end local v3    # "name":Ljava/lang/String;
    :cond_33c
    return-object v2
.end method

.method private static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    .registers 3
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v0

    return-object v0
.end method

.method private static createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/view/animation/LayoutAnimationController;
    .registers 10
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 180
    const/4 v0, 0x0

    .line 183
    .local v0, "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 186
    .local v1, "depth":I
    :cond_5
    :goto_5
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x3

    if-ne v3, v4, :cond_12

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_51

    :cond_12
    const/4 v4, 0x1

    if-eq v3, v4, :cond_51

    .line 188
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 192
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "name":Ljava/lang/String;
    const-string v4, "layoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 195
    new-instance v0, Landroid/view/animation/LayoutAnimationController;

    .end local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-direct {v0, p0, p2}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    goto :goto_5

    .line 196
    :cond_2a
    const-string v4, "gridLayoutAnimation"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 197
    new-instance v0, Landroid/view/animation/GridLayoutAnimationController;

    .end local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    invoke-direct {v0, p0, p2}, Landroid/view/animation/GridLayoutAnimationController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .restart local v0    # "controller":Landroid/view/animation/LayoutAnimationController;
    goto :goto_5

    .line 199
    :cond_38
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown layout animation name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 203
    .end local v2    # "name":Ljava/lang/String;
    :cond_51
    return-object v0
.end method

.method public static currentAnimationTimeMillis()J
    .registers 2

    .prologue
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v1, 0x0

    .line 76
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 77
    invoke-static {p0, v1}, createAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Animation;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_c} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_3b
    .catchall {:try_start_1 .. :try_end_c} :catchall_34

    move-result-object v3

    .line 89
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_12
    return-object v3

    .line 78
    :catch_13
    move-exception v0

    .line 79
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 81
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 82
    throw v2
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_34

    .line 89
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_34
    move-exception v3

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3a
    throw v3

    .line 83
    :catch_3b
    move-exception v0

    .line 84
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3c
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 87
    throw v2
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_34
.end method

.method public static loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 274
    const/4 v1, 0x0

    .line 276
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 277
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-static {v3, v4, v1}, createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    :try_end_14
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_14} :catch_1b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_14} :catch_43
    .catchall {:try_start_1 .. :try_end_14} :catchall_3c

    move-result-object v3

    .line 289
    if-eqz v1, :cond_1a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1a
    return-object v3

    .line 278
    :catch_1b
    move-exception v0

    .line 279
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1c
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 281
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 282
    throw v2
    :try_end_3c
    .catchall {:try_start_1c .. :try_end_3c} :catchall_3c

    .line 289
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_3c
    move-exception v3

    if-eqz v1, :cond_42

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_42
    throw v3

    .line 283
    :catch_43
    move-exception v0

    .line 284
    .local v0, "ex":Ljava/io/IOException;
    :try_start_44
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 286
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 287
    throw v2
    :try_end_64
    .catchall {:try_start_44 .. :try_end_64} :catchall_3c
.end method

.method public static loadInterpolator(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/view/animation/Interpolator;
    .registers 8
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 304
    const/4 v1, 0x0

    .line 306
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 307
    invoke-static {p0, p1, v1}, createInterpolatorFromXml(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/Interpolator;
    :try_end_8
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_8} :catch_f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_37
    .catchall {:try_start_1 .. :try_end_8} :catchall_30

    move-result-object v3

    .line 319
    if-eqz v1, :cond_e

    .line 320
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_e
    return-object v3

    .line 308
    :catch_f
    move-exception v0

    .line 309
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_10
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 311
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 312
    throw v2
    :try_end_30
    .catchall {:try_start_10 .. :try_end_30} :catchall_30

    .line 319
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_30
    move-exception v3

    if-eqz v1, :cond_36

    .line 320
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_36
    throw v3

    .line 313
    :catch_37
    move-exception v0

    .line 314
    .local v0, "ex":Ljava/io/IOException;
    :try_start_38
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 316
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 317
    throw v2
    :try_end_58
    .catchall {:try_start_38 .. :try_end_58} :catchall_30
.end method

.method public static loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 155
    invoke-static {p0, v1}, createLayoutAnimationFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroid/view/animation/LayoutAnimationController;
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_c} :catch_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_c} :catch_3b
    .catchall {:try_start_1 .. :try_end_c} :catchall_34

    move-result-object v3

    .line 167
    if-eqz v1, :cond_12

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_12
    return-object v3

    .line 156
    :catch_13
    move-exception v0

    .line 157
    .local v0, "ex":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_14
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 159
    .local v2, "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 160
    throw v2
    :try_end_34
    .catchall {:try_start_14 .. :try_end_34} :catchall_34

    .line 167
    .end local v0    # "ex":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    :catchall_34
    move-exception v3

    if-eqz v1, :cond_3a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3a
    throw v3

    .line 161
    :catch_3b
    move-exception v0

    .line 162
    .local v0, "ex":Ljava/io/IOException;
    :try_start_3c
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load animation resource ID #0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 164
    .restart local v2    # "rnf":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 165
    throw v2
    :try_end_5c
    .catchall {:try_start_3c .. :try_end_5c} :catchall_34
.end method

.method public static makeInAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "fromLeft"    # Z

    .prologue
    .line 216
    if-eqz p1, :cond_19

    .line 217
    const v1, 0x10a0002

    invoke-static {p0, v1}, loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 222
    .local v0, "a":Landroid/view/animation/Animation;
    :goto_9
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 223
    invoke-static {}, currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 224
    return-object v0

    .line 219
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_19
    const v1, 0x10a0095

    invoke-static {p0, v1}, loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_9
.end method

.method public static makeInChildBottomAnimation(Landroid/content/Context;)Landroid/view/animation/Animation;
    .registers 5
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 258
    const v1, 0x10a0093

    invoke-static {p0, v1}, loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 259
    .local v0, "a":Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 260
    invoke-static {}, currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 261
    return-object v0
.end method

.method public static makeOutAnimation(Landroid/content/Context;Z)Landroid/view/animation/Animation;
    .registers 6
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "toRight"    # Z

    .prologue
    .line 237
    if-eqz p1, :cond_19

    .line 238
    const v1, 0x10a0003

    invoke-static {p0, v1}, loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 243
    .local v0, "a":Landroid/view/animation/Animation;
    :goto_9
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 244
    invoke-static {}, currentAnimationTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 245
    return-object v0

    .line 240
    .end local v0    # "a":Landroid/view/animation/Animation;
    :cond_19
    const v1, 0x10a0098

    invoke-static {p0, v1}, loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0    # "a":Landroid/view/animation/Animation;
    goto :goto_9
.end method
