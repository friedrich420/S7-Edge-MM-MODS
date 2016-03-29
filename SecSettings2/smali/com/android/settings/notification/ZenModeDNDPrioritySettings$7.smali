.class Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;
.super Ljava/lang/Object;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "pos"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v7, -0x1

    const/4 v4, 0x1

    .line 253
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z
    invoke-static {v5}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->access$000(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 268
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 254
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 255
    .local v3, "val":I
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v5, v5, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mContext:Landroid/content/Context;

    const/16 v6, 0xaa

    invoke-static {v5, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 256
    if-eq v3, v7, :cond_4

    move v0, v4

    .line 257
    .local v0, "allowCalls":Z
    :goto_1
    if-ne v3, v7, :cond_5

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v5, v5, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 258
    .local v1, "allowCallsFrom":I
    :goto_2
    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v5, v5, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v5, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v5, v5, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eq v1, v5, :cond_0

    .line 262
    :cond_2
    sget-boolean v4, Lcom/android/settings/notification/ZenModeSettingsBase;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "ZenModeSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrefChange allowCalls="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " allowCallsFrom="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v4, v4, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 265
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v0, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 266
    iput v1, v2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 267
    const/4 v4, 0x7

    iput v4, v2, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    .line 268
    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$7;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-virtual {v4, v2}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v4

    goto :goto_0

    .line 256
    .end local v0    # "allowCalls":Z
    .end local v1    # "allowCallsFrom":I
    .end local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "allowCalls":Z
    :cond_5
    move v1, v3

    .line 257
    goto :goto_2
.end method
