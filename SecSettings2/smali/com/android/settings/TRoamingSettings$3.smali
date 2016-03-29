.class Lcom/android/settings/TRoamingSettings$3;
.super Landroid/database/ContentObserver;
.source "TRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TRoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TRoamingSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/TRoamingSettings$3;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$3;->this$0:Lcom/android/settings/TRoamingSettings;

    invoke-virtual {v0}, Lcom/android/settings/TRoamingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isAirplaneModeEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$3;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$700(Lcom/android/settings/TRoamingSettings;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$3;->this$0:Lcom/android/settings/TRoamingSettings;

    # invokes: Lcom/android/settings/TRoamingSettings;->updateCurrentRoaming()V
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$800(Lcom/android/settings/TRoamingSettings;)V

    .line 186
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TRoamingSettings$3;->this$0:Lcom/android/settings/TRoamingSettings;

    # getter for: Lcom/android/settings/TRoamingSettings;->mSelection:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/settings/TRoamingSettings;->access$700(Lcom/android/settings/TRoamingSettings;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method
