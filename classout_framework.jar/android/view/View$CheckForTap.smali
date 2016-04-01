.class final Landroid/view/View$CheckForTap;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckForTap"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;

.field public x:F

.field public y:F


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 22511
    iput-object p1, p0, this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View$1;

    .prologue
    .line 22511
    invoke-direct {p0, p1}, <init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 22517
    iget-object v0, p0, this$0:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x2000001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 22518
    iget-object v0, p0, this$0:Landroid/view/View;

    const/4 v1, 0x1

    iget v2, p0, x:F

    iget v3, p0, y:F

    # invokes: Landroid/view/View;->setPressed(ZFF)V
    invoke-static {v0, v1, v2, v3}, Landroid/view/View;->access$3000(Landroid/view/View;ZFF)V

    .line 22519
    iget-object v0, p0, this$0:Landroid/view/View;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    # invokes: Landroid/view/View;->checkForLongClick(I)V
    invoke-static {v0, v1}, Landroid/view/View;->access$3100(Landroid/view/View;I)V

    .line 22520
    return-void
.end method
