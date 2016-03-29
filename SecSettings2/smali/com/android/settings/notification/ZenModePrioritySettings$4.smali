.class Lcom/android/settings/notification/ZenModePrioritySettings$4;
.super Ljava/lang/Object;
.source "ZenModePrioritySettings.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModePrioritySettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModePrioritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModePrioritySettings;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

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

    .line 112
    iget-object v5, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    # getter for: Lcom/android/settings/notification/ZenModePrioritySettings;->mDisableListeners:Z
    invoke-static {v5}, Lcom/android/settings/notification/ZenModePrioritySettings;->access$000(Lcom/android/settings/notification/ZenModePrioritySettings;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 126
    .end local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 113
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 114
    .local v3, "val":I
    iget-object v5, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v5, v5, Lcom/android/settings/notification/ZenModePrioritySettings;->mContext:Landroid/content/Context;

    const/16 v6, 0xaa

    invoke-static {v5, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 115
    if-eq v3, v7, :cond_4

    move v0, v4

    .line 116
    .local v0, "allowCalls":Z
    :goto_1
    if-ne v3, v7, :cond_5

    iget-object v5, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v5, v5, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v1, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 117
    .local v1, "allowCallsFrom":I
    :goto_2
    iget-object v5, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v5, v5, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v5, v5, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-ne v0, v5, :cond_2

    iget-object v5, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v5, v5, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget v5, v5, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    if-eq v1, v5, :cond_0

    .line 121
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

    .line 123
    :cond_3
    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    iget-object v4, v4, Lcom/android/settings/notification/ZenModePrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v4}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v2

    .line 124
    .local v2, "newConfig":Landroid/service/notification/ZenModeConfig;
    iput-boolean v0, v2, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 125
    iput v1, v2, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 126
    iget-object v4, p0, Lcom/android/settings/notification/ZenModePrioritySettings$4;->this$0:Lcom/android/settings/notification/ZenModePrioritySettings;

    invoke-virtual {v4, v2}, Lcom/android/settings/notification/ZenModePrioritySettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    move-result v4

    goto :goto_0

    .line 115
    .end local v0    # "allowCalls":Z
    .end local v1    # "allowCallsFrom":I
    .end local v2    # "newConfig":Landroid/service/notification/ZenModeConfig;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .restart local v0    # "allowCalls":Z
    :cond_5
    move v1, v3

    .line 116
    goto :goto_2
.end method
