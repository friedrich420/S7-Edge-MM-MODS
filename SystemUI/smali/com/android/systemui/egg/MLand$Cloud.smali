.class Lcom/android/systemui/egg/MLand$Cloud;
.super Lcom/android/systemui/egg/MLand$Scenery;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cloud"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Cloud;->this$0:Lcom/android/systemui/egg/MLand;

    .line 1424
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/MLand$Scenery;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 1425
    invoke-static {}, Lcom/android/systemui/egg/MLand;->frand()F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const v0, 0x7f02013f

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/egg/MLand$Cloud;->setBackgroundResource(I)V

    .line 1426
    invoke-virtual {p0}, Lcom/android/systemui/egg/MLand$Cloud;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1427
    # getter for: Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MIN:I

    # getter for: Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->CLOUD_SIZE_MAX:I

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Cloud;->h:I

    iput v0, p0, Lcom/android/systemui/egg/MLand$Cloud;->w:I

    .line 1428
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Cloud;->z:F

    .line 1429
    const v0, 0x3e19999a    # 0.15f

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->frand(FF)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Cloud;->v:F

    .line 1430
    return-void

    .line 1425
    :cond_0
    const v0, 0x7f02013e

    goto :goto_0
.end method
