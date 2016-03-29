.class Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;
.super Ljava/lang/Object;
.source "ShareAccessibilityExportImport.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;)V
    .locals 0

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 173
    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z
    invoke-static {}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z
    invoke-static {}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$100()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-string v0, "ShareAccessibilityExportImport"

    const-string v1, "Dialog Dismiss "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport$1;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->finish()V

    .line 179
    :cond_0
    # setter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isSecondDialogShown:Z
    invoke-static {v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$102(Z)Z

    .line 181
    :cond_1
    # setter for: Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->isDialogShown:Z
    invoke-static {v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilityExportImport;->access$002(Z)Z

    .line 182
    return-void
.end method
