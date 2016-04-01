.class Landroid/widget/Toolbar$5;
.super Ljava/lang/Object;
.source "Toolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toolbar;->ensureCollapseButtonView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toolbar;


# direct methods
.method constructor <init>(Landroid/widget/Toolbar;)V
    .registers 2

    .prologue
    .line 1329
    iput-object p1, p0, this$0:Landroid/widget/Toolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1333
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mIsThemeDeviceDefaultFamily:Z
    invoke-static {v1}, Landroid/widget/Toolbar;->access$200(Landroid/widget/Toolbar;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1334
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1335
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_24

    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1336
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    iget-object v1, v1, Landroid/widget/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1338
    :cond_24
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mCollapseHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/widget/Toolbar;->access$400(Landroid/widget/Toolbar;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, this$0:Landroid/widget/Toolbar;

    # getter for: Landroid/widget/Toolbar;->mPerformToCollapse:Ljava/lang/Runnable;
    invoke-static {v2}, Landroid/widget/Toolbar;->access$300(Landroid/widget/Toolbar;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1343
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :goto_35
    return-void

    .line 1340
    :cond_36
    iget-object v1, p0, this$0:Landroid/widget/Toolbar;

    invoke-virtual {v1}, Landroid/widget/Toolbar;->collapseActionView()V

    goto :goto_35
.end method
