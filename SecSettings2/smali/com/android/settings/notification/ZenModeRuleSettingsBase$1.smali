.class Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;
.super Ljava/lang/Object;
.source "ZenModeRuleSettingsBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


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
    .line 99
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeRuleSettingsBase$1;->this$0:Lcom/android/settings/notification/ZenModeRuleSettingsBase;

    # invokes: Lcom/android/settings/notification/ZenModeRuleSettingsBase;->showRuleNameDialog()V
    invoke-static {v0}, Lcom/android/settings/notification/ZenModeRuleSettingsBase;->access$000(Lcom/android/settings/notification/ZenModeRuleSettingsBase;)V

    .line 103
    const/4 v0, 0x1

    return v0
.end method
