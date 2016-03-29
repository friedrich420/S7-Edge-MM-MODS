.class public Lcom/android/settings/applications/ClearDefaultsPreference;
.super Landroid/preference/Preference;
.source "ClearDefaultsPreference.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field protected mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRootView:Landroid/view/View;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    const v1, 0x7f040038

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setLayoutResource(I)V

    .line 67
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 69
    const-string v1, "usb"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 71
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/applications/ClearDefaultsPreference;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    return-void
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;)V
    .locals 2
    .param p1, "autoLaunchView"    # Landroid/widget/TextView;

    .prologue
    .line 213
    const v0, 0x7f0e138f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 216
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->updateUI()Z

    .line 127
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 95
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    .line 97
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    const v1, 0x7f0d00ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    .line 98
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/ClearDefaultsPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ClearDefaultsPreference$1;-><init>(Lcom/android/settings/applications/ClearDefaultsPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0
    .param p1, "entry"    # Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 91
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public updateUI()Z
    .locals 25

    .prologue
    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v13

    .line 132
    .local v13, "hasBindAppWidgetPermission":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mRootView:Landroid/view/View;

    move-object/from16 v21, v0

    const v22, 0x7f0d00c9

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 133
    .local v9, "autoLaunchView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/settings/Utils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/settings/Utils;->isDefaultBrowser(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/android/settings/Utils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    :cond_0
    const/4 v8, 0x1

    .line 136
    .local v8, "autoLaunchEnabled":Z
    :goto_0
    if-nez v8, :cond_2

    if-nez v13, :cond_2

    .line 137
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    .line 209
    :goto_1
    const/16 v21, 0x1

    return v21

    .line 133
    .end local v8    # "autoLaunchEnabled":Z
    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    .line 139
    .restart local v8    # "autoLaunchEnabled":Z
    :cond_2
    if-eqz v13, :cond_8

    if-eqz v8, :cond_8

    const/16 v20, 0x1

    .line 141
    .local v20, "useBullets":Z
    :goto_2
    if-eqz v13, :cond_9

    .line 142
    const v21, 0x7f0e07fc

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 147
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 148
    .local v11, "context":Landroid/content/Context;
    const/16 v19, 0x0

    .line 149
    .local v19, "text":Ljava/lang/CharSequence;
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f0c0128

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 151
    .local v10, "bulletIndent":I
    if-eqz v8, :cond_4

    .line 152
    const v21, 0x7f0e080e

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 154
    .local v7, "autoLaunchEnableText":Ljava/lang/CharSequence;
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    .local v17, "s":Landroid/text/SpannableString;
    if-eqz v20, :cond_3

    .line 156
    new-instance v21, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v22, 0x0

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 158
    :cond_3
    if-nez v19, :cond_a

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    const/16 v22, 0x1

    const-string v23, "\n"

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 161
    .end local v7    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .end local v17    # "s":Landroid/text/SpannableString;
    :cond_4
    :goto_4
    if-eqz v13, :cond_6

    .line 162
    const v21, 0x7f0e080f

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 164
    .local v5, "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    new-instance v17, Landroid/text/SpannableString;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 165
    .restart local v17    # "s":Landroid/text/SpannableString;
    if-eqz v20, :cond_5

    .line 166
    new-instance v21, Landroid/text/style/BulletSpan;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Landroid/text/style/BulletSpan;-><init>(I)V

    const/16 v22, 0x0

    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v23

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 169
    :cond_5
    if-nez v19, :cond_b

    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v17, v21, v22

    const/16 v22, 0x1

    const-string v23, "\n"

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    .line 172
    .end local v5    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v17    # "s":Landroid/text/SpannableString;
    :cond_6
    :goto_5
    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    const/4 v12, 0x0

    .line 179
    .local v12, "disabledByKiosk":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "content://com.sec.knox.provider2/KioskMode"

    const-string v23, "isKioskModeEnabled"

    invoke-static/range {v21 .. v23}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v16

    .line 183
    .local v16, "kioskModeEnabled":I
    const/16 v21, 0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "content://com.sec.knox.provider2/KioskMode"

    const-string v23, "getKioskHomePackage"

    const/16 v24, 0x0

    invoke-static/range {v21 .. v24}, Lcom/android/settings/Utils;->getEnterprisePolicyStringValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 189
    .local v15, "kioskHomePackage":Ljava/lang/String;
    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_7

    .line 190
    const/4 v12, 0x1

    .line 194
    .end local v15    # "kioskHomePackage":Ljava/lang/String;
    :cond_7
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v18, v21

    const/16 v21, 0x1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v18, v21

    .line 197
    .local v18, "selectionArgs":[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->getContext()Landroid/content/Context;

    move-result-object v21

    const-string v22, "content://com.sec.knox.provider2/ApplicationPolicy"

    const-string v23, "isApplicationSetToDefault"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move-object/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 201
    .local v6, "appSetDefault":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v6, v0, :cond_c

    const/4 v14, 0x1

    .line 204
    .local v14, "isAppSetDefault":Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    move-object/from16 v22, v0

    if-nez v12, :cond_d

    if-nez v14, :cond_d

    const/16 v21, 0x1

    :goto_7
    move-object/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 139
    .end local v6    # "appSetDefault":I
    .end local v10    # "bulletIndent":I
    .end local v11    # "context":Landroid/content/Context;
    .end local v12    # "disabledByKiosk":Z
    .end local v14    # "isAppSetDefault":Z
    .end local v16    # "kioskModeEnabled":I
    .end local v18    # "selectionArgs":[Ljava/lang/String;
    .end local v19    # "text":Ljava/lang/CharSequence;
    .end local v20    # "useBullets":Z
    :cond_8
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 144
    .restart local v20    # "useBullets":Z
    :cond_9
    const v21, 0x7f0e0eef

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_3

    .line 158
    .restart local v7    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v10    # "bulletIndent":I
    .restart local v11    # "context":Landroid/content/Context;
    .restart local v17    # "s":Landroid/text/SpannableString;
    .restart local v19    # "text":Ljava/lang/CharSequence;
    :cond_a
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v19, v21, v22

    const/16 v22, 0x1

    const-string v23, "\n"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    aput-object v17, v21, v22

    const/16 v22, 0x3

    const-string v23, "\n"

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    goto/16 :goto_4

    .line 169
    .end local v7    # "autoLaunchEnableText":Ljava/lang/CharSequence;
    .restart local v5    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    :cond_b
    const/16 v21, 0x4

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v19, v21, v22

    const/16 v22, 0x1

    const-string v23, "\n"

    aput-object v23, v21, v22

    const/16 v22, 0x2

    aput-object v17, v21, v22

    const/16 v22, 0x3

    const-string v23, "\n"

    aput-object v23, v21, v22

    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    goto/16 :goto_5

    .line 201
    .end local v5    # "alwaysAllowBindAppWidgetsText":Ljava/lang/CharSequence;
    .end local v17    # "s":Landroid/text/SpannableString;
    .restart local v6    # "appSetDefault":I
    .restart local v12    # "disabledByKiosk":Z
    .restart local v16    # "kioskModeEnabled":I
    .restart local v18    # "selectionArgs":[Ljava/lang/String;
    :cond_c
    const/4 v14, 0x0

    goto :goto_6

    .line 204
    .restart local v14    # "isAppSetDefault":Z
    :cond_d
    const/16 v21, 0x0

    goto :goto_7
.end method
