.class public Lcom/samsung/android/theme/SThemeManager;
.super Ljava/lang/Object;
.source "SThemeManager.java"


# static fields
.field public static final ACTION_FESTIVAL_EFFECT_CHANGED:Ljava/lang/String; = "android.intent.action.FESTIVAL_EFFECT_CHANGED"

.field public static final ACTION_THEME_CHANGED:Ljava/lang/String; = "android.intent.action.STHEME_CHANGED"

.field private static final CSC_FILE_THEME_APP_LIST:Ljava/lang/String; = "/system/csc/theme_app_list.xml"

.field public static final CURRENT_FESTIVAL_EFFECT_PACKAGE:Ljava/lang/String; = "current_festival_effect_package"

.field public static final CURRENT_FESTIVAL_WALLPAPER_CLASS:Ljava/lang/String; = "current_festival_wallpaper_class"

.field public static final CURRENT_FESTIVAL_WALLPAPER_PACKAGE:Ljava/lang/String; = "current_festival_wallpaper_package"

.field public static final CURRENT_THEME_PACKAGE:Ljava/lang/String; = "current_sec_theme_package"

.field private static final DBG:Z

.field private static final FESTIVAL_EFFECT_STR:Ljava/lang/String; = "festival"

.field private static final TAG:Ljava/lang/String; = "SThemeManager"

.field private static final TAG_APP_LIST:Ljava/lang/String; = "ThemeAppList"

.field private static final TAG_ATTR_CLASSNAME:Ljava/lang/String; = "className"

.field private static final TAG_ATTR_ICONID:Ljava/lang/String; = "iconId"

.field private static final TAG_THEME_APP:Ljava/lang/String; = "ThemeApp"

.field private static final THEME_STR:Ljava/lang/String; = "theme"

.field public static final TYPE_FESTIVAL_EFFECT:I = 0x1

.field public static final TYPE_THEME:I

.field private static sPackageIconMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageIconLoaded:Z

.field private mPackageName:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_8

    const/4 v0, 0x0

    :cond_8
    sput-boolean v0, DBG:Z

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, sPackageIconMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;I)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, mPackageIconLoaded:Z

    .line 122
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 123
    iput p2, p0, mType:I

    .line 125
    invoke-virtual {p0}, resetTheme()V

    .line 126
    return-void
.end method

.method private getCurrentResourcePackage()V
    .registers 3

    .prologue
    .line 383
    iget v0, p0, mType:I

    if-nez v0, :cond_13

    .line 385
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_theme_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mPackageName:Ljava/lang/String;

    .line 392
    :cond_12
    :goto_12
    return-void

    .line 387
    :cond_13
    iget v0, p0, mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 389
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_festival_effect_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mPackageName:Ljava/lang/String;

    goto :goto_12
.end method

.method private getResources()Landroid/content/res/Resources;
    .registers 5

    .prologue
    .line 395
    const/4 v1, 0x0

    .line 397
    .local v1, "r":Landroid/content/res/Resources;
    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 398
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 406
    :goto_f
    return-object v1

    .line 401
    :cond_10
    :try_start_10
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_1b} :catch_1d

    move-result-object v1

    goto :goto_f

    .line 402
    :catch_1d
    move-exception v0

    .line 403
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_f
.end method

.method private loadThemeAppList()V
    .registers 23

    .prologue
    .line 410
    const/4 v14, 0x0

    .line 411
    .local v14, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    .line 412
    .local v10, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v6, 0x0

    .line 414
    .local v6, "cscFileReader":Ljava/io/BufferedReader;
    const-string v17, "SThemeManager"

    const-string v18, "Theme app list path: /system/csc/theme_app_list.xml"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :try_start_a
    new-instance v5, Ljava/io/File;

    const-string v17, "/system/csc/theme_app_list.xml"

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 418
    .local v5, "cscFile":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v17

    if-eqz v17, :cond_4b

    invoke-virtual {v5}, Ljava/io/File;->length()J
    :try_end_1c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_1c} :catch_90
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_145
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_1c} :catch_170
    .catchall {:try_start_a .. :try_end_1c} :catchall_19b

    move-result-wide v18

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-lez v17, :cond_4b

    .line 420
    :try_start_23
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v17, Ljava/io/InputStreamReader;

    new-instance v18, Ljava/io/FileInputStream;

    const-string v19, "/system/csc/theme_app_list.xml"

    invoke-direct/range {v18 .. v19}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct/range {v17 .. v18}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_36} :catch_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_23 .. :try_end_36} :catch_90
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_36} :catch_145
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_23 .. :try_end_36} :catch_170
    .catchall {:try_start_23 .. :try_end_36} :catchall_19b

    .end local v6    # "cscFileReader":Ljava/io/BufferedReader;
    .local v7, "cscFileReader":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 427
    .end local v7    # "cscFileReader":Ljava/io/BufferedReader;
    .restart local v6    # "cscFileReader":Ljava/io/BufferedReader;
    :goto_37
    if-eqz v6, :cond_4b

    .line 429
    :try_start_39
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v10

    .line 430
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 431
    invoke-virtual {v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v14

    .line 432
    invoke-interface {v14, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_39 .. :try_end_4b} :catch_b9
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_4b} :catch_145
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_39 .. :try_end_4b} :catch_170
    .catchall {:try_start_39 .. :try_end_4b} :catchall_19b

    .line 440
    :cond_4b
    :goto_4b
    if-eqz v14, :cond_84

    .line 441
    :try_start_4d
    const-string v17, "ThemeAppList"

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 443
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    .line 447
    .local v8, "depth":I
    :cond_58
    :goto_58
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v16

    .local v16, "type":I
    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_6c

    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v17

    move/from16 v0, v17

    if-le v0, v8, :cond_7c

    :cond_6c
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_7c

    .line 448
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_bf

    .line 486
    :cond_7c
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, mPackageIconLoaded:Z
    :try_end_84
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4d .. :try_end_84} :catch_90
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_84} :catch_145
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4d .. :try_end_84} :catch_170
    .catchall {:try_start_4d .. :try_end_84} :catchall_19b

    .line 498
    .end local v8    # "depth":I
    .end local v16    # "type":I
    :cond_84
    if-eqz v6, :cond_89

    .line 500
    :try_start_86
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_89} :catch_13f

    .line 506
    .end local v5    # "cscFile":Ljava/io/File;
    :cond_89
    :goto_89
    return-void

    .line 422
    .restart local v5    # "cscFile":Ljava/io/File;
    :catch_8a
    move-exception v9

    .line 423
    .local v9, "e":Ljava/io/FileNotFoundException;
    const/4 v6, 0x0

    .line 424
    :try_start_8c
    invoke-virtual {v9}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_8f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8c .. :try_end_8f} :catch_90
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_145
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8c .. :try_end_8f} :catch_170
    .catchall {:try_start_8c .. :try_end_8f} :catchall_19b

    goto :goto_37

    .line 488
    .end local v5    # "cscFile":Ljava/io/File;
    .end local v9    # "e":Ljava/io/FileNotFoundException;
    :catch_90
    move-exception v9

    .line 489
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_91
    const-string v17, "SThemeManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception during parsing theme app list"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_ae
    .catchall {:try_start_91 .. :try_end_ae} :catchall_19b

    .line 498
    if-eqz v6, :cond_89

    .line 500
    :try_start_b0
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_89

    .line 501
    :catch_b4
    move-exception v9

    .line 502
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_89

    .line 433
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "cscFile":Ljava/io/File;
    :catch_b9
    move-exception v9

    .line 434
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_ba
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 435
    const/4 v14, 0x0

    goto :goto_4b

    .line 452
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v8    # "depth":I
    .restart local v16    # "type":I
    :cond_bf
    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_58

    .line 456
    const/4 v4, 0x0

    .line 457
    .local v4, "className":Ljava/lang/String;
    const/4 v12, 0x0

    .line 459
    .local v12, "iconId":Ljava/lang/String;
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    .line 460
    .local v13, "name":Ljava/lang/String;
    if-eqz v13, :cond_58

    .line 461
    invoke-interface {v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v15

    .line 462
    .local v15, "size":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_d4
    if-ge v11, v15, :cond_12b

    .line 463
    invoke-interface {v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    .line 464
    .local v2, "attrName":Ljava/lang/String;
    invoke-interface {v14, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 466
    .local v3, "attrValue":Ljava/lang/String;
    sget-boolean v17, DBG:Z

    if-eqz v17, :cond_10e

    .line 467
    const-string v17, "SThemeManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Parsing... ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_10e
    if-eqz v2, :cond_11b

    const-string v17, "className"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11b

    .line 471
    move-object v4, v3

    .line 473
    :cond_11b
    if-eqz v2, :cond_128

    const-string v17, "iconId"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_128

    .line 474
    move-object v12, v3

    .line 462
    :cond_128
    add-int/lit8 v11, v11, 0x1

    goto :goto_d4

    .line 478
    .end local v2    # "attrName":Ljava/lang/String;
    .end local v3    # "attrValue":Ljava/lang/String;
    :cond_12b
    const-string v17, "ThemeApp"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_58

    .line 479
    sget-object v17, sPackageIconMap:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_ba .. :try_end_13c} :catch_90
    .catch Ljava/io/IOException; {:try_start_ba .. :try_end_13c} :catch_145
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_ba .. :try_end_13c} :catch_170
    .catchall {:try_start_ba .. :try_end_13c} :catchall_19b

    .line 480
    const/4 v4, 0x0

    .line 481
    goto/16 :goto_58

    .line 501
    .end local v4    # "className":Ljava/lang/String;
    .end local v8    # "depth":I
    .end local v11    # "i":I
    .end local v12    # "iconId":Ljava/lang/String;
    .end local v13    # "name":Ljava/lang/String;
    .end local v15    # "size":I
    .end local v16    # "type":I
    :catch_13f
    move-exception v9

    .line 502
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_89

    .line 491
    .end local v5    # "cscFile":Ljava/io/File;
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_145
    move-exception v9

    .line 492
    .local v9, "e":Ljava/io/IOException;
    :try_start_146
    const-string v17, "SThemeManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception during parsing theme app list"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_163
    .catchall {:try_start_146 .. :try_end_163} :catchall_19b

    .line 498
    if-eqz v6, :cond_89

    .line 500
    :try_start_165
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_165 .. :try_end_168} :catch_16a

    goto/16 :goto_89

    .line 501
    :catch_16a
    move-exception v9

    .line 502
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_89

    .line 494
    .end local v9    # "e":Ljava/lang/Exception;
    :catch_170
    move-exception v9

    .line 495
    .local v9, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_171
    const-string v17, "SThemeManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception during parsing theme app list"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-virtual {v9}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_18e
    .catchall {:try_start_171 .. :try_end_18e} :catchall_19b

    .line 498
    if-eqz v6, :cond_89

    .line 500
    :try_start_190
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_193} :catch_195

    goto/16 :goto_89

    .line 501
    :catch_195
    move-exception v9

    .line 502
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_89

    .line 498
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_19b
    move-exception v17

    if-eqz v6, :cond_1a1

    .line 500
    :try_start_19e
    invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
    :try_end_1a1
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a1} :catch_1a2

    .line 503
    :cond_1a1
    :goto_1a1
    throw v17

    .line 501
    :catch_1a2
    move-exception v9

    .line 502
    .restart local v9    # "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a1
.end method


# virtual methods
.method public getCurrentContext()Landroid/content/Context;
    .registers 6

    .prologue
    .line 368
    const/4 v0, 0x0

    .line 370
    .local v0, "c":Landroid/content/Context;
    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 371
    iget-object v0, p0, mContext:Landroid/content/Context;

    .line 379
    :goto_b
    return-object v0

    .line 374
    :cond_c
    :try_start_c
    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mPackageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_14} :catch_16

    move-result-object v0

    goto :goto_b

    .line 375
    :catch_16
    move-exception v1

    .line 376
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_b
.end method

.method public getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "bitmapId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 230
    invoke-direct {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 231
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_11

    .line 234
    :try_start_7
    const-string v4, "drawable"

    iget-object v5, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 235
    .local v2, "resId":I
    if-nez v2, :cond_12

    .line 246
    .end local v2    # "resId":I
    :cond_11
    :goto_11
    return-object v3

    .line 239
    .restart local v2    # "resId":I
    :cond_12
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_17

    move-result-object v3

    goto :goto_11

    .line 240
    .end local v2    # "resId":I
    :catch_17
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getItemColor(Ljava/lang/String;)I
    .registers 8
    .param p1, "colorId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 255
    invoke-direct {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 256
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_11

    .line 259
    :try_start_7
    const-string v4, "color"

    iget-object v5, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 260
    .local v2, "resId":I
    if-nez v2, :cond_12

    .line 270
    .end local v2    # "resId":I
    :cond_11
    :goto_11
    return v3

    .line 263
    .restart local v2    # "resId":I
    :cond_12
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_15} :catch_17

    move-result v3

    goto :goto_11

    .line 264
    .end local v2    # "resId":I
    :catch_17
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 9
    .param p1, "drawableId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 201
    const/4 v0, 0x0

    .line 203
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-direct {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 204
    .local v2, "r":Landroid/content/res/Resources;
    if-eqz v2, :cond_16

    .line 207
    :try_start_8
    const-string v5, "drawable"

    iget-object v6, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v2, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 208
    .local v3, "resId":I
    if-eqz v3, :cond_17

    .line 210
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_15} :catch_18

    move-result-object v0

    .end local v3    # "resId":I
    :cond_16
    move-object v4, v0

    .line 221
    :cond_17
    :goto_17
    return-object v4

    .line 215
    :catch_18
    move-exception v1

    .line 216
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public getItemText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .registers 9
    .param p1, "textId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 174
    const/4 v3, 0x0

    .line 176
    .local v3, "text":Ljava/lang/CharSequence;
    invoke-direct {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 177
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_17

    .line 180
    :try_start_8
    const-string/jumbo v5, "string"

    iget-object v6, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 181
    .local v2, "resId":I
    if-eqz v2, :cond_18

    .line 182
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_16} :catch_19

    move-result-object v3

    .end local v2    # "resId":I
    :cond_17
    move-object v4, v3

    .line 192
    :cond_18
    :goto_18
    return-object v4

    .line 186
    :catch_19
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public getItemXml(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    .registers 8
    .param p1, "xmlId"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 345
    invoke-direct {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 346
    .local v1, "r":Landroid/content/res/Resources;
    if-eqz v1, :cond_12

    .line 349
    :try_start_7
    const-string/jumbo v4, "xml"

    iget-object v5, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 350
    .local v2, "resId":I
    if-nez v2, :cond_13

    .line 360
    .end local v2    # "resId":I
    :cond_12
    :goto_12
    return-object v3

    .line 353
    .restart local v2    # "resId":I
    :cond_13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_16} :catch_18

    move-result-object v3

    goto :goto_12

    .line 354
    .end local v2    # "resId":I
    :catch_18
    move-exception v0

    .line 355
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public getPackageIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 280
    iget-boolean v1, p0, mPackageIconLoaded:Z

    if-nez v1, :cond_7

    .line 281
    invoke-direct {p0}, loadThemeAppList()V

    .line 284
    :cond_7
    sget-object v1, sPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 285
    .local v0, "iconId":Ljava/lang/String;
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_35

    const-string v1, "SThemeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageIcon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iconId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_35
    if-eqz v0, :cond_3c

    .line 287
    invoke-virtual {p0, v0}, getItemDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 290
    :goto_3b
    return-object v1

    :cond_3c
    const/4 v1, 0x0

    goto :goto_3b
.end method

.method public getPackageIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-boolean v1, p0, mPackageIconLoaded:Z

    if-nez v1, :cond_7

    .line 301
    invoke-direct {p0}, loadThemeAppList()V

    .line 304
    :cond_7
    sget-object v1, sPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 305
    .local v0, "iconId":Ljava/lang/String;
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_35

    const-string v1, "SThemeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPackageIconBitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", iconId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_35
    if-eqz v0, :cond_3c

    .line 307
    invoke-virtual {p0, v0}, getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 310
    :goto_3b
    return-object v1

    :cond_3c
    const/4 v1, 0x0

    goto :goto_3b
.end method

.method public getPackageIconBitmapStartsWith(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 319
    iget-boolean v3, p0, mPackageIconLoaded:Z

    if-nez v3, :cond_7

    .line 320
    invoke-direct {p0}, loadThemeAppList()V

    .line 323
    :cond_7
    const/4 v2, 0x0

    .line 324
    .local v2, "iconId":Ljava/lang/String;
    sget-object v3, sPackageIconMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 325
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "iconId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 331
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "iconId":Ljava/lang/String;
    :cond_30
    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_56

    const-string v3, "SThemeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPackageIconBitmapStartsWith "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", iconId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_56
    if-eqz v2, :cond_5d

    .line 333
    invoke-virtual {p0, v2}, getItemBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 336
    :goto_5c
    return-object v3

    :cond_5d
    const/4 v3, 0x0

    goto :goto_5c
.end method

.method public getVersionFromFeature(I)Ljava/lang/String;
    .registers 9
    .param p1, "type"    # I

    .prologue
    .line 134
    const-string v3, "0"

    .line 135
    .local v3, "v":Ljava/lang/String;
    const-string v2, ""

    .line 136
    .local v2, "typeString":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v4

    const-string v5, "SEC_FLOATING_FEATURE_COMMON_CONFIG_CHANGEABLE_UI"

    const-string v6, "0"

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/feature/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "feature":Ljava/lang/String;
    if-nez p1, :cond_4d

    .line 140
    const-string/jumbo v2, "theme"

    .line 145
    :cond_15
    :goto_15
    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4c

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 148
    .local v1, "index":I
    const/4 v4, -0x1

    if-le v1, v4, :cond_4c

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_4c

    .line 149
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    .line 152
    .end local v1    # "index":I
    :cond_4c
    return-object v3

    .line 141
    :cond_4d
    const/4 v4, 0x1

    if-ne p1, v4, :cond_15

    .line 142
    const-string v2, "festival"

    goto :goto_15
.end method

.method public resetTheme()V
    .registers 2

    .prologue
    .line 160
    invoke-direct {p0}, getCurrentResourcePackage()V

    .line 162
    iget-object v0, p0, mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 164
    :cond_f
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mPackageName:Ljava/lang/String;

    .line 166
    :cond_17
    return-void
.end method
