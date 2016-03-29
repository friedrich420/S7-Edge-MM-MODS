.class Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$1;
.super Ljava/lang/Object;
.source "DirectAccessEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->showExclusiveDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$1;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$1;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->access$000(Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 108
    return-void
.end method
