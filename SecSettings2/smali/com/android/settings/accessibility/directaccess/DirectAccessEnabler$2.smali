.class Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$2;
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
    .line 97
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$2;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 99
    const-string v0, "DirectAccessEnabler"

    const-string v1, "switch is on"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$2;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->access$100(Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 101
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$2;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->access$100(Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 102
    return-void
.end method
