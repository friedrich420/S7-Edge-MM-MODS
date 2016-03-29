.class Lcom/android/settings/DisplaySettings$1;
.super Landroid/database/ContentObserver;
.source "DisplaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DisplaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DisplaySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 239
    iget-object v3, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v3}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_outdoor_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    .line 240
    .local v0, "mIsOutdoorValue":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    # getter for: Lcom/android/settings/DisplaySettings;->mOutdoorMode:Landroid/preference/SwitchPreference;
    invoke-static {v3}, Lcom/android/settings/DisplaySettings;->access$000(Lcom/android/settings/DisplaySettings;)Landroid/preference/SwitchPreference;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 241
    if-eqz v0, :cond_1

    .line 242
    iget-object v1, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    # getter for: Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;
    invoke-static {v1}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessSeekBarPreference;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/settings/BrightnessSeekBarPreference;->setEnabled(Z)V

    .line 245
    :goto_1
    return-void

    .end local v0    # "mIsOutdoorValue":Z
    :cond_0
    move v0, v2

    .line 239
    goto :goto_0

    .line 244
    .restart local v0    # "mIsOutdoorValue":Z
    :cond_1
    iget-object v2, p0, Lcom/android/settings/DisplaySettings$1;->this$0:Lcom/android/settings/DisplaySettings;

    # getter for: Lcom/android/settings/DisplaySettings;->mSecBrightness:Lcom/android/settings/BrightnessSeekBarPreference;
    invoke-static {v2}, Lcom/android/settings/DisplaySettings;->access$100(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/BrightnessSeekBarPreference;->setEnabled(Z)V

    goto :goto_1
.end method
