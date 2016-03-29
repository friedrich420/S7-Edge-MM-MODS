.class public Lcom/android/settings/nfc/OtherSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OtherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;,
        Lcom/android/settings/nfc/OtherSettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final CSC_SALES_CODE:Ljava/lang/String;

.field static final DBG:Z

.field private static final OMC_SALES_CODE:Ljava/lang/String;

.field public static OtherAppInfo_backup:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

.field private static final SALES_CODE:Ljava/lang/String;


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOtherBackend:Lcom/android/settings/nfc/OtherBackend;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-boolean v0, Lcom/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/android/settings/nfc/OtherSettings;->DBG:Z

    .line 65
    const-string v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    .line 66
    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/nfc/OtherSettings;->CSC_SALES_CODE:Ljava/lang/String;

    .line 67
    sget-object v0, Lcom/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/settings/nfc/OtherSettings;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/android/settings/nfc/OtherSettings;->SALES_CODE:Ljava/lang/String;

    return-void

    :cond_1
    sget-object v0, Lcom/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/nfc/OtherSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/nfc/OtherSettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/OtherSettings;Lcom/android/settings/nfc/OtherSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 81
    new-instance v0, Lcom/android/settings/nfc/OtherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/OtherSettings$1;-><init>(Lcom/android/settings/nfc/OtherSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 251
    new-instance v0, Lcom/android/settings/nfc/OtherSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/nfc/OtherSettings$2;-><init>(Lcom/android/settings/nfc/OtherSettings;)V

    iput-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;

    .line 280
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/OtherSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/nfc/OtherSettings;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x46

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    if-eqz v1, :cond_1

    .line 191
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 192
    .local v0, "appInfo":Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;
    iget-object v1, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 193
    sput-object v0, Lcom/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 196
    iget-boolean v1, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    .line 209
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->refresh()V

    .line 211
    .end local v0    # "appInfo":Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;
    :cond_1
    return-void

    .line 199
    .restart local v0    # "appInfo":Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->refresh()V

    .line 186
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    sget-boolean v0, Lcom/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OtherPaymentSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    new-instance v0, Lcom/android/settings/nfc/OtherBackend;

    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/nfc/OtherBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/android/settings/nfc/OtherBackend;

    .line 103
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/OtherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    .line 110
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 244
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 246
    const/4 v0, 0x1

    const v1, 0x7f0e1739

    invoke-interface {p1, v2, v2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 249
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 177
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 178
    iget-object v1, p0, Lcom/android/settings/nfc/OtherSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04014a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 179
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 341
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 342
    .local v6, "menuId":I
    if-nez v6, :cond_0

    .line 343
    const-class v0, Lcom/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e0325

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/nfc/OtherSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->finishFragment()V

    .line 346
    const/4 v4, 0x1

    .line 348
    :cond_0
    return v4
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 230
    sget-boolean v0, Lcom/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OtherPaymentSettings"

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 239
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 240
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->refresh()V

    .line 226
    return-void
.end method

.method public refresh()V
    .locals 13

    .prologue
    .line 113
    sget-boolean v1, Lcom/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "OtherPaymentSettings"

    const-string v2, "refresh()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 117
    iget-object v1, p0, Lcom/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/android/settings/nfc/OtherBackend;

    invoke-virtual {v1}, Lcom/android/settings/nfc/OtherBackend;->getOtherAppInfos()Ljava/util/List;

    move-result-object v6

    .line 118
    .local v6, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;>;"
    if-eqz v6, :cond_2

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 128
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 129
    .local v3, "appInfo":Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;
    new-instance v0, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;

    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v5, 0x0

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 131
    .local v0, "preference":Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;
    iget-object v1, v3, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, v3, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 142
    .end local v0    # "preference":Lcom/android/settings/nfc/OtherSettings$OtherAppPreference;
    .end local v3    # "appInfo":Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;
    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_2
    const/4 v7, 0x0

    .line 143
    .local v7, "emptyImage":Landroid/widget/ImageView;
    const/4 v8, 0x0

    .line 145
    .local v8, "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0372

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "emptyImage":Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 148
    .restart local v7    # "emptyImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0371

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "emptyLayout":Landroid/widget/LinearLayout;
    check-cast v8, Landroid/widget/LinearLayout;

    .line 150
    .restart local v8    # "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d036f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 151
    .local v10, "emptyLayoutVert":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 160
    .end local v10    # "emptyLayoutVert":Landroid/widget/LinearLayout;
    :goto_1
    iget-object v1, p0, Lcom/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    check-cast v11, Landroid/graphics/drawable/AnimationDrawable;

    .line 163
    .local v11, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v11}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 165
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 171
    .end local v11    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    :goto_2
    iget-object v1, p0, Lcom/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/OtherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 172
    return-void

    .line 153
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0370

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "emptyImage":Landroid/widget/ImageView;
    check-cast v7, Landroid/widget/ImageView;

    .line 154
    .restart local v7    # "emptyImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d036f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .end local v8    # "emptyLayout":Landroid/widget/LinearLayout;
    check-cast v8, Landroid/widget/LinearLayout;

    .line 156
    .restart local v8    # "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0d0371

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 157
    .local v9, "emptyLayoutLand":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 168
    .end local v9    # "emptyLayoutLand":Landroid/widget/LinearLayout;
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/nfc/OtherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_2
.end method

.method public restoreDefaultOtherApp()Z
    .locals 2

    .prologue
    .line 352
    sget-boolean v0, Lcom/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OtherPaymentSettings"

    const-string v1, "restoreDefaultOtherApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_0
    sget-object v0, Lcom/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v0, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 355
    sget-object v0, Lcom/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-boolean v0, v0, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/android/settings/nfc/OtherBackend;

    sget-object v1, Lcom/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v1, v1, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    .line 361
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 358
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/android/settings/nfc/OtherBackend;

    sget-object v1, Lcom/android/settings/nfc/OtherSettings;->OtherAppInfo_backup:Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;

    iget-object v1, v1, Lcom/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0
.end method
