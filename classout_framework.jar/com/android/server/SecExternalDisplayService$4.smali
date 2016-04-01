.class Lcom/android/server/SecExternalDisplayService$4;
.super Ljava/lang/Object;
.source "SecExternalDisplayService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SecExternalDisplayService;->SecExternalDisplayAlertMsg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayService;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .registers 2

    .prologue
    .line 954
    iput-object p1, p0, this$0:Lcom/android/server/SecExternalDisplayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 957
    iget-object v0, p0, this$0:Lcom/android/server/SecExternalDisplayService;

    # getter for: Lcom/android/server/SecExternalDisplayService;->mDialogCheckBox:Landroid/widget/CheckBox;
    invoke-static {v0}, Lcom/android/server/SecExternalDisplayService;->access$400(Lcom/android/server/SecExternalDisplayService;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 958
    const-string/jumbo v0, "persist.sys.SecEDS.Dialog"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    :goto_15
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 962
    return-void

    .line 960
    :cond_19
    const-string/jumbo v0, "persist.sys.SecEDS.Dialog"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method
