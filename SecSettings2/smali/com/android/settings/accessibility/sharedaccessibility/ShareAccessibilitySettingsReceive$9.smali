.class Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$9;
.super Ljava/lang/Object;
.source "ShareAccessibilitySettingsReceive.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$9;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    .line 275
    return-void
.end method
