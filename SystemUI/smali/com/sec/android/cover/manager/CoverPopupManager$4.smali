.class Lcom/sec/android/cover/manager/CoverPopupManager$4;
.super Ljava/lang/Object;
.source "CoverPopupManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/manager/CoverPopupManager;->showPopupDialog(Landroid/view/View;Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

.field final synthetic val$callback:Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/manager/CoverPopupManager;Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    iput-object p2, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->val$callback:Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 187
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->val$callback:Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->val$callback:Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;

    invoke-interface {v0}, Lcom/sec/android/cover/manager/CoverPopupManager$PopupDismissCallback;->onDismiss()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/manager/CoverPopupManager;->mPopupDialog:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->access$002(Lcom/sec/android/cover/manager/CoverPopupManager;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 192
    iget-object v0, p0, Lcom/sec/android/cover/manager/CoverPopupManager$4;->this$0:Lcom/sec/android/cover/manager/CoverPopupManager;

    const/4 v1, -0x1

    # setter for: Lcom/sec/android/cover/manager/CoverPopupManager;->mDialogType:I
    invoke-static {v0, v1}, Lcom/sec/android/cover/manager/CoverPopupManager;->access$102(Lcom/sec/android/cover/manager/CoverPopupManager;I)I

    .line 194
    const-string v0, "CoverPopupManager"

    const-string v1, "popup dialog set to null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    return-void
.end method
