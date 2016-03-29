.class Lcom/android/settings/SmartStaySettings$1;
.super Landroid/database/ContentObserver;
.source "SmartStaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmartStaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartStaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SmartStaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/settings/SmartStaySettings$1;->this$0:Lcom/android/settings/SmartStaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 56
    iget-object v1, p0, Lcom/android/settings/SmartStaySettings$1;->this$0:Lcom/android/settings/SmartStaySettings;

    # getter for: Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/SmartStaySettings;->access$000(Lcom/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/android/settings/SmartStaySettings$1;->this$0:Lcom/android/settings/SmartStaySettings;

    # getter for: Lcom/android/settings/SmartStaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/SmartStaySettings;->access$000(Lcom/android/settings/SmartStaySettings;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SmartStaySettings$1;->this$0:Lcom/android/settings/SmartStaySettings;

    invoke-virtual {v2}, Lcom/android/settings/SmartStaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 59
    :cond_1
    return-void
.end method
