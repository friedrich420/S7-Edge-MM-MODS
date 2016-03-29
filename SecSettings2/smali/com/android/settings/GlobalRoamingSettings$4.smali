.class Lcom/android/settings/GlobalRoamingSettings$4;
.super Landroid/database/ContentObserver;
.source "GlobalRoamingSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GlobalRoamingSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/GlobalRoamingSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/GlobalRoamingSettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonDataRoaming:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/GlobalRoamingSettings;->access$200(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z
    invoke-static {v1}, Lcom/android/settings/GlobalRoamingSettings;->access$000(Lcom/android/settings/GlobalRoamingSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # getter for: Lcom/android/settings/GlobalRoamingSettings;->mButtonBackgroundData:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/GlobalRoamingSettings;->access$300(Lcom/android/settings/GlobalRoamingSettings;)Landroid/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/GlobalRoamingSettings$4;->this$0:Lcom/android/settings/GlobalRoamingSettings;

    # invokes: Lcom/android/settings/GlobalRoamingSettings;->getDataRoamingState()Z
    invoke-static {v1}, Lcom/android/settings/GlobalRoamingSettings;->access$000(Lcom/android/settings/GlobalRoamingSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v0

    goto :goto_0
.end method
