.class Lcom/android/settings/spen/PenAirViewSettingsMenu$1;
.super Landroid/database/ContentObserver;
.source "PenAirViewSettingsMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/spen/PenAirViewSettingsMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/PenAirViewSettingsMenu;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$1;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 96
    # getter for: Lcom/android/settings/spen/PenAirViewSettingsMenu;->mActivity:Landroid/app/Activity;
    invoke-static {}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->access$000()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 98
    .local v0, "airViewState":Z
    :cond_0
    iget-object v1, p0, Lcom/android/settings/spen/PenAirViewSettingsMenu$1;->this$0:Lcom/android/settings/spen/PenAirViewSettingsMenu;

    # getter for: Lcom/android/settings/spen/PenAirViewSettingsMenu;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;
    invoke-static {v1}, Lcom/android/settings/spen/PenAirViewSettingsMenu;->access$100(Lcom/android/settings/spen/PenAirViewSettingsMenu;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 100
    return-void
.end method
