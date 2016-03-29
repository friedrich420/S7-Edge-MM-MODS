.class public Lcom/android/keyguard/opentheme/xmlparser/Frame;
.super Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;
.source "Frame.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "background"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p3, "imageId":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "length":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, "x":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p6, "y":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p7, "scale":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .local p8, "delay":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/opentheme/common/OpenThemeSpriteView;-><init>(Landroid/content/Context;I)V

    .line 18
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 19
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 21
    new-instance v4, Lcom/android/keyguard/opentheme/common/Sprite;

    invoke-virtual {p5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {p1, v5}, Lcom/android/keyguard/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v6, v5

    invoke-virtual {p6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {p1, v5}, Lcom/android/keyguard/opentheme/common/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v4, v6, v5, v7, v8}, Lcom/android/keyguard/opentheme/common/Sprite;-><init>(FFFF)V

    .line 23
    .local v4, "sprite":Lcom/android/keyguard/opentheme/common/Sprite;
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, p1, v6, v7, v5}, Lcom/android/keyguard/opentheme/common/Sprite;->setBitmap(Landroid/content/Context;IIF)V

    .line 25
    new-instance v3, Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;

    invoke-direct {v3}, Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;-><init>()V

    .line 26
    .local v3, "modifier":Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;
    move-object/from16 v0, p8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;->setStartIndex(I)V

    .line 27
    invoke-virtual {v4, v3}, Lcom/android/keyguard/opentheme/common/Sprite;->addModifier(Lcom/android/keyguard/opentheme/common/SpriteModifier;)Z

    .line 28
    iget-object v5, p0, Lcom/android/keyguard/opentheme/xmlparser/Frame;->mSprites:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    .end local v3    # "modifier":Lcom/android/keyguard/opentheme/common/Sprite$SimpleModifier;
    .end local v4    # "sprite":Lcom/android/keyguard/opentheme/common/Sprite;
    :cond_0
    return-void
.end method
