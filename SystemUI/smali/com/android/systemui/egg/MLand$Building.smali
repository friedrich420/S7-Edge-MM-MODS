.class Lcom/android/systemui/egg/MLand$Building;
.super Lcom/android/systemui/egg/MLand$Scenery;
.source "MLand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/egg/MLand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Building"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/egg/MLand;


# direct methods
.method public constructor <init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1393
    iput-object p1, p0, Lcom/android/systemui/egg/MLand$Building;->this$0:Lcom/android/systemui/egg/MLand;

    .line 1394
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/egg/MLand$Scenery;-><init>(Lcom/android/systemui/egg/MLand;Landroid/content/Context;)V

    .line 1396
    # getter for: Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v0

    iget v0, v0, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MIN:I

    # getter for: Lcom/android/systemui/egg/MLand;->PARAMS:Lcom/android/systemui/egg/MLand$Params;
    invoke-static {}, Lcom/android/systemui/egg/MLand;->access$1000()Lcom/android/systemui/egg/MLand$Params;

    move-result-object v1

    iget v1, v1, Lcom/android/systemui/egg/MLand$Params;->BUILDING_WIDTH_MAX:I

    invoke-static {v0, v1}, Lcom/android/systemui/egg/MLand;->irand(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Building;->w:I

    .line 1397
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/egg/MLand$Building;->h:I

    .line 1398
    return-void
.end method
