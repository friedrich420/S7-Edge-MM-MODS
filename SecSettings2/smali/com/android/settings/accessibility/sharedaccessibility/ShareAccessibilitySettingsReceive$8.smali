.class Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$8;
.super Ljava/lang/Object;
.source "ShareAccessibilitySettingsReceive.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "arg0"    # Landroid/content/DialogInterface;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive$8;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsReceive;->finish()V

    .line 280
    return-void
.end method
