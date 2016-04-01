.class final Lcom/android/internal/view/FloatingActionMode$FloatingToolbarVisibilityHelper;
.super Ljava/lang/Object;
.source "FloatingActionMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/FloatingActionMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FloatingToolbarVisibilityHelper"
.end annotation


# instance fields
.field private mActive:Z

.field private mHideRequested:Z

.field private mMoving:Z

.field private mOutOfBounds:Z

.field private final mToolbar:Lcom/android/internal/widget/FloatingToolbar;

.field private mWindowFocused:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/FloatingToolbar;)V
    .registers 3
    .param p1, "toolbar"    # Lcom/android/internal/widget/FloatingToolbar;

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, mWindowFocused:Z

    .line 370
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/FloatingToolbar;

    iput-object v0, p0, mToolbar:Lcom/android/internal/widget/FloatingToolbar;

    .line 371
    return-void
.end method


# virtual methods
.method public activate()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 374
    iput-boolean v0, p0, mHideRequested:Z

    .line 375
    iput-boolean v0, p0, mMoving:Z

    .line 376
    iput-boolean v0, p0, mOutOfBounds:Z

    .line 377
    iput-boolean v1, p0, mWindowFocused:Z

    .line 379
    iput-boolean v1, p0, mActive:Z

    .line 380
    return-void
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, mActive:Z

    .line 384
    iget-object v0, p0, mToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->dismiss()V

    .line 385
    return-void
.end method

.method public setHideRequested(Z)V
    .registers 2
    .param p1, "hide"    # Z

    .prologue
    .line 388
    iput-boolean p1, p0, mHideRequested:Z

    .line 389
    return-void
.end method

.method public setMoving(Z)V
    .registers 2
    .param p1, "moving"    # Z

    .prologue
    .line 392
    iput-boolean p1, p0, mMoving:Z

    .line 393
    return-void
.end method

.method public setOutOfBounds(Z)V
    .registers 2
    .param p1, "outOfBounds"    # Z

    .prologue
    .line 396
    iput-boolean p1, p0, mOutOfBounds:Z

    .line 397
    return-void
.end method

.method public setWindowFocused(Z)V
    .registers 2
    .param p1, "windowFocused"    # Z

    .prologue
    .line 400
    iput-boolean p1, p0, mWindowFocused:Z

    .line 401
    return-void
.end method

.method public updateToolbarVisibility()V
    .registers 2

    .prologue
    .line 404
    iget-boolean v0, p0, mActive:Z

    if-nez v0, :cond_5

    .line 413
    :goto_4
    return-void

    .line 408
    :cond_5
    iget-boolean v0, p0, mHideRequested:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, mMoving:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, mOutOfBounds:Z

    if-nez v0, :cond_15

    iget-boolean v0, p0, mWindowFocused:Z

    if-nez v0, :cond_1b

    .line 409
    :cond_15
    iget-object v0, p0, mToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->hide()V

    goto :goto_4

    .line 411
    :cond_1b
    iget-object v0, p0, mToolbar:Lcom/android/internal/widget/FloatingToolbar;

    invoke-virtual {v0}, Lcom/android/internal/widget/FloatingToolbar;->show()Lcom/android/internal/widget/FloatingToolbar;

    goto :goto_4
.end method
