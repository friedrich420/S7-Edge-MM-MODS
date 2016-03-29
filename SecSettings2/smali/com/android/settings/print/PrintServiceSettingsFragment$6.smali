.class Lcom/android/settings/print/PrintServiceSettingsFragment$6;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$6;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 498
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$6;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    # getter for: Lcom/android/settings/print/PrintServiceSettingsFragment;->mSearchItem:Landroid/view/MenuItem;
    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->access$1000(Lcom/android/settings/print/PrintServiceSettingsFragment;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 501
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
