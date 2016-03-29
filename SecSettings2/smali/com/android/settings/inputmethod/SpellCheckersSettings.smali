.class public Lcom/android/settings/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static SAMSUNGKEYPAD_PACKAGE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mSpellCheckerLanaguagePref:Landroid/preference/Preference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    .line 61
    const-string v0, "com.sec.android.inputmethod"

    sput-object v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->SAMSUNGKEYPAD_PACKAGE_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    return-object v0
.end method

.method static synthetic access$200(I)I
    .locals 1
    .param p0, "x0"    # I

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->convertDialogItemIdToSubtypeIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/inputmethod/SpellCheckersSettings;
    .param p1, "x1"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method private changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 1
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, p1}, Landroid/view/textservice/TextServicesManager;->setCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 327
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 328
    return-void
.end method

.method private static convertDialogItemIdToSubtypeIndex(I)I
    .locals 1
    .param p0, "item"    # I

    .prologue
    .line 252
    add-int/lit8 v0, p0, -0x1

    return v0
.end method

.method private static convertSubtypeIndexToDialogItemId(I)I
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 251
    add-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private enabledSpellCheckerLanaguagePrefIfNeed()V
    .locals 5

    .prologue
    .line 100
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 101
    .local v2, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    .line 102
    .local v1, "isSpellCheckerEnabled":Z
    invoke-direct {p0, v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->isCurrentSamsungKeyboardSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)Z

    move-result v0

    .line 110
    .local v0, "isSamsungKeyboardSci":Z
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_2

    .line 111
    :cond_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 112
    sget-object v3, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    const-string v4, "mSpellCheckerLanaguagePref setEnabled false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 121
    :cond_1
    :goto_0
    return-void

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    if-eqz v3, :cond_1

    .line 117
    sget-object v3, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    const-string v4, "mSpellCheckerLanaguagePref setEnabled false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 3
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;
    .param p2, "subtype"    # Landroid/view/textservice/SpellCheckerSubtype;

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 214
    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    .line 216
    :cond_0
    if-nez p2, :cond_1

    .line 217
    const v0, 0x7f0e08ba

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method private isCurrentSamsungKeyboardSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)Z
    .locals 5
    .param p1, "sci"    # Landroid/view/textservice/SpellCheckerInfo;

    .prologue
    const/4 v1, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "currentSciPackageName":Ljava/lang/String;
    sget-object v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentSciPackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    sget-object v2, Lcom/android/settings/inputmethod/SpellCheckersSettings;->SAMSUNGKEYPAD_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 73
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private populatePreferenceScreen()V
    .locals 8

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    .line 127
    .local v5, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 128
    .local v0, "context":Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v6, :cond_0

    const/4 v1, 0x0

    .line 129
    .local v1, "count":I
    :goto_0
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 130
    iget-object v6, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    aget-object v4, v6, v2

    .line 132
    .local v4, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-direct {p0, v4}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->isCurrentSamsungKeyboardSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 133
    sget-object v6, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    const-string v7, "skip SamsungKeyboard Spell Checker"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 128
    .end local v1    # "count":I
    .end local v2    # "index":I
    .end local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v1, v6

    goto :goto_0

    .line 137
    .restart local v1    # "count":I
    .restart local v2    # "index":I
    .restart local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    new-instance v3, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    invoke-direct {v3, v0, v4, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;-><init>(Landroid/content/Context;Landroid/view/textservice/SpellCheckerInfo;Lcom/android/settings/inputmethod/SpellCheckerPreference$OnRadioButtonPreferenceListener;)V

    .line 138
    .local v3, "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 139
    invoke-static {v3}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/preference/Preference;)V

    goto :goto_2

    .line 142
    .end local v3    # "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    .end local v4    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->enabledSpellCheckerLanaguagePrefIfNeed()V

    .line 144
    return-void
.end method

.method private showChooseLanguageDialog()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 255
    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 256
    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->dismiss()V

    .line 258
    :cond_0
    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v9}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v2

    .line 259
    .local v2, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v9, v10}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v3

    .line 261
    .local v3, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 262
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0e086f

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 263
    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v8

    .line 264
    .local v8, "subtypeCount":I
    add-int/lit8 v9, v8, 0x1

    new-array v6, v9, [Ljava/lang/CharSequence;

    .line 265
    .local v6, "items":[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    invoke-direct {p0, v2, v9}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v10

    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, "checkedItemId":I
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v8, :cond_2

    .line 268
    invoke-virtual {v2, v4}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 269
    .local v7, "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-static {v4}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->convertSubtypeIndexToDialogItemId(I)I

    move-result v5

    .line 270
    .local v5, "itemId":I
    invoke-direct {p0, v2, v7}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v6, v5

    .line 271
    invoke-virtual {v7, v3}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 272
    move v1, v5

    .line 267
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 275
    .end local v5    # "itemId":I
    .end local v7    # "subtype":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_2
    new-instance v9, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v9, p0, v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v0, v6, v1, v9}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 294
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 295
    iget-object v9, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v9}, Landroid/app/AlertDialog;->show()V

    .line 296
    return-void
.end method

.method private showSecurityWarnDialog(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V
    .locals 7
    .param p1, "pref"    # Lcom/android/settings/inputmethod/SpellCheckerPreference;

    .prologue
    const/4 v6, 0x1

    .line 299
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 300
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 302
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 303
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 304
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 305
    const v2, 0x7f0e087b

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 306
    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 307
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 313
    const/high16 v2, 0x1040000

    new-instance v3, Lcom/android/settings/inputmethod/SpellCheckersSettings$4;

    invoke-direct {v3, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$4;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 318
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 319
    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 320
    return-void
.end method

.method private updatePreferenceScreen()V
    .locals 11

    .prologue
    const/4 v9, 0x0

    .line 184
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 185
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v3

    .line 186
    .local v3, "isSpellCheckerEnabled":Z
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v8, v3}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 188
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v8, v9}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 191
    .local v1, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->enabledSpellCheckerLanaguagePrefIfNeed()V

    .line 195
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    iget-object v10, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0, v10, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    .line 199
    .local v7, "screen":Landroid/preference/PreferenceScreen;
    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 200
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 201
    invoke-virtual {v7, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 202
    .local v5, "preference":Landroid/preference/Preference;
    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 203
    instance-of v8, v5, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    if-eqz v8, :cond_0

    move-object v4, v5

    .line 204
    check-cast v4, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    .line 205
    .local v4, "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    invoke-virtual {v4}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v6

    .line 206
    .local v6, "sci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v8}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-virtual {v4, v8}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSelected(Z)V

    .line 200
    .end local v4    # "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v4    # "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    .restart local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_1
    move v8, v9

    .line 206
    goto :goto_1

    .line 209
    .end local v4    # "pref":Lcom/android/settings/inputmethod/SpellCheckerPreference;
    .end local v5    # "preference":Landroid/preference/Preference;
    .end local v6    # "sci":Landroid/view/textservice/SpellCheckerInfo;
    :cond_2
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x3b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v0, 0x7f0800bd

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    .line 88
    const-string v0, "spellchecker_language"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    .line 89
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 91
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 92
    const-string v0, "textservices"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 93
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 94
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 95
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->populatePreferenceScreen()V

    .line 96
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 173
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 174
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 175
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    const/4 v2, 0x0

    .line 225
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/preference/Preference;

    if-ne p1, v3, :cond_0

    .line 226
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 227
    .local v0, "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v3, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 229
    .local v1, "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    if-nez v0, :cond_1

    .line 230
    sget-object v3, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    const-string v4, "currentSci null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    .end local v0    # "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    .end local v1    # "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_0
    :goto_0
    return v2

    .line 233
    .restart local v0    # "currentSci":Landroid/view/textservice/SpellCheckerInfo;
    .restart local v1    # "currentScs":Landroid/view/textservice/SpellCheckerSubtype;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V

    .line 234
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V
    .locals 3
    .param p1, "pref"    # Lcom/android/settings/inputmethod/SpellCheckerPreference;

    .prologue
    .line 241
    invoke-virtual {p1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->getSpellCheckerInfo()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v1

    .line 242
    .local v1, "sci":Landroid/view/textservice/SpellCheckerInfo;
    invoke-virtual {v1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 244
    .local v0, "isSystemApp":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 245
    invoke-direct {p0, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 249
    :goto_1
    return-void

    .line 242
    .end local v0    # "isSystemApp":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    .restart local v0    # "isSystemApp":Z
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Lcom/android/settings/inputmethod/SpellCheckerPreference;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 150
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 151
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 154
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 169
    :goto_0
    return-void

    .line 158
    :cond_0
    :try_start_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    .local v0, "ex":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0, p2}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerEnabled(Z)V

    .line 180
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 181
    return-void
.end method
