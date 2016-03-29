.class Lcom/android/settings/AssistantMenuPreferenceFragment$8;
.super Ljava/lang/Object;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AssistantMenuPreferenceFragment;->onInstallSwitchBarToggleSwitch()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    .prologue
    .line 489
    iput-object p1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$8;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Lcom/android/settings/widget/ToggleSwitch;Z)Z
    .locals 4
    .param p1, "toggleSwitch"    # Lcom/android/settings/widget/ToggleSwitch;
    .param p2, "checked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 492
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$8;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    iget-object v0, v0, Lcom/android/settings/AssistantMenuPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 494
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$8;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 496
    iget-object v0, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$8;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 502
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 494
    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    goto :goto_1

    .line 497
    :catch_1
    move-exception v0

    goto :goto_1
.end method
