.class Lcom/android/settings/NewOneHandOperationSettings$5;
.super Ljava/lang/Object;
.source "NewOneHandOperationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeDisablePopup()V
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
    .line 343
    iput-object p1, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

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

    const/4 v2, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 346
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 347
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 348
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_magnifier"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 349
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffUniversalSwitch(Landroid/content/Context;)Z

    .line 350
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_use"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "access_control_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 352
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 353
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "direct_access"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    invoke-virtual {v0}, Lcom/android/settings/NewOneHandOperationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "any_screen_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    iget-object v0, p0, Lcom/android/settings/NewOneHandOperationSettings$5;->this$0:Lcom/android/settings/NewOneHandOperationSettings;

    # invokes: Lcom/android/settings/NewOneHandOperationSettings;->reduceSizeBroadcast(I)V
    invoke-static {v0, v3}, Lcom/android/settings/NewOneHandOperationSettings;->access$200(Lcom/android/settings/NewOneHandOperationSettings;I)V

    .line 356
    return-void
.end method
