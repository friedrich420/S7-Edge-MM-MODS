.class public Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;
.super Landroid/preference/PreferenceFragment;
.source "AssistantPlusFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private appList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private appsWithEAM:I

.field private astMenuContext:Landroid/content/Context;

.field private checkCount:I

.field private checkboxPref:Landroid/preference/SwitchPreference;

.field context:Landroid/app/Activity;

.field private eamPrefScreen:Landroid/preference/PreferenceScreen;

.field private mActionBarLayout:Landroid/view/View;

.field private mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

.field private mEAMEnable:Z

.field private mEAMprov:I

.field private mLoadComplete:Z

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private messageHandler:Landroid/os/Handler;

.field packMngr:Landroid/content/pm/PackageManager;

.field private progressDialog:Landroid/app/ProgressDialog;

.field private sIsPhone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string v0, "AssistantPlusFragment"

    sput-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mLoadComplete:Z

    .line 70
    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    .line 71
    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    .line 72
    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    .line 73
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    .line 74
    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appList:Ljava/util/ArrayList;

    .line 79
    iput-boolean v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->sIsPhone:Z

    .line 80
    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$1;-><init>(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->messageHandler:Landroid/os/Handler;

    return-void
.end method

.method private OrderAppData()V
    .locals 5

    .prologue
    .line 428
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 429
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v4, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    .line 430
    .local v3, "switchPref":Landroid/preference/SwitchPreference;
    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 431
    .local v0, "appTitle":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 432
    .local v2, "order":I
    invoke-virtual {v3, v2}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 434
    .end local v0    # "appTitle":Ljava/lang/String;
    .end local v2    # "order":I
    .end local v3    # "switchPref":Landroid/preference/SwitchPreference;
    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mLoadComplete:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->resizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->OrderAppData()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->messageHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    return v0
.end method

.method static synthetic access$308(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/SwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Landroid/preference/PreferenceScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;
    .param p1, "x1"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->sIsPhone:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->onInstallSwitchBarToggleSwitch()V

    .line 199
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 200
    return-void
.end method

.method private resizeIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "original"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 422
    new-instance v1, Lcom/android/settings/IconResizer;

    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    .line 423
    .local v1, "mIconResizer":Lcom/android/settings/IconResizer;
    const/4 v0, 0x0

    .line 424
    .local v0, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, p1}, Lcom/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 425
    return-object v0
.end method

.method private updateAssistantMenuSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 266
    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    if-nez v1, :cond_2

    .line 269
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v4}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 281
    :cond_1
    return-void

    .line 275
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 276
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v5}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method protected fetchData()V
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    const-string v1, ""

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e15ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->progressDialog:Landroid/app/ProgressDialog;

    .line 339
    new-instance v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;-><init>(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$3;->start()V

    .line 420
    return-void
.end method

.method protected getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    .line 140
    const-string v2, "duc.bang"

    const-string v3, "onActivityCreated()"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 143
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 144
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "assistant_menu_eam_enable"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v2, v1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 145
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 146
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->installSwitchBarToggleSwitch()V

    .line 147
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 312
    if-eqz p2, :cond_2

    .line 314
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v4}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    iput v4, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    .line 319
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assistant_menu_eam_enable"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done Setting 1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    .end local v0    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 323
    :cond_2
    if-nez p2, :cond_1

    .line 325
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 326
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 325
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 328
    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assistant_menu_eam_enable"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 331
    iput v3, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    .line 332
    sget-object v1, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Done Setting 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x10

    .line 96
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 97
    const v2, 0x7f08004a

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->addPreferencesFromResource(I)V

    .line 98
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    .line 100
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->packMngr:Landroid/content/pm/PackageManager;

    .line 102
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    const-string v3, "com.samsung.android.app.assistantmenu"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->astMenuContext:Landroid/content/Context;

    .line 104
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->astMenuContext:Landroid/content/Context;

    const-string v3, "ASSISTANTPLUS_PREFS"

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu_eam_enable"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    .line 114
    sget-object v2, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Done "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMprov:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 125
    const-string v2, "eam_options"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    .line 128
    const-string v2, "selectAll_pref"

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/SwitchPreference;

    iput-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/preference/SwitchPreference;

    .line 129
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/preference/SwitchPreference;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreference;->setOrder(I)V

    .line 131
    iget-object v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 133
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->sIsPhone:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->fetchData()V

    .line 136
    return-void

    .line 106
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 155
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    :cond_0
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment$2;-><init>(Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 195
    return-void
.end method

.method public onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 294
    iget-boolean v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mLoadComplete:Z

    if-eqz v0, :cond_1

    .line 296
    iget v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e15b9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v3}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assistant_menu_eam_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 303
    sget-object v0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done Setting 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mEAMEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 307
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "arg0"    # Landroid/preference/Preference;
    .param p2, "arg1"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 206
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    move-object v0, p2

    .line 207
    check-cast v0, Ljava/lang/Boolean;

    .line 208
    .local v0, "checkValue":Ljava/lang/Boolean;
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->mAssistantMenuSettingsPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 209
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "selectAll_pref"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 210
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/preference/SwitchPreference;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 211
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 212
    iget v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    iput v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    .line 217
    :goto_0
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 218
    sget-object v6, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[c] increment count:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 226
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 217
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    .end local v2    # "i":I
    :cond_0
    iput v8, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    goto :goto_0

    .line 231
    .restart local v2    # "i":I
    :cond_1
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->eamPrefScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/SwitchPreference;

    invoke-virtual {v5}, Landroid/preference/SwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_2

    .line 237
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 261
    .end local v2    # "i":I
    .end local p1    # "arg0":Landroid/preference/Preference;
    :cond_3
    :goto_3
    return v8

    .line 240
    .restart local p1    # "arg0":Landroid/preference/Preference;
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_4
    const/4 v4, 0x0

    .line 241
    .local v4, "value":I
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-ne v5, v9, :cond_5

    .line 242
    const/4 v4, 0x1

    .line 244
    iget v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    .line 245
    sget-object v5, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[c] increment count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_4
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 252
    check-cast p1, Landroid/preference/SwitchPreference;

    .end local p1    # "arg0":Landroid/preference/Preference;
    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {p1, v5}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 253
    sget-object v5, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[c] updateEAM:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "aplication status"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 255
    iget v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    iget v6, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    if-ne v5, v6, :cond_6

    .line 256
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v9}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 247
    .restart local p1    # "arg0":Landroid/preference/Preference;
    .restart local p2    # "arg1":Ljava/lang/Object;
    :cond_5
    const/4 v4, 0x0

    .line 248
    iget v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    .line 249
    sget-object v5, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[c] decrement count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 257
    .end local p1    # "arg0":Landroid/preference/Preference;
    .end local p2    # "arg1":Ljava/lang/Object;
    :cond_6
    iget v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkCount:I

    iget v6, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->appsWithEAM:I

    if-ge v5, v6, :cond_3

    .line 258
    iget-object v5, p0, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->checkboxPref:Landroid/preference/SwitchPreference;

    invoke-virtual {v5, v8}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto/16 :goto_3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 287
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/accessibility/assistantmenu/AssistantPlusFragment;->updateAssistantMenuSaving()V

    .line 289
    return-void
.end method
