.class Lcom/android/systemui/tuner/QsTuner$DraggableTile;
.super Lcom/android/systemui/qs/QSTile;
.source "QsTuner.java"

# interfaces
.implements Lcom/android/systemui/tuner/QsTuner$DropListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/tuner/QsTuner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DraggableTile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$State;",
        ">;",
        "Lcom/android/systemui/tuner/QsTuner$DropListener;"
    }
.end annotation


# instance fields
.field private mSpec:Ljava/lang/String;

.field private mView:Lcom/android/systemui/qs/QSTileView;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/qs/QSTile$Host;Ljava/lang/String;)V
    .locals 3
    .param p1, "host"    # Lcom/android/systemui/qs/QSTile$Host;
    .param p2, "tileSpec"    # Ljava/lang/String;

    .prologue
    .line 381
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    .line 382
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating tile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iput-object p2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    .line 384
    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/tuner/QsTuner$DraggableTile;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/tuner/QsTuner$DraggableTile;

    .prologue
    .line 375
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    return-object v0
.end method

.method private getIcon()I
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f020210

    .line 445
    :goto_0
    return v0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "bt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0201d9

    goto :goto_0

    .line 436
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "inversion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0201b7

    goto :goto_0

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "cell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0201fc

    goto :goto_0

    .line 438
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "airplane"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f02021a

    goto :goto_0

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "dnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0201e5

    goto :goto_0

    .line 440
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "rotation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0201d2

    goto :goto_0

    .line 441
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "flashlight"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f02021e

    goto :goto_0

    .line 442
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const v0, 0x7f020222

    goto :goto_0

    .line 443
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "cast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const v0, 0x7f0201e3

    goto :goto_0

    .line 444
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v1, "hotspot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const v0, 0x7f0201b1

    goto/16 :goto_0

    .line 445
    :cond_a
    const v0, 0x7f02000c

    goto/16 :goto_0
.end method

.method private getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 418
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    # invokes: Lcom/android/systemui/tuner/QsTuner;->getLabelResource(Ljava/lang/String;)I
    invoke-static {v2}, Lcom/android/systemui/tuner/QsTuner;->access$400(Ljava/lang/String;)I

    move-result v1

    .line 419
    .local v1, "resource":I
    if-eqz v1, :cond_0

    .line 420
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 430
    :goto_0
    return-object v2

    .line 422
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v3, "intent("

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 423
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 424
    .local v0, "lastDot":I
    if-ltz v0, :cond_1

    .line 425
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 427
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    const-string v3, "intent("

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 430
    .end local v0    # "lastDot":I
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 388
    invoke-super {p0, p1}, Lcom/android/systemui/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/qs/QSTileView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mView:Lcom/android/systemui/qs/QSTileView;

    .line 389
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mView:Lcom/android/systemui/qs/QSTileView;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 455
    instance-of v0, p1, Lcom/android/systemui/tuner/QsTuner$DraggableTile;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/tuner/QsTuner$DraggableTile;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 458
    :goto_0
    return v0

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMetricsCategory()I
    .locals 1

    .prologue
    .line 450
    const/16 v0, 0x4e20

    return v0
.end method

.method protected handleClick()V
    .locals 0

    .prologue
    .line 408
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 1
    .param p1, "state"    # Lcom/android/systemui/qs/QSTile$State;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 412
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$State;->visible:Z

    .line 413
    invoke-direct {p0}, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->getIcon()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    .line 414
    invoke-direct {p0}, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$State;->label:Ljava/lang/String;

    .line 415
    return-void
.end method

.method protected newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    .prologue
    .line 403
    new-instance v0, Lcom/android/systemui/qs/QSTile$State;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$State;-><init>()V

    return-object v0
.end method

.method public onDrop(Ljava/lang/String;)V
    .locals 2
    .param p1, "sourceText"    # Ljava/lang/String;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    check-cast v0, Lcom/android/systemui/tuner/QsTuner$CustomHost;

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/tuner/QsTuner$CustomHost;->replace(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listening"    # Z

    .prologue
    .line 399
    return-void
.end method

.method public supportsDualTargets()Z
    .locals 2

    .prologue
    .line 394
    const-string v0, "wifi"

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "bt"

    iget-object v1, p0, Lcom/android/systemui/tuner/QsTuner$DraggableTile;->mSpec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
