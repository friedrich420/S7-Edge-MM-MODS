.class Lcom/android/settings/ApplicationsSettings$AppSettingsPreference$1;
.super Ljava/lang/Object;
.source "ApplicationsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;)V
    .locals 0

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference$1;->this$1:Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 343
    # getter for: Lcom/android/settings/ApplicationsSettings;->mIsLoggingEnabled:Z
    invoke-static {}, Lcom/android/settings/ApplicationsSettings;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference$1;->this$1:Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    iget-object v3, v3, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->this$0:Lcom/android/settings/ApplicationsSettings;

    invoke-virtual {v3}, Lcom/android/settings/ApplicationsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v5, "com.android.settings"

    invoke-static {v3, v5, v2}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    instance-of v3, p1, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    if-eqz v3, :cond_1

    move-object v0, p1

    .line 348
    check-cast v0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    .line 349
    .local v0, "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    iget-object v3, v0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 350
    .local v1, "numUserHandles":I
    if-le v1, v4, :cond_2

    .line 351
    iget-object v3, p0, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference$1;->this$1:Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;

    invoke-virtual {v3}, Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/settings/ProfileSelectDialog;->show(Landroid/app/FragmentManager;Ljava/lang/Object;)V

    move v3, v4

    .line 358
    .end local v0    # "appPref":Lcom/android/settings/ApplicationsSettings$AppSettingsPreference;
    .end local v1    # "numUserHandles":I
    :goto_0
    return v3

    .line 355
    :cond_1
    const-string v3, "ApplicationsSettings"

    const-string v4, "no app pref"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method
