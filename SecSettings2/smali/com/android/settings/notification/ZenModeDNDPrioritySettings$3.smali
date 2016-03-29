.class Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;
.super Ljava/lang/Object;
.source "ZenModeDNDPrioritySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


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
    .line 167
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 170
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mDisableListeners:Z
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->access$000(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 187
    .end local p2    # "newValue":Ljava/lang/Object;
    :goto_0
    return v1

    .line 171
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 172
    .local v0, "val":Z
    if-nez v0, :cond_1

    .line 173
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->updateControls()V
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->access$100(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)V

    move v1, v2

    .line 174
    goto :goto_0

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    # getter for: Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mRule:Landroid/service/notification/ZenModeConfig$ZenRule;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->access$200(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/service/notification/ZenModeConfig$ZenRule;

    move-result-object v3

    iput v1, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 177
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v3, v3, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 v4, 0x7

    iput v4, v3, Landroid/service/notification/ZenModeConfig;->mChangeReason:I

    .line 178
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v4, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    iget-object v4, v4, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v3, v4}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->setZenModeConfig(Landroid/service/notification/ZenModeConfig;)Z

    .line 180
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->access$600(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "zen_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->setZenMode(ILandroid/net/Uri;)V

    .line 184
    :cond_2
    iget-object v2, p0, Lcom/android/settings/notification/ZenModeDNDPrioritySettings$3;->this$0:Lcom/android/settings/notification/ZenModeDNDPrioritySettings;

    # invokes: Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    invoke-static {v2}, Lcom/android/settings/notification/ZenModeDNDPrioritySettings;->access$400(Lcom/android/settings/notification/ZenModeDNDPrioritySettings;)Landroid/preference/PreferenceScreen;

    goto :goto_0
.end method
