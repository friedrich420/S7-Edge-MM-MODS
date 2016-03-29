.class Lcom/android/settings/SmartStaySettings$4;
.super Ljava/lang/Object;
.source "SmartStaySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartStaySettings;->makeTalkBackDisablePopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartStaySettings;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/settings/SmartStaySettings$4;->this$0:Lcom/android/settings/SmartStaySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings$4;->this$0:Lcom/android/settings/SmartStaySettings;

    invoke-virtual {v0}, Lcom/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffTalkBack(Landroid/content/Context;)Z

    .line 219
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings$4;->this$0:Lcom/android/settings/SmartStaySettings;

    invoke-virtual {v0}, Lcom/android/settings/SmartStaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->turnOffUniversalSwitch(Landroid/content/Context;)Z

    .line 220
    iget-object v0, p0, Lcom/android/settings/SmartStaySettings$4;->this$0:Lcom/android/settings/SmartStaySettings;

    invoke-virtual {v0}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "intelligent_sleep_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    return-void
.end method
