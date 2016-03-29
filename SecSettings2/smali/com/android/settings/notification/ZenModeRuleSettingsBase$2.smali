.class Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenModeRuleSettingsBase;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "pos"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 116
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-boolean v1, v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mDisableListeners:Z

    if-eqz v1, :cond_1

    .line 122
    .end local p2    # "value":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v4

    .line 117
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 118
    .local v0, "zenMode":I
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-eq v0, v1, :cond_0

    .line 119
    sget-boolean v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "ZenModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPrefChange zenMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v1, v1, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iput v0, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 121
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v2, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$2;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    iget-object v2, v2, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    goto :goto_0
.end method
