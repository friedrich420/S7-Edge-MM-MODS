.class Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;
.super Ljava/lang/Object;
.source "AccessibilitySettingsMobility.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->updateServicesPreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsMobility;)V
    .locals 0

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 436
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsMobility$6;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsMobility;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsMobility;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {p1}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 438
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
