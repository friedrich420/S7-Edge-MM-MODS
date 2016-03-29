.class Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$3;
.super Ljava/lang/Object;
.source "DirectAccessEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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
    .line 114
    iput-object p1, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$3;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v2, 0x0

    .line 118
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$3;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->access$100(Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 119
    iget-object v0, p0, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler$3;->this$0:Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;

    # getter for: Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;->access$200(Lcom/android/settings/accessibility/directaccess/DirectAccessEnabler;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 120
    return-void
.end method
