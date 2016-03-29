.class public Lcom/android/settings/notification/VibrationIntensitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "VibrationIntensitySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final DEBUG:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mPowerManager:Landroid/os/PowerManager;


# instance fields
.field private callVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

.field private mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private notiVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

.field private systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

.field private vibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-string v0, "VibrationIntensity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/notification/VibrationIntensitySettings;->DEBUG:Z

    .line 230
    new-instance v0, Lcom/android/settings/notification/VibrationIntensitySettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/VibrationIntensitySettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/VibrationIntensitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 70
    new-instance v0, Lcom/android/settings/notification/VibrationIntensitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/VibrationIntensitySettings$1;-><init>(Lcom/android/settings/notification/VibrationIntensitySettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->mAoBleChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/VibrationIntensitySettings;)Lcom/android/settings/notification/VibrationSeekBarPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/VibrationIntensitySettings;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method private initVibrationPreference(Ljava/lang/String;I)Lcom/android/settings/notification/VibrationSeekBarPreference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 202
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VibrationIntensitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VibrationSeekBarPreference;

    iput-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    .line 203
    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0, p2}, Lcom/android/settings/notification/VibrationSeekBarPreference;->setType(I)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->vibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    return-object v0
.end method

.method private stopAllVibration()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    invoke-virtual {v0}, Lcom/android/settings/notification/VibrationSeekBarPreference;->stopVibration()V

    .line 226
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 120
    const/16 v0, 0x47

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v5, 0x7f0800d1

    .line 125
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    sput-object v3, Lcom/android/settings/notification/VibrationIntensitySettings;->mPowerManager:Landroid/os/PowerManager;

    .line 129
    invoke-virtual {p0, v5}, Lcom/android/settings/notification/VibrationIntensitySettings;->addPreferencesFromResource(I)V

    .line 131
    const-string v3, "ring_vibration"

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->callVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    .line 132
    const-string v3, "notification_vibration"

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lcom/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->notiVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    .line 133
    const-string v3, "system_vibration"

    const/4 v4, 0x2

    invoke-direct {p0, v3, v4}, Lcom/android/settings/notification/VibrationIntensitySettings;->initVibrationPreference(Ljava/lang/String;I)Lcom/android/settings/notification/VibrationSeekBarPreference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->systemVibrationPref:Lcom/android/settings/notification/VibrationSeekBarPreference;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isEnabledUltraPowerSaving(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "UPSM"

    invoke-static {v3, v5, v4}, Lcom/android/settings/Utils;->getRemovePreferenceInOtherMode(Landroid/content/Context;ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 137
    .local v2, "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 138
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 139
    .local v1, "list":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    goto :goto_0

    .line 143
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "list":Ljava/lang/String;
    .end local v2    # "removelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, Lcom/android/settings/notification/VibrationIntensitySettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 144
    const-string v3, "ring_vibration"

    invoke-virtual {p0, v3}, Lcom/android/settings/notification/VibrationIntensitySettings;->removePreference(Ljava/lang/String;)V

    .line 146
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 209
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 210
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 220
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 216
    :pswitch_0
    const-string v0, "VibrationIntensity"

    const-string v1, "onOptionsItemSelected : home"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-direct {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    .line 218
    const/4 v0, 0x1

    goto :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 182
    const-string v0, "VibrationIntensity"

    const-string v1, "onPause : "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->stopAllVibration()V

    .line 193
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 150
    const-string v0, "VibrationIntensity"

    const-string v1, "onResume : "

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/notification/VibrationIntensitySettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 178
    return-void
.end method
