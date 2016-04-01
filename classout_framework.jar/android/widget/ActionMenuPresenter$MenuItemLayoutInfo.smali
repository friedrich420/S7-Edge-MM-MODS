.class Landroid/widget/ActionMenuPresenter$MenuItemLayoutInfo;
.super Ljava/lang/Object;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MenuItemLayoutInfo"
.end annotation


# instance fields
.field left:I

.field top:I

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;
    .param p2, "preLayout"    # Z

    .prologue
    .line 1442
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1443
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, left:I

    .line 1444
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, top:I

    .line 1445
    if-eqz p2, :cond_27

    .line 1448
    iget v0, p0, left:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, left:I

    .line 1449
    iget v0, p0, top:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, top:I

    .line 1451
    :cond_27
    iput-object p1, p0, view:Landroid/view/View;

    .line 1452
    return-void
.end method
