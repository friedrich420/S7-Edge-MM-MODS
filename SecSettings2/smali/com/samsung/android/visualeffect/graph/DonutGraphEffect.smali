.class public Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;
.super Landroid/widget/FrameLayout;
.source "DonutGraphEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$LineFinishedListener;,
        Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;
    }
.end annotation


# instance fields
.field private cleanPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

.field private context:Landroid/content/Context;

.field private donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

.field private donutRadius:I

.field private isSetData:Z

.field private lineFinishedListener:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$LineFinishedListener;

.field private newDetailPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private newSimplePie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private oldDetailPie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private oldSimplePie:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->isSetData:Z

    .line 85
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "DonutGraphEffect(context)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    .line 91
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->context:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "radius"    # I

    .prologue
    .line 99
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->isSetData:Z

    .line 101
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "DonutGraphEffect(context)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    .line 107
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->context:Landroid/content/Context;

    .line 109
    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setDonut(III)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->isSetData:Z

    .line 119
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "DonutGraphEffect(context, attrs)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    .line 125
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->context:Landroid/content/Context;

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 133
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->isSetData:Z

    .line 135
    const-string v0, "secVisualEffect_Donut"

    const-string v1, "DonutGraphEffect(context, attrs, defStyle)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    .line 141
    iput-object p1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->context:Landroid/content/Context;

    .line 143
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLineFinishedCallback()V

    return-void
.end method

.method private addDetailPie(Ljava/util/ArrayList;FLjava/lang/String;II)V
    .locals 8
    .param p2, "dataValue"    # F
    .param p3, "colorValue"    # Ljava/lang/String;
    .param p4, "line_x"    # I
    .param p5, "line_y"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;F",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 591
    .local p1, "pie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    const/4 v1, 0x0

    .line 601
    .local v1, "startAngle":F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 603
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .line 605
    .local v7, "prePie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v3

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v4

    add-float v1, v3, v4

    .line 609
    .end local v7    # "prePie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    :cond_0
    const v3, 0x40666666    # 3.6f

    mul-float v2, p2, v3

    .line 611
    .local v2, "sweepAngle":F
    new-instance v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donutRadius:I

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;-><init>(FFLjava/lang/String;III)V

    .line 613
    .local v0, "tempPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 615
    const-string v3, "secVisualEffect_Donut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added detail pie StartAngle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SweepAngle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    return-void
.end method

.method private addSimplePie(Ljava/util/ArrayList;FLjava/lang/String;)V
    .locals 8
    .param p2, "dataValue"    # F
    .param p3, "colorValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;",
            ">;F",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pie":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;>;"
    const/4 v4, -0x1

    .line 555
    const/4 v1, 0x0

    .line 565
    .local v1, "startAngle":F
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_0

    .line 567
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    .line 569
    .local v7, "prePie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalStartAngle()F

    move-result v3

    invoke-virtual {v7}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;->getFinalSweepAngle()F

    move-result v5

    add-float v1, v3, v5

    .line 573
    .end local v7    # "prePie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    :cond_0
    const v3, 0x40666666    # 3.6f

    mul-float v2, p2, v3

    .line 575
    .local v2, "sweepAngle":F
    new-instance v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    iget v6, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donutRadius:I

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;-><init>(FFLjava/lang/String;III)V

    .line 577
    .local v0, "tempPie":Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    const-string v3, "secVisualEffect_Donut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added simple pie StartAngle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " SweepAngle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    return-void
.end method

.method private checkInitData()V
    .locals 1

    .prologue
    .line 537
    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->isSetData:Z

    if-nez v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->oldDetailPie:Ljava/util/ArrayList;

    .line 541
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->oldSimplePie:Ljava/util/ArrayList;

    .line 549
    :goto_0
    return-void

    .line 545
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->isSetData:Z

    goto :goto_0
.end method

.method private setLineCallbackListener()V
    .locals 2

    .prologue
    .line 623
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    new-instance v1, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$1;-><init>(Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->registerLineCallbackListener(Lcom/samsung/android/visualeffect/graph/donutgraph/Donut$LineCallbackListener;)V

    .line 641
    return-void
.end method

.method private setLineFinishedCallback()V
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->lineFinishedListener:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$LineFinishedListener;

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->lineFinishedListener:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$LineFinishedListener;

    invoke-interface {v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$LineFinishedListener;->onLineFinished()V

    .line 653
    :cond_0
    return-void
.end method


# virtual methods
.method public detail(ZJ)V
    .locals 6
    .param p1, "isAnimation"    # Z
    .param p2, "duration"    # J

    .prologue
    const/4 v3, 0x1

    .line 307
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->checkInitData()V

    .line 311
    if-eqz p1, :cond_4

    .line 313
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->status:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    sget-object v1, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->NONE:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    if-ne v0, v1, :cond_1

    .line 315
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimatorSpread(Ljava/util/ArrayList;)V

    .line 335
    :goto_0
    sget-object v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->DETAIL:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->status:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    .line 345
    :cond_0
    :goto_1
    return-void

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->status:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    sget-object v1, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->DETAIL:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    if-ne v0, v1, :cond_2

    .line 319
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->oldDetailPie:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimatorFoldnSpread(Ljava/util/ArrayList;Ljava/util/ArrayList;ZJ)V

    goto :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->status:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    sget-object v1, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->SIMPLE:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    if-ne v0, v1, :cond_3

    .line 323
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->oldSimplePie:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimatorFoldnSpread(Ljava/util/ArrayList;Ljava/util/ArrayList;ZJ)V

    goto :goto_0

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->status:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    sget-object v1, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->CLEAN:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->cleanPie:Lcom/samsung/android/visualeffect/graph/donutgraph/Pie;

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->oldSimplePie:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->startAnimatorFoldnSpread(Ljava/util/ArrayList;Ljava/util/ArrayList;ZJ)V

    goto :goto_0

    .line 339
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->drawDonutWithoutAnimation(Ljava/util/ArrayList;)V

    .line 341
    sget-object v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->DETAIL:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->status:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    goto :goto_1
.end method

.method public setDirectionRTL(Z)V
    .locals 1
    .param p1, "isDirectionRTL"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setDirectionRTL(Z)V

    .line 181
    return-void
.end method

.method public setDonut(III)V
    .locals 3
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "radius"    # I

    .prologue
    .line 149
    const-string v0, "secVisualEffect_Donut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set Donut(left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", top:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", radius:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;-><init>(Landroid/content/Context;III)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    .line 155
    sget-object v0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;->NONE:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->status:Lcom/samsung/android/visualeffect/graph/DonutGraphEffect$Status;

    .line 157
    iput p3, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donutRadius:I

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->setLineCallbackListener()V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->addView(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method public setLayoutDimension(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 171
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setLayoutDimension(II)V

    .line 173
    return-void
.end method

.method public setPie(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 12
    .param p2, "lineColor"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "pieInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;>;"
    const/4 v11, 0x1

    const/high16 v10, 0x42c80000    # 100.0f

    .line 187
    const/4 v8, 0x0

    .line 189
    .local v8, "forSimplePieData":F
    const/4 v6, 0x0

    .line 193
    .local v6, "forLastDetailPieData":F
    iput-boolean v11, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->isSetData:Z

    .line 197
    const-string v7, "#ffffff"

    .line 199
    .local v7, "forSimplePieColor":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->donut:Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;

    invoke-virtual {v0, p2}, Lcom/samsung/android/visualeffect/graph/donutgraph/Donut;->setLineColor(Ljava/lang/String;)V

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->oldSimplePie:Ljava/util/ArrayList;

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->oldDetailPie:Ljava/util/ArrayList;

    .line 207
    const-string v0, "secVisualEffect_Donut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldSimplePie : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->oldSimplePie:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 213
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 217
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 219
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v9, v0, :cond_1

    .line 221
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getData()F

    move-result v2

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getLineX()I

    move-result v4

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getLineY()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->addDetailPie(Ljava/util/ArrayList;FLjava/lang/String;II)V

    .line 225
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getData()F

    move-result v0

    add-float/2addr v6, v0

    .line 237
    :goto_1
    if-nez v9, :cond_2

    .line 239
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getData()F

    move-result v2

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getColor()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->addSimplePie(Ljava/util/ArrayList;FLjava/lang/String;)V

    .line 241
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getData()F

    move-result v0

    sub-float v8, v10, v0

    .line 217
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 229
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newDetailPie:Ljava/util/ArrayList;

    sub-float v2, v10, v6

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getColor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getLineX()I

    move-result v4

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getLineY()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->addDetailPie(Ljava/util/ArrayList;FLjava/lang/String;II)V

    goto :goto_1

    .line 243
    :cond_2
    if-ne v9, v11, :cond_3

    .line 245
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getColor()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 247
    :cond_3
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    .line 249
    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;

    invoke-virtual {v0}, Lcom/samsung/android/visualeffect/graph/donutgraph/PieInfo;->getColor()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 255
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->newSimplePie:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v8, v7}, Lcom/samsung/android/visualeffect/graph/DonutGraphEffect;->addSimplePie(Ljava/util/ArrayList;FLjava/lang/String;)V

    .line 257
    return-void
.end method
