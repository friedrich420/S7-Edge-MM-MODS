.class Landroid/widget/MediaController$2;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 206
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_13

    .line 207
    iget-object v0, p0, this$0:Landroid/widget/MediaController;

    # getter for: Landroid/widget/MediaController;->mShowing:Z
    invoke-static {v0}, Landroid/widget/MediaController;->access$100(Landroid/widget/MediaController;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 208
    iget-object v0, p0, this$0:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 211
    :cond_13
    const/4 v0, 0x0

    return v0
.end method
