.class final Landroid/view/View$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalWindowAttachCount:I

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 22493
    iput-object p1, p0, this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/view/View;
    .param p2, "x1"    # Landroid/view/View$1;

    .prologue
    .line 22493
    invoke-direct {p0, p1}, <init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public rememberWindowAttachCount()V
    .registers 2

    .prologue
    .line 22507
    iget-object v0, p0, this$0:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mWindowAttachCount:I

    iput v0, p0, mOriginalWindowAttachCount:I

    .line 22508
    return-void
.end method

.method public run()V
    .registers 3

    .prologue
    .line 22498
    iget-object v0, p0, this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, this$0:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_24

    iget v0, p0, mOriginalWindowAttachCount:I

    iget-object v1, p0, this$0:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mWindowAttachCount:I

    if-ne v0, v1, :cond_24

    .line 22500
    iget-object v0, p0, this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 22501
    iget-object v0, p0, this$0:Landroid/view/View;

    const/4 v1, 0x1

    # setter for: Landroid/view/View;->mHasPerformedLongPress:Z
    invoke-static {v0, v1}, Landroid/view/View;->access$2902(Landroid/view/View;Z)Z

    .line 22504
    :cond_24
    return-void
.end method
