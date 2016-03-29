.class Lcom/android/settings/spen/PenAirViewSettingsMenu$5;
.super Ljava/lang/Object;
.source "PenAirViewSettingsMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/spen/PenAirViewSettingsMenu;->showTalkBackDisableDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;)V
    .locals 0

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$5;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 292
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$5;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    # invokes: Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->access$300(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 294
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$5;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    # invokes: Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->access$400(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    # getter for: Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->access$000()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 297
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$5;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    # invokes: Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->access$500(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 300
    iget-object v0, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$5;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    # invokes: Lcom/android/settings/spen/PenAirViewSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->access$600(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "finger_magnifier"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 302
    return-void
.end method
