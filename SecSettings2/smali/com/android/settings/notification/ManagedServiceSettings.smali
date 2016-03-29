.class public abstract Lcom/android/settings/notification/ManagedServiceSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManagedServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ManagedServiceSettings$Config;,
        Lcom/android/settings/notification/ManagedServiceSettings$NotiAccessSettingsPreference;,
        Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;
    }
.end annotation


# instance fields
.field private final mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

.field private mContext:Landroid/content/Context;

.field private mEmpty:Landroid/widget/TextView;

.field private mPM:Landroid/content/pm/PackageManager;

.field private mServiceListing:Lcom/android/settings/notification/ServiceListing;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ManagedServiceSettings;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ManagedServiceSettings;->updateList(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;
    .param p1, "x1"    # Landroid/content/ComponentName;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/notification/ManagedServiceSettings;)Lcom/android/settings/notification/ServiceListing;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/notification/ManagedServiceSettings;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/ManagedServiceSettings;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "service"    # Landroid/content/ComponentName;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "enable"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 146
    if-nez p3, :cond_1

    .line 148
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v2, p1, v1}, Lcom/android/settings/notification/ServiceListing;->setEnabled(Landroid/content/ComponentName;Z)V

    .line 158
    :cond_0
    :goto_0
    return v0

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v2, p1}, Lcom/android/settings/notification/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;)Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/notification/ManagedServiceSettings$ScaryWarningDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    move v0, v1

    .line 158
    goto :goto_0
.end method

.method private updateList(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    const/4 v8, 0x1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 124
    .local v3, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 125
    new-instance v6, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;

    iget-object v7, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-direct {v6, v7}, Landroid/content/pm/PackageItemInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ServiceInfo;

    .line 127
    .local v4, "service":Landroid/content/pm/ServiceInfo;
    new-instance v0, Landroid/content/ComponentName;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v0, "cn":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "title":Ljava/lang/String;
    new-instance v2, Lcom/android/settings/notification/ManagedServiceSettings$NotiAccessSettingsPreference;

    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v6}, Lcom/android/settings/notification/ManagedServiceSettings$NotiAccessSettingsPreference;-><init>(Landroid/content/Context;)V

    .line 130
    .local v2, "pref":Lcom/android/settings/notification/ManagedServiceSettings$NotiAccessSettingsPreference;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/settings/notification/ManagedServiceSettings$NotiAccessSettingsPreference;->setPersistent(Z)V

    .line 131
    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v6, v8, v8}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/settings/notification/ManagedServiceSettings$NotiAccessSettingsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 132
    invoke-virtual {v2, v5}, Lcom/android/settings/notification/ManagedServiceSettings$NotiAccessSettingsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v6, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v6, v0}, Lcom/android/settings/notification/ServiceListing;->isEnabled(Landroid/content/ComponentName;)Z

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/settings/notification/ManagedServiceSettings$NotiAccessSettingsPreference;->setChecked(Z)V

    .line 134
    new-instance v6, Lcom/android/settings/notification/ManagedServiceSettings$2;

    invoke-direct {v6, p0, v0, v5}, Lcom/android/settings/notification/ManagedServiceSettings$2;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;Landroid/content/ComponentName;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lcom/android/settings/notification/ManagedServiceSettings$NotiAccessSettingsPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 143
    .end local v0    # "cn":Landroid/content/ComponentName;
    .end local v2    # "pref":Lcom/android/settings/notification/ManagedServiceSettings$NotiAccessSettingsPreference;
    .end local v4    # "service":Landroid/content/pm/ServiceInfo;
    .end local v5    # "title":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract getConfig()Lcom/android/settings/notification/ManagedServiceSettings$Config;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mPM:Landroid/content/pm/PackageManager;

    .line 74
    new-instance v0, Lcom/android/settings/notification/ServiceListing;

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/notification/ServiceListing;-><init>(Landroid/content/Context;Lcom/android/settings/notification/ManagedServiceSettings$Config;)V

    iput-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    .line 75
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    new-instance v1, Lcom/android/settings/notification/ManagedServiceSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/ManagedServiceSettings$1;-><init>(Lcom/android/settings/notification/ManagedServiceSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->addCallback(Lcom/android/settings/notification/ServiceListing$Callback;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ManagedServiceSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 82
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const v1, 0x7f040135

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 88
    .local v10, "v":Landroid/view/View;
    const v1, 0x1020004

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEmpty:Landroid/widget/TextView;

    .line 89
    iget-object v1, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEmpty:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mConfig:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    iget v2, v2, Lcom/android/settings/notification/ManagedServiceSettings$Config;->emptyText:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 90
    const v1, 0x102000a

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mEmpty:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 93
    const v1, 0x102000a

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ListView;

    .line 94
    .local v8, "listview":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 95
    .local v9, "resources":Landroid/content/res/Resources;
    const v1, 0x7f0c00a2

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0c00b0

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f0c00ac

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int v4, v1, v2

    .line 98
    .local v4, "divider_inset_size":I
    invoke-virtual {p0}, Lcom/android/settings/notification/ManagedServiceSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 99
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v8}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 100
    .local v0, "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 106
    :goto_0
    return-object v10

    .line 102
    .end local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    :cond_0
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v8}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 103
    .restart local v0    # "insetdivider":Landroid/graphics/drawable/InsetDrawable;
    invoke-virtual {v8, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->setListening(Z)V

    .line 120
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    invoke-virtual {v0}, Lcom/android/settings/notification/ServiceListing;->reload()Ljava/util/List;

    .line 113
    iget-object v0, p0, Lcom/android/settings/notification/ManagedServiceSettings;->mServiceListing:Lcom/android/settings/notification/ServiceListing;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ServiceListing;->setListening(Z)V

    .line 114
    return-void
.end method
