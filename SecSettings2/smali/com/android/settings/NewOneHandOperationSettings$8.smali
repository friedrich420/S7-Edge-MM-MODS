.class Lcom/android/settings/NewOneHandOperationSettings$8;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewOneHandOperationSettings;->oneHandedInputDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NewOneHandOperationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/NewOneHandOperationSettings;)V
    .locals 0

    .prologue
    .line 384
    iput-object p1, p0, Lcom/android/settings/NewOneHandOperationSettings$8;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x1

    .line 386
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$8;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 387
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$8;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "interactionarea_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$8;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    # invokes: Lcom/android/settings/NewOneHandOperationSettings;->oneHandedInputBroadcast(I)V
    invoke-static {v0, v3}, Lcom/android/settings/NewOneHandOperationSettings;->access$400(Lcom/android/settings/NewOneHandOperationSettings;I)V

    .line 389
    return-void
.end method
