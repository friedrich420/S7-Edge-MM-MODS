.class Lcom/android/settings/fmm/FindMyMobileSettings$4;
.super Ljava/lang/Object;
.source "FindMyMobileSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/FindMyMobileSettings;->showReactivationLockDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/FindMyMobileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/FindMyMobileSettings;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$4;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "ret":Z
    const/4 v1, 0x4

    if-ne p2, v1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 474
    iget-object v1, p0, Lcom/android/settings/fmm/FindMyMobileSettings$4;->this$0:Lcom/android/settings/fmm/FindMyMobileSettings;

    # invokes: Lcom/android/settings/fmm/FindMyMobileSettings;->onCancelPressed()V
    invoke-static {v1}, Lcom/android/settings/fmm/FindMyMobileSettings;->access$500(Lcom/android/settings/fmm/FindMyMobileSettings;)V

    .line 475
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 476
    const/4 v0, 0x1

    .line 478
    :cond_0
    return v0
.end method
