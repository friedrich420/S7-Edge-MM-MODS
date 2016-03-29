.class Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;
.super Ljava/lang/Object;
.source "AccessibilityDialogPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->access$200(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference$3;->this$0:Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;

    # getter for: Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;->access$200(Lcom/android/settings/accessibility/sharedaccessibility/AccessibilityDialogPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 130
    const/4 v0, 0x1

    return v0
.end method
