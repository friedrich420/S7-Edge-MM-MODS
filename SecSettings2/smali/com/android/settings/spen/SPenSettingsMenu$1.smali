.class Lcom/android/settings/spen/SPenSettingsMenu$1;
.super Landroid/database/ContentObserver;
.source "SPenSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/spen/SPenSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/SPenSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/SPenSettingsMenu;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/settings/spen/SPenSettingsMenu$1;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu$1;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    # invokes: Lcom/android/settings/spen/SPenSettingsMenu;->updateEnableState()V
    invoke-static {v1}, Lcom/android/settings/spen/SPenSettingsMenu;->access$000(Lcom/android/settings/spen/SPenSettingsMenu;)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu$1;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    # invokes: Lcom/android/settings/spen/SPenSettingsMenu;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/spen/SPenSettingsMenu;->access$100(Lcom/android/settings/spen/SPenSettingsMenu;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_detachment_option"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 117
    .local v0, "penDetachIndex":I
    iget-object v1, p0, Lcom/android/settings/spen/SPenSettingsMenu$1;->this$0:Lcom/android/settings/spen/SPenSettingsMenu;

    # getter for: Lcom/android/settings/spen/SPenSettingsMenu;->mPenDetachOptionPref:Lcom/android/settings/DropDownPreference;
    invoke-static {v1}, Lcom/android/settings/spen/SPenSettingsMenu;->access$200(Lcom/android/settings/spen/SPenSettingsMenu;)Lcom/android/settings/DropDownPreference;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/DropDownPreference;->setSelectedValue(Ljava/lang/Object;)V

    .line 118
    return-void
.end method
