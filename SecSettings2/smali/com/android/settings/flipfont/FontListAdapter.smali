.class public Lcom/android/settings/flipfont/FontListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontListAdapter.java"


# static fields
.field private static mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;


# instance fields
.field context:Landroid/content/Context;

.field private currentThemePath:Ljava/lang/String;

.field private downloadFontString:Ljava/lang/String;

.field private droidSansFont:Landroid/graphics/Typeface;

.field private mContext:Landroid/content/Context;

.field private mCurrentFontString:Ljava/lang/String;

.field private mCurrentThemeFontIndex:I

.field public mFontAssetManager:Landroid/content/res/AssetManager;

.field public mFontNames:Ljava/util/Vector;

.field public mFontPackageNames:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;

.field public mInstalledApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCurrentSelectedThemeFont:Z

.field private mIsCurrentThemeAdapted:Z

.field private mIsFontPreviewActivity:Z

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTypefaceFiles:Ljava/util/Vector;

.field public mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

.field private mTypefaces:Ljava/util/Vector;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 274
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 69
    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 72
    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 78
    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 81
    new-instance v6, Lcom/android/settings/flipfont/TypefaceFinder;

    invoke-direct {v6}, Lcom/android/settings/flipfont/TypefaceFinder;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    .line 84
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    .line 87
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    .line 90
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    .line 93
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    .line 108
    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    .line 146
    const-string v6, ""

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    .line 147
    const-string v6, ""

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    .line 150
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    .line 151
    const-string v6, ""

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    .line 153
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    .line 154
    iput-boolean v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    .line 155
    iput v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    .line 275
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    .line 276
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iput-object p1, v6, Lcom/android/settings/flipfont/TypefaceFinder;->context:Landroid/content/Context;

    .line 277
    const-string v6, "layout_inflater"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e14f6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e1612

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    .line 285
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    .line 287
    const/4 v3, 0x0

    .line 289
    .local v3, "fontPackageName":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 290
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInstalledApplications:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 292
    const-string v6, "com.monotype.android.font."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 293
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 294
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v6, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 295
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v5

    .line 296
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 297
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-virtual {v6, v7, v3}, Lcom/android/settings/flipfont/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z

    .line 289
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
    :cond_1
    iget-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFinder:Lcom/android/settings/flipfont/TypefaceFinder;

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/android/settings/flipfont/TypefaceFinder;->getSansEntries(Landroid/content/pm/PackageManager;Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    .end local v3    # "fontPackageName":Ljava/lang/String;
    .end local v4    # "i":I
    :goto_1
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v6, "/system/fonts/UIFont.ttf"

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 312
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 313
    const-string v6, "/system/fonts/UIFont.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 320
    .end local v2    # "f":Ljava/io/File;
    :goto_2
    return-void

    .line 303
    :catch_0
    move-exception v1

    .line 305
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "FontListAdapter"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "font package not found, just use default font, "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 315
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "f":Ljava/io/File;
    :cond_2
    :try_start_2
    const-string v6, "/system/fonts/DroidSans.ttf"

    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 317
    .end local v2    # "f":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 318
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static destroyInstance()V
    .locals 1

    .prologue
    .line 266
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-eqz v0, :cond_0

    .line 267
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 269
    :cond_0
    return-void
.end method

.method private getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 13
    .param p1, "typeface"    # Ljava/lang/String;
    .param p2, "fontPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 659
    const-string v11, ".xml"

    const-string v12, ".ttf"

    invoke-virtual {p1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 660
    .local v6, "fontName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 662
    .local v2, "chinaFontName":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 663
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 666
    :cond_0
    if-eqz v2, :cond_1

    const-string v11, "shaonv"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    :cond_1
    const-string v11, "kaiti"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "miao"

    invoke-virtual {v2, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 668
    :cond_2
    move-object v1, v2

    .line 669
    .local v1, "chainaPreviewFont":Ljava/lang/String;
    const-string v11, ".ttf"

    const-string v12, "_prev.ttf"

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 670
    const/4 v3, 0x0

    .line 672
    .local v3, "chinaTypeface":Landroid/graphics/Typeface;
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "/system/fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 719
    .end local v1    # "chainaPreviewFont":Ljava/lang/String;
    .end local v3    # "chinaTypeface":Landroid/graphics/Typeface;
    :goto_0
    return-object v3

    .line 673
    .restart local v1    # "chainaPreviewFont":Ljava/lang/String;
    .restart local v3    # "chinaTypeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v4

    .line 675
    .local v4, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    :try_start_1
    iput-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 676
    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, p2, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 677
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v11, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 678
    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 679
    .local v9, "res":Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 687
    :try_start_2
    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 688
    .local v8, "is":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 693
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fonts/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v10, v11}, Lcom/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    .line 680
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "res":Landroid/content/res/Resources;
    :catch_1
    move-exception v5

    .local v5, "ex":Ljava/lang/Exception;
    move-object v3, v10

    .line 682
    goto :goto_0

    .line 689
    .end local v5    # "ex":Ljava/lang/Exception;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "res":Landroid/content/res/Resources;
    :catch_2
    move-exception v7

    .line 690
    .local v7, "ie":Ljava/io/IOException;
    invoke-direct {p0, v6, p2}, Lcom/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_0

    .line 701
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "chainaPreviewFont":Ljava/lang/String;
    .end local v3    # "chinaTypeface":Landroid/graphics/Typeface;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v7    # "ie":Ljava/io/IOException;
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_3
    const/4 v11, 0x0

    :try_start_3
    iput-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    .line 702
    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, p2, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 703
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object v11, v0, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 704
    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v9

    .line 705
    .restart local v9    # "res":Landroid/content/res/Resources;
    invoke-virtual {v9}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 713
    :try_start_4
    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fonts/"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 714
    .restart local v8    # "is":Ljava/io/InputStream;
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 719
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "fonts/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontAssetManager:Landroid/content/res/AssetManager;

    invoke-static {v10, v11}, Lcom/android/settings/flipfont/FontCache;->get(Ljava/lang/String;Landroid/content/res/AssetManager;)Landroid/graphics/Typeface;

    move-result-object v3

    goto/16 :goto_0

    .line 706
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v8    # "is":Ljava/io/InputStream;
    .end local v9    # "res":Landroid/content/res/Resources;
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/lang/Exception;
    move-object v3, v10

    .line 708
    goto/16 :goto_0

    .line 715
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v9    # "res":Landroid/content/res/Resources;
    :catch_4
    move-exception v4

    .line 716
    .local v4, "e":Ljava/io/IOException;
    invoke-direct {p0, v6, p2}, Lcom/android/settings/flipfont/FontListAdapter;->getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto/16 :goto_0
.end method

.method private getFontfromCR(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 15
    .param p1, "sFont"    # Ljava/lang/String;
    .param p2, "sPackageName"    # Ljava/lang/String;

    .prologue
    .line 570
    const/4 v2, 0x0

    .line 573
    .local v2, "cr":Landroid/content/ContentResolver;
    :try_start_0
    iget-object v13, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 579
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "content://"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/fonts/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    .line 580
    .local v12, "uriFont":Landroid/net/Uri;
    const/4 v7, 0x0

    .line 583
    .local v7, "isFont":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v2, v12}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v7

    .line 589
    const/4 v6, 0x0

    .line 592
    .local v6, "fTemp":Ljava/io/File;
    :try_start_2
    const-string v13, "font"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v6

    .line 603
    const/4 v4, 0x0

    .line 604
    .local v4, "fOut":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 607
    .local v8, "os":Ljava/io/BufferedOutputStream;
    :try_start_3
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 608
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .local v5, "fOut":Ljava/io/FileOutputStream;
    :try_start_4
    new-instance v9, Ljava/io/BufferedOutputStream;

    invoke-direct {v9, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_16
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 609
    .end local v8    # "os":Ljava/io/BufferedOutputStream;
    .local v9, "os":Ljava/io/BufferedOutputStream;
    const/16 v13, 0x400

    :try_start_5
    new-array v1, v13, [B

    .line 610
    .local v1, "b":[B
    const/4 v10, 0x0

    .line 612
    .local v10, "read":I
    :goto_0
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v10

    if-lez v10, :cond_3

    .line 613
    const/4 v13, 0x0

    invoke-virtual {v9, v1, v13, v10}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_0

    .line 618
    .end local v1    # "b":[B
    .end local v10    # "read":I
    :catch_0
    move-exception v3

    move-object v8, v9

    .end local v9    # "os":Ljava/io/BufferedOutputStream;
    .restart local v8    # "os":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .line 619
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .local v3, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    :goto_1
    const/4 v11, 0x0

    .line 623
    if-eqz v8, :cond_0

    .line 625
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b

    .line 629
    :cond_0
    :goto_2
    if-eqz v4, :cond_1

    .line 631
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c

    .line 635
    :cond_1
    :goto_3
    if-eqz v7, :cond_2

    .line 637
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_d

    .line 649
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .end local v6    # "fTemp":Ljava/io/File;
    .end local v7    # "isFont":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/BufferedOutputStream;
    .end local v12    # "uriFont":Landroid/net/Uri;
    :cond_2
    :goto_4
    return-object v11

    .line 574
    :catch_1
    move-exception v3

    .line 575
    .local v3, "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_4

    .line 584
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v7    # "isFont":Ljava/io/InputStream;
    .restart local v12    # "uriFont":Landroid/net/Uri;
    :catch_2
    move-exception v3

    .line 585
    .restart local v3    # "e":Ljava/lang/Exception;
    const/4 v11, 0x0

    goto :goto_4

    .line 593
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v6    # "fTemp":Ljava/io/File;
    :catch_3
    move-exception v3

    .line 595
    .local v3, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    .line 599
    :goto_5
    const/4 v11, 0x0

    goto :goto_4

    .line 616
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "b":[B
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v9    # "os":Ljava/io/BufferedOutputStream;
    .restart local v10    # "read":I
    :cond_3
    :try_start_a
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->flush()V

    .line 617
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_14
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 623
    if-eqz v9, :cond_4

    .line 625
    :try_start_b
    invoke-virtual {v9}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 629
    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    .line 631
    :try_start_c
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 635
    :cond_5
    :goto_7
    if-eqz v7, :cond_6

    .line 637
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_a

    .line 644
    :cond_6
    :goto_8
    :try_start_e
    invoke-static {v6}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v11

    .line 645
    .local v11, "tf":Landroid/graphics/Typeface;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_4

    .line 647
    .end local v11    # "tf":Landroid/graphics/Typeface;
    :catch_4
    move-exception v3

    .line 648
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 649
    const/4 v11, 0x0

    goto :goto_4

    .line 620
    .end local v1    # "b":[B
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .end local v9    # "os":Ljava/io/BufferedOutputStream;
    .end local v10    # "read":I
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v3

    .line 621
    .local v3, "e":Ljava/io/IOException;
    :goto_9
    const/4 v11, 0x0

    .line 623
    if-eqz v8, :cond_7

    .line 625
    :try_start_f
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_e

    .line 629
    :cond_7
    :goto_a
    if-eqz v4, :cond_8

    .line 631
    :try_start_10
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 635
    :cond_8
    :goto_b
    if-eqz v7, :cond_2

    .line 637
    :try_start_11
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_4

    .line 638
    :catch_6
    move-exception v13

    goto :goto_4

    .line 623
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_c
    if-eqz v8, :cond_9

    .line 625
    :try_start_12
    invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_10

    .line 629
    :cond_9
    :goto_d
    if-eqz v4, :cond_a

    .line 631
    :try_start_13
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_11

    .line 635
    :cond_a
    :goto_e
    if-eqz v7, :cond_b

    .line 637
    :try_start_14
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_12

    .line 638
    :cond_b
    :goto_f
    throw v13

    .line 596
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .end local v8    # "os":Ljava/io/BufferedOutputStream;
    .restart local v3    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v13

    goto :goto_5

    .line 626
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "b":[B
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v9    # "os":Ljava/io/BufferedOutputStream;
    .restart local v10    # "read":I
    :catch_8
    move-exception v13

    goto :goto_6

    .line 632
    :catch_9
    move-exception v13

    goto :goto_7

    .line 638
    :catch_a
    move-exception v13

    goto :goto_8

    .line 626
    .end local v1    # "b":[B
    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .end local v9    # "os":Ljava/io/BufferedOutputStream;
    .end local v10    # "read":I
    .local v3, "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v8    # "os":Ljava/io/BufferedOutputStream;
    :catch_b
    move-exception v13

    goto :goto_2

    .line 632
    :catch_c
    move-exception v13

    goto :goto_3

    .line 638
    :catch_d
    move-exception v13

    goto :goto_4

    .line 626
    .local v3, "e":Ljava/io/IOException;
    :catch_e
    move-exception v13

    goto :goto_a

    .line 632
    :catch_f
    move-exception v13

    goto :goto_b

    .line 626
    .end local v3    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v14

    goto :goto_d

    .line 632
    :catch_11
    move-exception v14

    goto :goto_e

    .line 638
    :catch_12
    move-exception v14

    goto :goto_f

    .line 623
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v13

    move-object v4, v5

    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_c

    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .end local v8    # "os":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v9    # "os":Ljava/io/BufferedOutputStream;
    :catchall_2
    move-exception v13

    move-object v8, v9

    .end local v9    # "os":Ljava/io/BufferedOutputStream;
    .restart local v8    # "os":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_c

    .line 620
    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    :catch_13
    move-exception v3

    move-object v4, v5

    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_9

    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .end local v8    # "os":Ljava/io/BufferedOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v9    # "os":Ljava/io/BufferedOutputStream;
    :catch_14
    move-exception v3

    move-object v8, v9

    .end local v9    # "os":Ljava/io/BufferedOutputStream;
    .restart local v8    # "os":Ljava/io/BufferedOutputStream;
    move-object v4, v5

    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    goto :goto_9

    .line 618
    :catch_15
    move-exception v3

    goto/16 :goto_1

    .end local v4    # "fOut":Ljava/io/FileOutputStream;
    .restart local v5    # "fOut":Ljava/io/FileOutputStream;
    :catch_16
    move-exception v3

    move-object v4, v5

    .end local v5    # "fOut":Ljava/io/FileOutputStream;
    .restart local v4    # "fOut":Ljava/io/FileOutputStream;
    goto/16 :goto_1
.end method

.method public static getInstanceFontListAdapter(Landroid/content/Context;)Lcom/android/settings/flipfont/FontListAdapter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 162
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/settings/flipfont/FontListAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/flipfont/FontListAdapter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    .line 172
    :goto_0
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    invoke-virtual {v0, v3}, Lcom/android/settings/flipfont/FontListAdapter;->setmIsFontPreviewActivity(Z)V

    .line 173
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iput-object p0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    .line 174
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    return-object v0

    .line 166
    :cond_0
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v1, v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e1130

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    .line 169
    sget-object v0, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v0, v0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    const-string v1, "default"

    invoke-virtual {v0, v3, v1}, Ljava/util/Vector;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private setFont(ILandroid/widget/TextView;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 452
    iget-object v2, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    monitor-enter v2

    .line 453
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v1, p1, :cond_0

    .line 454
    monitor-exit v2

    .line 462
    :goto_0
    return-void

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    .line 458
    .local v0, "fontTypeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 461
    :cond_1
    monitor-exit v2

    goto :goto_0

    .end local v0    # "fontTypeface":Landroid/graphics/Typeface;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getCurrentThemeFontIndex()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    return v0
.end method

.method public getCurrentThemeString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    return-object v0
.end method

.method public getFontName(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const v4, 0x7f0e1117

    const v3, 0x7f0e1116

    const v2, 0x7f0e1115

    .line 354
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 355
    .local v0, "tmpString":Ljava/lang/String;
    const-string v1, "Cool"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 404
    .restart local v0    # "tmpString":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 357
    :cond_1
    const-string v1, "Rose"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 358
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto :goto_0

    .line 359
    :cond_2
    const-string v1, "Choco"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 360
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto :goto_0

    .line 362
    :cond_3
    const-string v1, "Rosemary"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 363
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto :goto_0

    .line 364
    :cond_4
    const-string v1, "Choco cooky"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 365
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto :goto_0

    .line 367
    :cond_5
    const-string v1, "Cool jazz"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 368
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto :goto_0

    .line 369
    :cond_6
    const-string v1, "Samsung sans"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 370
    const-string v0, "Samsung Sans"

    goto :goto_0

    .line 371
    :cond_7
    const-string v1, "Apple mint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 372
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e1118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 374
    :cond_8
    const-string v1, "Tinker bell"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 375
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e1119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 377
    :cond_9
    const-string v1, "Shao nv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 378
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e111d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 380
    :cond_a
    const-string v1, "Kaiti"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 381
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e111e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 383
    :cond_b
    const-string v1, "Miao"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 384
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e111f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 386
    :cond_c
    const-string v1, "UDRGothic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 387
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e111a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 389
    :cond_d
    const-string v1, "UDMincho"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 390
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e111b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 392
    :cond_e
    const-string v1, "Pop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 393
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e111c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 395
    :cond_f
    const-string v1, "Current theme\'s default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 396
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e1612

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 398
    :cond_10
    const-string v1, "Foundation"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 399
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e1120

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .end local v0    # "tmpString":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0    # "tmpString":Ljava/lang/String;
    goto/16 :goto_0

    .line 401
    :cond_11
    iget-object v1, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public getFontTypeface(I)Landroid/graphics/Typeface;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 543
    const/4 v3, 0x0

    .line 544
    .local v3, "newTypeface":Landroid/graphics/Typeface;
    const/4 v2, 0x0

    .line 545
    .local v2, "fontfile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 547
    .local v1, "fontPackageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-le v4, p1, :cond_0

    .line 549
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 550
    iget-object v4, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v4, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    invoke-direct {p0, v2, v1}, Lcom/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 554
    :cond_0
    if-nez v3, :cond_1

    .line 556
    :try_start_0
    const-string v4, "/system/fonts/DroidSans.ttf"

    invoke-static {v4}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 562
    :cond_1
    :goto_0
    return-object v3

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 345
    int-to-long v0, p1

    return-wide v0
.end method

.method public getThemeFontCurrentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x1020014

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 413
    const/4 v2, 0x0

    .line 422
    .local v2, "v2":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04021a

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 427
    :goto_0
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 428
    .local v1, "v":Landroid/widget/TextView;
    invoke-virtual {p0, p1}, Lcom/android/settings/flipfont/FontListAdapter;->getFontName(I)Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, "tempString":Ljava/lang/String;
    iget-boolean v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 431
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400c1

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 432
    invoke-virtual {p2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2    # "v2":Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .line 433
    .restart local v2    # "v2":Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 438
    :cond_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    invoke-direct {p0, p1, v1}, Lcom/android/settings/flipfont/FontListAdapter;->setFont(ILandroid/widget/TextView;)V

    .line 441
    if-eqz v2, :cond_2

    .line 445
    .end local v2    # "v2":Landroid/widget/TextView;
    :goto_1
    return-object v2

    .line 425
    .end local v0    # "tempString":Ljava/lang/String;
    .end local v1    # "v":Landroid/widget/TextView;
    .restart local v2    # "v2":Landroid/widget/TextView;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/flipfont/FontListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040124

    invoke-virtual {v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .restart local v0    # "tempString":Ljava/lang/String;
    .restart local v1    # "v":Landroid/widget/TextView;
    :cond_2
    move-object v2, v1

    .line 445
    goto :goto_1
.end method

.method public isCurrentThemeFontInstalled()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    return v0
.end method

.method public isCurrentThemeFontSelected()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    return v0
.end method

.method public loadTypefaces()V
    .locals 12

    .prologue
    const v11, 0x14000020

    .line 470
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e1129

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 471
    .local v8, "uri":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 472
    .local v6, "samsungAppsintent":Landroid/content/Intent;
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 473
    invoke-virtual {v6, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 477
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0e1128

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8    # "uri":Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 479
    .restart local v8    # "uri":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 480
    .local v4, "marketIntent":Landroid/content/Intent;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    .line 481
    invoke-virtual {v4, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 486
    iget-boolean v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {v9, v6}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->context:Landroid/content/Context;

    invoke-static {v9, v4}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 489
    :cond_0
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    sget-object v10, Lcom/android/settings/flipfont/FontListAdapter;->mFontListAdapter:Lcom/android/settings/flipfont/FontListAdapter;

    iget-object v10, v10, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    .line 490
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 491
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 495
    :cond_1
    const/4 v2, 0x0

    .line 496
    .local v2, "fontfile":Ljava/lang/String;
    const/4 v1, 0x0

    .line 497
    .local v1, "fontPackageName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 498
    .local v5, "newTypeface":Landroid/graphics/Typeface;
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->droidSansFont:Landroid/graphics/Typeface;

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 499
    const/4 v3, 0x1

    .line 501
    .local v3, "i":I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v3, v9, :cond_3

    .line 502
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 503
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    invoke-direct {p0, v2, v1}, Lcom/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v5

    .line 507
    if-nez v5, :cond_2

    .line 509
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 510
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 511
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaceFiles:Ljava/util/Vector;

    invoke-virtual {v9, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 515
    :cond_2
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 519
    :cond_3
    iget-boolean v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    if-eqz v9, :cond_6

    .line 521
    :try_start_0
    const-string v9, "FontListAdapter"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadTypefaces currentThemePath : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/4 v7, 0x0

    .line 523
    .local v7, "themeFontTypeface":Landroid/graphics/Typeface;
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v9, :cond_4

    .line 524
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-static {v9}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    .line 527
    :cond_4
    iget-boolean v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v9, :cond_7

    .line 528
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v7    # "themeFontTypeface":Landroid/graphics/Typeface;
    :cond_5
    :goto_1
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    iget-object v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-direct {p0, v10, v11}, Lcom/android/settings/flipfont/FontListAdapter;->getFont(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 540
    :cond_6
    return-void

    .line 530
    .restart local v7    # "themeFontTypeface":Landroid/graphics/Typeface;
    :cond_7
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v9

    if-lez v9, :cond_5

    .line 531
    iget-object v9, p0, Lcom/android/settings/flipfont/FontListAdapter;->mTypefaces:Ljava/util/Vector;

    invoke-virtual {v9, v7}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 535
    .end local v7    # "themeFontTypeface":Landroid/graphics/Typeface;
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setInitDownloadFontAndThemeFont()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 178
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    if-eqz v7, :cond_4

    .line 179
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "theme_font_system"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    .line 182
    const-string v6, ""

    .line 183
    .local v6, "sysprop":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/data/com.android.settings/app_fonts/sans.loc"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    .local v3, "file":Ljava/io/File;
    const/4 v4, 0x0

    .line 185
    .local v4, "fis":Ljava/io/FileInputStream;
    const/4 v0, 0x0

    .line 188
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 191
    if-eqz v6, :cond_0

    .line 192
    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 196
    :cond_0
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 197
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 205
    if-eqz v5, :cond_1

    .line 206
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 213
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :goto_0
    const-string v7, "Theme"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 214
    iput-boolean v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    .line 219
    :goto_1
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    if-eqz v7, :cond_7

    const-string v7, ""

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->currentThemePath:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 220
    iput-boolean v11, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    .line 225
    :goto_2
    iget-boolean v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v9, :cond_8

    .line 226
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 230
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentThemeFontIndex:I

    .line 238
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, v9, :cond_4

    .line 239
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 240
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->downloadFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 243
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local v6    # "sysprop":Ljava/lang/String;
    :cond_4
    return-void

    .line 208
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "sysprop":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 211
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_0

    .line 198
    :catch_1
    move-exception v2

    .line 199
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_4
    const-string v6, "default"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    if-eqz v4, :cond_2

    .line 206
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 208
    :catch_2
    move-exception v7

    goto :goto_0

    .line 200
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 201
    .local v2, "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    const-string v6, "default"

    .line 202
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 205
    if-eqz v4, :cond_2

    .line 206
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_0

    .line 208
    :catch_4
    move-exception v7

    goto :goto_0

    .line 204
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 205
    :goto_6
    if-eqz v4, :cond_5

    .line 206
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 210
    :cond_5
    :goto_7
    throw v7

    .line 216
    :cond_6
    iput-boolean v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentSelectedThemeFont:Z

    goto :goto_1

    .line 222
    :cond_7
    iput-boolean v10, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    goto :goto_2

    .line 233
    :cond_8
    iget-boolean v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsCurrentThemeAdapted:Z

    if-nez v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_3

    .line 234
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontPackageNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 235
    iget-object v7, p0, Lcom/android/settings/flipfont/FontListAdapter;->mFontNames:Ljava/util/Vector;

    iget-object v8, p0, Lcom/android/settings/flipfont/FontListAdapter;->mCurrentFontString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    goto :goto_3

    .line 208
    :catch_5
    move-exception v8

    goto :goto_7

    .line 204
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 200
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 198
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_9
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public setmIsFontPreviewActivity(Z)V
    .locals 0
    .param p1, "mIsFontPreviewActivity"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lcom/android/settings/flipfont/FontListAdapter;->mIsFontPreviewActivity:Z

    .line 324
    return-void
.end method
