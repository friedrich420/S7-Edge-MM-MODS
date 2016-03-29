.class Lcom/android/settings/DropDownPreference$2;
.super Ljava/lang/Object;
.source "DropDownPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DropDownPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/DropDownPreference;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/settings/DropDownPreference$2;->this$0:Lcom/android/settings/DropDownPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/settings/DropDownPreference$2;->this$0:Lcom/android/settings/DropDownPreference;

    # getter for: Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/settings/DropDownPreference;->access$000(Lcom/android/settings/DropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSoundEffectsEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/DropDownPreference$2;->this$0:Lcom/android/settings/DropDownPreference;

    # getter for: Lcom/android/settings/DropDownPreference;->mSpinner:Landroid/widget/Spinner;
    invoke-static {v0}, Lcom/android/settings/DropDownPreference;->access$000(Lcom/android/settings/DropDownPreference;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 72
    const/4 v0, 0x1

    return v0
.end method
