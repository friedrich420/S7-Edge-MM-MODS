.class public Lcom/android/systemui/qs/QSContainer;
.super Landroid/widget/FrameLayout;
.source "QSContainer.java"


# instance fields
.field private mHeightOverride:I

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 35
    return-void
.end method

.method private updateBottom()V
    .locals 3

    .prologue
    .line 74
    iget v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 75
    .local v0, "height":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/QSContainer;->setBottom(I)V

    .line 76
    return-void

    .line 74
    .end local v0    # "height":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public getDesiredHeight()I
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 40
    const v0, 0x7f0e01ba

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSPanel;

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    .line 41
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 45
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 47
    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0
    .param p1, "heightOverride"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    .line 57
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    .line 58
    return-void
.end method
