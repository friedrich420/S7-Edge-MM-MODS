.class Landroid/widget/Editor$InsertionPointCursorController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$CursorController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertionPointCursorController"
.end annotation


# instance fields
.field private mHandle:Landroid/widget/Editor$InsertionHandleView;

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .registers 2

    .prologue
    .line 5249
    iput-object p1, p0, this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 5249
    invoke-direct {p0, p1}, <init>(Landroid/widget/Editor;)V

    return-void
.end method

.method static synthetic access$3400(Landroid/widget/Editor$InsertionPointCursorController;)Landroid/widget/Editor$InsertionHandleView;
    .registers 2
    .param p0, "x0"    # Landroid/widget/Editor$InsertionPointCursorController;

    .prologue
    .line 5249
    invoke-direct {p0}, getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    return-object v0
.end method

.method private getHandle()Landroid/widget/Editor$InsertionHandleView;
    .registers 4

    .prologue
    .line 5277
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_23

    .line 5278
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    iget v2, v2, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$3502(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 5281
    :cond_23
    iget-object v0, p0, mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-nez v0, :cond_36

    .line 5282
    new-instance v0, Landroid/widget/Editor$InsertionHandleView;

    iget-object v1, p0, this$0:Landroid/widget/Editor;

    iget-object v2, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v2}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$InsertionHandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, mHandle:Landroid/widget/Editor$InsertionHandleView;

    .line 5284
    :cond_36
    iget-object v0, p0, mHandle:Landroid/widget/Editor$InsertionHandleView;

    return-object v0
.end method


# virtual methods
.method public hide()V
    .registers 2

    .prologue
    .line 5265
    iget-object v0, p0, mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v0, :cond_9

    .line 5266
    iget-object v0, p0, mHandle:Landroid/widget/Editor$InsertionHandleView;

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->hide()V

    .line 5268
    :cond_9
    return-void
.end method

.method public onDetached()V
    .registers 3

    .prologue
    .line 5289
    iget-object v1, p0, this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 5290
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 5292
    iget-object v1, p0, mHandle:Landroid/widget/Editor$InsertionHandleView;

    if-eqz v1, :cond_16

    iget-object v1, p0, mHandle:Landroid/widget/Editor$InsertionHandleView;

    invoke-virtual {v1}, Landroid/widget/Editor$InsertionHandleView;->onDetached()V

    .line 5293
    :cond_16
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .registers 2
    .param p1, "isInTouchMode"    # Z

    .prologue
    .line 5271
    if-nez p1, :cond_5

    .line 5272
    invoke-virtual {p0}, hide()V

    .line 5274
    :cond_5
    return-void
.end method

.method public show()V
    .registers 2

    .prologue
    .line 5254
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isUniversalSwitchEnabled()Z
    invoke-static {v0}, Landroid/widget/Editor;->access$5100(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5262
    :cond_8
    :goto_8
    return-void

    .line 5257
    :cond_9
    invoke-direct {p0}, getHandle()Landroid/widget/Editor$InsertionHandleView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Editor$InsertionHandleView;->show()V

    .line 5259
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_8

    .line 5260
    iget-object v0, p0, this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    goto :goto_8
.end method
