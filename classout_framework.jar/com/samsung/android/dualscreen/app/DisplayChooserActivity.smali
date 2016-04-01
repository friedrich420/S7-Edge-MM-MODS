.class public Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "DisplayChooserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;,
        Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayResolveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "DisplayChooserActivity"

.field public static final THEME_CHOOSER:Ljava/lang/String; = "theme"

.field public static final THEME_DEVICE_DEFAULT:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x2

.field public static final THEME_NONE:I


# instance fields
.field private mAdapter:Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;

.field private mGrid:Landroid/widget/GridView;

.field private mIconDpi:I

.field private mIconSize:I

.field private mLaunchedFromUid:I

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 272
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;

    .prologue
    .line 67
    iget v0, p0, mIconSize:I

    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 95
    return-object v0
.end method


# virtual methods
.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 179
    :try_start_0
    iget v2, p0, mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v1

    .line 184
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_6
    return-object v1

    .line 180
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_7
    move-exception v0

    .line 181
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_6
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .registers 8
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 190
    :try_start_0
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 191
    .local v0, "ci":Landroid/content/pm/ComponentInfo;
    if-nez v0, :cond_6

    .line 192
    const/4 v1, 0x0

    .line 215
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_5
    :goto_5
    return-object v1

    .line 194
    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_6
    iget-object v5, p0, mPm:Landroid/content/pm/PackageManager;

    iget v4, v0, Landroid/content/pm/ComponentInfo;->icon:I

    if-eqz v4, :cond_47

    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    :goto_e
    invoke-virtual {v5, v4}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 195
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_5

    .line 199
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v4, :cond_2c

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v4, :cond_2c

    .line 200
    iget-object v4, p0, mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v4, v5}, getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 201
    if-nez v1, :cond_5

    .line 205
    :cond_2c
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v3

    .line 206
    .local v3, "iconRes":I
    if-eqz v3, :cond_40

    .line 207
    iget-object v4, p0, mPm:Landroid/content/pm/PackageManager;

    iget-object v5, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_3d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_3d} :catch_4a

    move-result-object v1

    .line 208
    if-nez v1, :cond_5

    .line 215
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v3    # "iconRes":I
    :cond_40
    :goto_40
    iget-object v4, p0, mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v4}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_5

    .line 194
    .restart local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :cond_47
    :try_start_47
    iget-object v4, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_47 .. :try_end_49} :catch_4a

    goto :goto_e

    .line 212
    .end local v0    # "ci":Landroid/content/pm/ComponentInfo;
    :catch_4a
    move-exception v2

    .line 213
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "DisplayChooserActivity"

    const-string v5, "Couldn\'t find resources for package"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 100
    invoke-direct {p0}, makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 103
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .registers 21
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const v1, 0x10302d2

    invoke-virtual {p0, v1}, setTheme(I)V

    .line 108
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    :try_start_9
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    iput v1, p0, mLaunchedFromUid:I
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_17} :catch_ff

    .line 116
    :goto_17
    const/4 v1, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 118
    const-string/jumbo v1, "theme"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    .line 120
    .local v13, "theme":I
    packed-switch v13, :pswitch_data_11e

    .line 132
    :goto_2a
    iget-object v9, p0, mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 134
    .local v9, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    move-object/from16 v0, p3

    iput-object v0, v9, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 136
    const-string v1, "activity"

    invoke-virtual {p0, v1}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 137
    .local v8, "am":Landroid/app/ActivityManager;
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, mIconDpi:I

    .line 138
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    iput v1, p0, mIconSize:I

    .line 140
    invoke-virtual {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, mPm:Landroid/content/pm/PackageManager;

    .line 142
    const-string v1, "android.intent.extra.DUAL_SCREEN_ORIGINAL_TARGET_ACTIVITY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/content/ComponentName;

    .line 144
    .local v10, "cn":Landroid/content/ComponentName;
    if-eqz v10, :cond_62

    .line 145
    const-string v1, "android.intent.extra.DUAL_SCREEN_ORIGINAL_TARGET_ACTIVITY"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 146
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 148
    :cond_62
    const-string v1, "android.intent.extra.EXTRA_DUAL_SCREEN_CALLER_ACTIVITY_DISPLAY_ID"

    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 150
    .local v7, "callerDisplayId":I
    const-string v1, "android.intent.extra.EXTRA_DUAL_SCREEN_CALLER_ACTIVITY_DISPLAY_ID"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getLaunchParams()Lcom/samsung/android/dualscreen/DualScreenLaunchParams;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/dualscreen/DualScreenLaunchParams;->setFromDisplayChooser(Z)V

    .line 154
    const/4 v5, 0x0

    .line 155
    .local v5, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, mPm:Landroid/content/pm/PackageManager;

    const v2, 0x100c0

    move-object/from16 v0, p2

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .line 158
    .local v12, "resolvedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v12, :cond_8f

    .line 159
    const/4 v1, 0x0

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 162
    .restart local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    :cond_8f
    const-string v1, "DisplayChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate() : rInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const-string v1, "DisplayChooserActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onCreate() : callerDisplayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v1, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;

    iget v6, p0, mLaunchedFromUid:I

    move-object v2, p0

    move-object v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;-><init>(Lcom/samsung/android/dualscreen/app/DisplayChooserActivity;Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;II)V

    iput-object v1, p0, mAdapter:Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;

    .line 167
    invoke-virtual {p0}, getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x1090058

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v9, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 168
    iget-object v1, v9, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x102039b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, mGrid:Landroid/widget/GridView;

    .line 169
    iget-object v1, p0, mGrid:Landroid/widget/GridView;

    iget-object v2, p0, mAdapter:Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 170
    iget-object v1, p0, mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    iget-object v1, p0, mGrid:Landroid/widget/GridView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 173
    invoke-virtual {p0}, setupAlert()V

    .line 174
    return-void

    .line 112
    .end local v5    # "rInfo":Landroid/content/pm/ResolveInfo;
    .end local v7    # "callerDisplayId":I
    .end local v8    # "am":Landroid/app/ActivityManager;
    .end local v9    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v10    # "cn":Landroid/content/ComponentName;
    .end local v12    # "resolvedList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v13    # "theme":I
    :catch_ff
    move-exception v11

    .line 113
    .local v11, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    iput v1, p0, mLaunchedFromUid:I

    goto/16 :goto_17

    .line 122
    .end local v11    # "e":Landroid/os/RemoteException;
    .restart local v13    # "theme":I
    :pswitch_105
    const v1, 0x10302d2

    invoke-virtual {p0, v1}, setTheme(I)V

    goto/16 :goto_2a

    .line 125
    :pswitch_10d
    const v1, 0x10302d1

    invoke-virtual {p0, v1}, setTheme(I)V

    goto/16 :goto_2a

    .line 128
    :pswitch_115
    const v1, 0x10302d2

    invoke-virtual {p0, v1}, setTheme(I)V

    goto/16 :goto_2a

    .line 120
    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_105
        :pswitch_10d
        :pswitch_115
    .end packed-switch
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V
    .registers 6
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 250
    if-eqz p2, :cond_5

    .line 252
    :try_start_2
    invoke-virtual {p0, p2}, startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_5} :catch_6

    .line 257
    :cond_5
    :goto_5
    return-void

    .line 253
    :catch_6
    move-exception v0

    .line 254
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "DisplayChooserActivity"

    const-string v2, "Activity Not Found"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 237
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, mGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 238
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_e

    const/4 v1, 0x1

    .line 239
    .local v1, "hasValidSelection":Z
    :goto_a
    invoke-virtual {p0, p3}, startSelected(I)V

    .line 240
    return-void

    .line 238
    .end local v1    # "hasValidSelection":Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_a
.end method

.method protected onStop()V
    .registers 3

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 221
    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_19

    .line 229
    invoke-virtual {p0}, isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_19

    .line 230
    invoke-virtual {p0}, finish()V

    .line 233
    :cond_19
    return-void
.end method

.method startSelected(I)V
    .registers 5
    .param p1, "which"    # I

    .prologue
    .line 243
    iget-object v2, p0, mAdapter:Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 244
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, mAdapter:Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;

    invoke-virtual {v2, p1}, Lcom/samsung/android/dualscreen/app/DisplayChooserActivity$DisplayListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 245
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0}, onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;)V

    .line 246
    invoke-virtual {p0}, finish()V

    .line 247
    return-void
.end method
