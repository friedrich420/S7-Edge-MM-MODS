.class Lcom/android/settings/spen/DirectPenInputSettings$2;
.super Ljava/lang/Object;
.source "DirectPenInputSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/spen/DirectPenInputSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/spen/DirectPenInputSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/spen/DirectPenInputSettings;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 150
    instance-of v5, p2, Ljava/lang/Boolean;

    if-eqz v5, :cond_4

    instance-of v5, p1, Landroid/preference/SwitchPreference;

    if-eqz v5, :cond_4

    move-object v0, p1

    .line 151
    check-cast v0, Landroid/preference/SwitchPreference;

    .line 152
    .local v0, "checkPref":Landroid/preference/SwitchPreference;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 153
    .local v1, "isChecked":Z
    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->URI_PEN_WRITING_BUDDY:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/spen/DirectPenInputSettings;->access$100(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v4

    .line 154
    .local v2, "writingBuddyOn":Z
    :goto_0
    if-nez v2, :cond_2

    .line 155
    if-nez v1, :cond_0

    move v3, v4

    :cond_0
    invoke-virtual {v0, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 162
    .end local v0    # "checkPref":Landroid/preference/SwitchPreference;
    .end local v1    # "isChecked":Z
    .end local v2    # "writingBuddyOn":Z
    :goto_1
    return v4

    .restart local v0    # "checkPref":Landroid/preference/SwitchPreference;
    .restart local v1    # "isChecked":Z
    :cond_1
    move v2, v3

    .line 153
    goto :goto_0

    .line 157
    .restart local v2    # "writingBuddyOn":Z
    :cond_2
    iget-object v5, p0, Lcom/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->mActivity:Landroid/app/Activity;
    invoke-static {v5}, Lcom/android/settings/spen/DirectPenInputSettings;->access$000(Lcom/android/settings/spen/DirectPenInputSettings;)Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/spen/DirectPenInputSettings$2;->this$0:Lcom/android/settings/spen/DirectPenInputSettings;

    # getter for: Lcom/android/settings/spen/DirectPenInputSettings;->URI_TEXT_SUGGESTION:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/settings/spen/DirectPenInputSettings;->access$400(Lcom/android/settings/spen/DirectPenInputSettings;)Ljava/lang/String;

    move-result-object v6

    if-ne v1, v4, :cond_3

    move v3, v4

    :cond_3
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .end local v0    # "checkPref":Landroid/preference/SwitchPreference;
    .end local v1    # "isChecked":Z
    .end local v2    # "writingBuddyOn":Z
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_4
    move v4, v3

    .line 162
    goto :goto_1
.end method
