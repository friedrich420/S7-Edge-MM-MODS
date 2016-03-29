.class Lcom/android/settings/accounts/AccountPreferenceBase$2;
.super Ljava/lang/Object;
.source "AccountPreferenceBase.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/AccountPreferenceBase;->addAlibabaAccountPreference(Landroid/preference/PreferenceScreen;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/AccountPreferenceBase;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/AccountPreferenceBase;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceBase$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 339
    const-string v2, "AccountSettings"

    const-string v3, "clicked alibaba preference::starting CloudSettingsActivity!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isFirstStartWifiForSamsungCloud:Z

    .line 341
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.CLOUD_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v1, "intent":Landroid/content/Intent;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceBase$2;->this$0:Lcom/android/settings/accounts/AccountPreferenceBase;

    invoke-virtual {v2, v1}, Lcom/android/settings/accounts/AccountPreferenceBase;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 347
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
