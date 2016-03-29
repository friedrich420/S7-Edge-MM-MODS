.class public Lcom/android/settings/AppListPreferenceWithSettings;
.super Lcom/android/settings/AppListPreference;
.source "AppListPreferenceWithSettings.java"


# instance fields
.field private mSettingsComponent:Landroid/content/ComponentName;

.field private mSettingsIcon:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AppListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const v0, 0x7f04019f

    invoke-virtual {p0, v0}, Lcom/android/settings/AppListPreferenceWithSettings;->setWidgetLayoutResource(I)V

    .line 21
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AppListPreferenceWithSettings;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/AppListPreferenceWithSettings;

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method private updateSettingsVisibility()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    if-nez v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_1

    .line 49
    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 25
    invoke-super {p0, p1}, Lcom/android/settings/AppListPreference;->onBindView(Landroid/view/View;)V

    .line 27
    const v1, 0x7f0d0411

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    .line 28
    iget-object v1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    new-instance v2, Lcom/android/settings/AppListPreferenceWithSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/AppListPreferenceWithSettings$1;-><init>(Lcom/android/settings/AppListPreferenceWithSettings;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    iget-object v1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 38
    .local v0, "container":Landroid/view/ViewGroup;
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/AppListPreferenceWithSettings;->updateSettingsVisibility()V

    .line 41
    return-void
.end method

.method protected setSettingsComponent(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "settings"    # Landroid/content/ComponentName;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/AppListPreferenceWithSettings;->mSettingsComponent:Landroid/content/ComponentName;

    .line 57
    invoke-direct {p0}, Lcom/android/settings/AppListPreferenceWithSettings;->updateSettingsVisibility()V

    .line 58
    return-void
.end method
