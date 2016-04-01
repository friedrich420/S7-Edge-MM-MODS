.class Lcom/android/server/enterprise/general/MiscPolicy$SystemFontChanger;
.super Ljava/lang/Object;
.source "MiscPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/general/MiscPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemFontChanger"
.end annotation


# static fields
.field public static final KEY_PREFERENCE:Ljava/lang/String; = "MONOTYPE"


# instance fields
.field mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

.field final synthetic this$0:Lcom/android/server/enterprise/general/MiscPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V
    .registers 3

    .prologue
    .line 1340
    iput-object p1, p0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1342
    const/4 v0, 0x0

    iput-object v0, p0, mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/general/MiscPolicy;Lcom/android/server/enterprise/general/MiscPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/general/MiscPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/general/MiscPolicy$1;

    .prologue
    .line 1340
    invoke-direct {p0, p1}, <init>(Lcom/android/server/enterprise/general/MiscPolicy;)V

    return-void
.end method

.method private changeFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 27
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 1401
    const/4 v15, 0x0

    .line 1421
    .local v15, "ret":Z
    new-instance v7, Lcom/android/server/enterprise/general/FontWriter;

    invoke-direct {v7}, Lcom/android/server/enterprise/general/FontWriter;-><init>()V

    .line 1422
    .local v7, "fontWriter":Lcom/android/server/enterprise/general/FontWriter;
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1425
    .local v13, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    .line 1426
    .local v11, "index":I
    invoke-direct/range {p0 .. p0}, getFontString()[Ljava/lang/String;

    move-result-object v12

    .line 1428
    .local v12, "installedFontList":[Ljava/lang/String;
    if-nez v12, :cond_23

    .line 1429
    const-string v21, "MiscPolicy"

    const-string v22, "changeFont():Installed font list is null"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    .end local v15    # "ret":Z
    :cond_22
    :goto_22
    return v15

    .line 1433
    .restart local v15    # "ret":Z
    :cond_23
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_24
    array-length v0, v12

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v9, v0, :cond_53

    .line 1434
    aget-object v21, v12, v9

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_9f

    .line 1435
    move v11, v9

    .line 1436
    const-string v21, "MiscPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "index"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1441
    :cond_53
    const-string/jumbo v21, "default"

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_a2

    .line 1443
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    const-string/jumbo v22, "sans.loc"

    const-string/jumbo v23, "default"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    aget-object v21, v12, v11

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, savePreferences(Ljava/lang/String;I)V

    .line 1446
    const-string v21, "MiscPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "default font is selected..."

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1447
    const/4 v15, 0x1

    goto :goto_22

    .line 1433
    :cond_9f
    add-int/lit8 v9, v9, 0x1

    goto :goto_24

    .line 1450
    :cond_a2
    move-object/from16 v0, p0

    iget-object v0, v0, mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFinder;->findMatchingTypefaceByName(Ljava/lang/String;)Lcom/android/server/enterprise/general/Typeface;

    move-result-object v16

    .line 1451
    .local v16, "sansTypeface":Lcom/android/server/enterprise/general/Typeface;
    if-nez v16, :cond_bb

    .line 1452
    const-string v21, "MiscPolicy"

    const-string v22, "change font failed"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    .line 1456
    :cond_bb
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/general/Typeface;->getFontPackageName()Ljava/lang/String;

    move-result-object p2

    .line 1457
    if-eqz p2, :cond_cd

    const-string v21, "com.monotype.android.font."

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_22

    .line 1460
    :cond_cd
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v17

    .line 1463
    .local v17, "selectedFont":Ljava/lang/String;
    const-string v21, ".xml"

    const-string v22, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1465
    .local v8, "fontdir":Ljava/lang/String;
    const-string v21, " "

    const-string v22, "-"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1467
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v0, v8}, Lcom/android/server/enterprise/general/FontWriter;->createFontDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    .line 1468
    .local v6, "fontDir":Ljava/io/File;
    if-nez v6, :cond_108

    .line 1469
    const-string v21, "MiscPolicy"

    const-string/jumbo v22, "create fontDir object is null "

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const/4 v15, 0x0

    goto/16 :goto_22

    .line 1475
    :cond_108
    const/16 v20, 0x0

    .line 1476
    .local v20, "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    if-eqz v16, :cond_18e

    .line 1477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 1478
    .local v18, "token":J
    const/4 v9, 0x0

    :goto_111
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_18b

    .line 1479
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    check-cast v20, Lcom/android/server/enterprise/general/TypefaceFile;

    .line 1483
    .restart local v20    # "tpf":Lcom/android/server/enterprise/general/TypefaceFile;
    :try_start_12d
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 1484
    .local v14, "res":Landroid/content/res/Resources;
    invoke-virtual {v14}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    .line 1486
    .local v4, "assetManager":Landroid/content/res/AssetManager;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "fonts/"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/general/TypefaceFile;->getFileName()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v10

    .line 1487
    .local v10, "in":Ljava/io/InputStream;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/enterprise/general/TypefaceFile;->getDroidName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v7, v6, v10, v0}, Lcom/android/server/enterprise/general/FontWriter;->copyFontFile(Ljava/io/File;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_12d .. :try_end_15e} :catch_161

    .line 1478
    add-int/lit8 v9, v9, 0x1

    goto :goto_111

    .line 1489
    .end local v4    # "assetManager":Landroid/content/res/AssetManager;
    .end local v10    # "in":Ljava/io/InputStream;
    .end local v14    # "res":Landroid/content/res/Resources;
    :catch_161
    move-exception v5

    .line 1490
    .local v5, "ex":Ljava/lang/Exception;
    const-string v21, "MiscPolicy"

    const-string v22, "changeFont():Exception"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1491
    const-string v21, "MiscPolicy"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Exception"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1492
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 1493
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_22

    .line 1497
    .end local v5    # "ex":Ljava/lang/Exception;
    :cond_18b
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1500
    .end local v18    # "token":J
    :cond_18e
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v21

    const-string/jumbo v22, "sans.loc"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v7, v0, v1, v2}, Lcom/android/server/enterprise/general/FontWriter;->writeLoc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1501
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/enterprise/general/Typeface;->getTypefaceFilename()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v11}, savePreferences(Ljava/lang/String;I)V

    .line 1502
    const-string v21, "MiscPolicy"

    const-string v22, "change font:Done"

    invoke-static/range {v21 .. v22}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1503
    const/4 v15, 0x1

    goto/16 :goto_22
.end method

.method private getFontString()[Ljava/lang/String;
    .registers 5

    .prologue
    .line 1580
    const/4 v2, 0x0

    .line 1581
    .local v2, "retString":[Ljava/lang/String;
    invoke-direct {p0}, getFontsVector()Ljava/util/Vector;

    move-result-object v0

    .line 1582
    .local v0, "fontNames":Ljava/util/Vector;
    if-nez v0, :cond_9

    .line 1583
    const/4 v3, 0x0

    .line 1590
    :goto_8
    return-object v3

    .line 1584
    :cond_9
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-array v2, v3, [Ljava/lang/String;

    .line 1587
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_10
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_21

    .line 1588
    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v2, v1

    .line 1587
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_21
    move-object v3, v2

    .line 1590
    goto :goto_8
.end method

.method private getFontsVector()Ljava/util/Vector;
    .registers 14

    .prologue
    .line 1594
    const/4 v12, 0x0

    iput-object v12, p0, mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1595
    new-instance v12, Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-direct {v12}, Lcom/android/server/enterprise/general/TypefaceFinder;-><init>()V

    iput-object v12, p0, mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    .line 1597
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 1599
    .local v4, "fontPackageNames":Ljava/util/Vector;
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 1601
    .local v2, "fontNames":Ljava/util/Vector;
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 1602
    .local v9, "typefaceFiles":Ljava/util/Vector;
    const/4 v1, 0x0

    .line 1604
    .local v1, "fontAssetManager":Landroid/content/res/AssetManager;
    const/4 v7, 0x0

    .line 1605
    .local v7, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 1606
    .local v6, "installedApplications":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v12, p0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v12}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1607
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1609
    .local v10, "token":J
    const/16 v12, 0x80

    :try_start_2c
    invoke-virtual {v7, v12}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v6

    .line 1612
    const/4 v3, 0x0

    .line 1613
    .local v3, "fontPackageName":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_32
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_6a

    .line 1614
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ApplicationInfo;

    iget-object v3, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1615
    const-string v12, "com.monotype.android.font.droidserifitalic"

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4b

    .line 1613
    :cond_48
    :goto_48
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 1618
    :cond_4b
    const-string v12, "com.monotype.android.font."

    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_48

    .line 1619
    invoke-virtual {v7, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v8

    .line 1620
    .local v8, "res":Landroid/content/res/Resources;
    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 1621
    iget-object v12, p0, mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v12, v1, v3}, Lcom/android/server/enterprise/general/TypefaceFinder;->findTypefaces(Landroid/content/res/AssetManager;Ljava/lang/String;)Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_60} :catch_61
    .catchall {:try_start_2c .. :try_end_60} :catchall_73

    goto :goto_48

    .line 1626
    .end local v3    # "fontPackageName":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v8    # "res":Landroid/content/res/Resources;
    :catch_61
    move-exception v0

    .line 1627
    .local v0, "e":Ljava/lang/Exception;
    :try_start_62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_65
    .catchall {:try_start_62 .. :try_end_65} :catchall_73

    .line 1628
    const/4 v2, 0x0

    .line 1630
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1632
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_69
    return-object v2

    .line 1624
    .restart local v3    # "fontPackageName":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_6a
    :try_start_6a
    iget-object v12, p0, mTypefaceFinder:Lcom/android/server/enterprise/general/TypefaceFinder;

    invoke-virtual {v12, v2, v9, v4}, Lcom/android/server/enterprise/general/TypefaceFinder;->getSansEntries(Ljava/util/Vector;Ljava/util/Vector;Ljava/util/Vector;)V
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_6f} :catch_61
    .catchall {:try_start_6a .. :try_end_6f} :catchall_73

    .line 1630
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_69

    .end local v3    # "fontPackageName":Ljava/lang/String;
    .end local v5    # "i":I
    :catchall_73
    move-exception v12

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v12
.end method


# virtual methods
.method public getActiveFontPosition()I
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 1542
    const/4 v2, 0x0

    .line 1543
    .local v2, "map":Ljava/util/Map;
    const/4 v4, 0x0

    .line 1546
    .local v4, "str":Ljava/io/BufferedInputStream;
    :try_start_3
    iget-object v8, p0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.settings"

    const/4 v10, 0x2

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v3

    .line 1548
    .local v3, "settingContext":Landroid/content/Context;
    const-string/jumbo v8, "prefs"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSharedPrefsFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1550
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 1551
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v9, 0x4000

    invoke-direct {v5, v8, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_29} :catch_44
    .catchall {:try_start_3 .. :try_end_29} :catchall_50

    .line 1552
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .local v5, "str":Ljava/io/BufferedInputStream;
    :try_start_29
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2c} :catch_5e
    .catchall {:try_start_29 .. :try_end_2c} :catchall_5b

    move-result-object v2

    move-object v4, v5

    .line 1558
    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    :cond_2e
    if-eqz v4, :cond_33

    .line 1559
    :try_start_30
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_57

    .line 1566
    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "settingContext":Landroid/content/Context;
    :cond_33
    :goto_33
    if-eqz v2, :cond_43

    .line 1567
    const-string v8, "SavedClickedItem"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1568
    .local v6, "v":Ljava/lang/Integer;
    if-eqz v6, :cond_43

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1571
    .end local v6    # "v":Ljava/lang/Integer;
    :cond_43
    return v7

    .line 1554
    :catch_44
    move-exception v0

    .line 1555
    .local v0, "e":Ljava/lang/Exception;
    :goto_45
    :try_start_45
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_50

    .line 1558
    if-eqz v4, :cond_33

    .line 1559
    :try_start_4a
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_4e

    goto :goto_33

    .line 1561
    :catch_4e
    move-exception v8

    goto :goto_33

    .line 1557
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_50
    move-exception v7

    .line 1558
    :goto_51
    if-eqz v4, :cond_56

    .line 1559
    :try_start_53
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_59

    .line 1563
    :cond_56
    :goto_56
    throw v7

    .line 1561
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "settingContext":Landroid/content/Context;
    :catch_57
    move-exception v8

    goto :goto_33

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "settingContext":Landroid/content/Context;
    :catch_59
    move-exception v8

    goto :goto_56

    .line 1557
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "settingContext":Landroid/content/Context;
    .restart local v5    # "str":Ljava/io/BufferedInputStream;
    :catchall_5b
    move-exception v7

    move-object v4, v5

    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    goto :goto_51

    .line 1554
    .end local v4    # "str":Ljava/io/BufferedInputStream;
    .restart local v5    # "str":Ljava/io/BufferedInputStream;
    :catch_5e
    move-exception v0

    move-object v4, v5

    .end local v5    # "str":Ljava/io/BufferedInputStream;
    .restart local v4    # "str":Ljava/io/BufferedInputStream;
    goto :goto_45
.end method

.method public getSystemActiveFont()Ljava/lang/String;
    .registers 6

    .prologue
    .line 1507
    const-string v2, "MiscPolicy"

    const-string/jumbo v3, "getSystemActiveFont():getting active system font:"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    invoke-virtual {p0}, getActiveFontPosition()I

    move-result v1

    .line 1509
    .local v1, "position":I
    const-string v2, "MiscPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getActiveFontPosition():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    invoke-virtual {p0}, getSystemFonts()[Ljava/lang/String;

    move-result-object v0

    .line 1511
    .local v0, "fonts":[Ljava/lang/String;
    if-eqz v0, :cond_2e

    .line 1512
    aget-object v2, v0, v1

    .line 1514
    :goto_2d
    return-object v2

    :cond_2e
    const/4 v2, 0x0

    goto :goto_2d
.end method

.method public getSystemFonts()[Ljava/lang/String;
    .registers 3

    .prologue
    .line 1575
    const-string v0, "MiscPolicy"

    const-string/jumbo v1, "getSystemFonts():getting all system fonts"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1576
    invoke-direct {p0}, getFontString()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected savePreferences(Ljava/lang/String;I)V
    .registers 13
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    .line 1636
    const/4 v3, 0x0

    .line 1637
    .local v3, "mode":I
    const/4 v6, 0x0

    .line 1640
    .local v6, "settingContext":Landroid/content/Context;
    :try_start_2
    iget-object v7, p0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "com.android.settings"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_19

    move-result-object v6

    .line 1646
    :goto_f
    if-nez v6, :cond_1e

    .line 1647
    const-string v7, "MiscPolicy"

    const-string v8, "Setting Context is Null"

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1665
    :goto_18
    return-void

    .line 1642
    :catch_19
    move-exception v0

    .line 1643
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f

    .line 1651
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1e
    const-string/jumbo v7, "prefs"

    invoke-virtual {v6, v7, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1654
    .local v4, "mySharedPreference":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1655
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v7, "SavedClickedItem"

    invoke-interface {v1, v7, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1656
    const-string/jumbo v7, "selectedFont"

    invoke-interface {v1, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1658
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1660
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_preferences"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1661
    .local v5, "prefName":Ljava/lang/String;
    invoke-virtual {v6, v5, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 1662
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1663
    .local v2, "editor1":Landroid/content/SharedPreferences$Editor;
    const-string v7, "MONOTYPE"

    invoke-interface {v2, v7, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1664
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_18
.end method

.method public setSystemActiveFont(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 23
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "apkPath"    # Ljava/lang/String;

    .prologue
    .line 1344
    const-string v18, "MiscPolicy"

    const-string/jumbo v19, "setSystemActiveFont():Start"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1345
    const/4 v14, 0x0

    .line 1347
    .local v14, "ret":Z
    if-nez p1, :cond_16

    .line 1348
    const-string v18, "MiscPolicy"

    const-string/jumbo v19, "setSystemActiveFont():Invalid input"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v18, v14

    .line 1397
    :goto_15
    return v18

    .line 1352
    :cond_16
    invoke-direct/range {p0 .. p2}, changeFont(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 1353
    if-nez v14, :cond_1f

    .line 1354
    const/16 v18, 0x0

    goto :goto_15

    .line 1356
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1358
    .local v16, "token":J
    :try_start_23
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1359
    .local v5, "am":Landroid/app/IActivityManager;
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 1360
    .local v6, "config":Landroid/content/res/Configuration;
    new-instance v13, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-direct {v13, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 1361
    .local v13, "randomizer":Ljava/util/Random;
    const/4 v12, 0x0

    .line 1362
    .local v12, "min":I
    const/16 v9, 0x2710

    .line 1366
    .local v9, "max":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(I)I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    iput v0, v6, Landroid/content/res/Configuration;->FlipFont:I

    .line 1367
    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_4a} :catch_89
    .catchall {:try_start_23 .. :try_end_4a} :catchall_99

    .line 1375
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1380
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 1381
    .local v10, "identity":J
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/android/server/enterprise/general/MiscPolicy;

    move-object/from16 v18, v0

    # getter for: Lcom/android/server/enterprise/general/MiscPolicy;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/enterprise/general/MiscPolicy;->access$500(Lcom/android/server/enterprise/general/MiscPolicy;)Landroid/content/Context;

    move-result-object v18

    const-string v19, "activity"

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 1383
    .local v3, "activityManager":Landroid/app/ActivityManager;
    const/16 v18, 0x32

    move/from16 v0, v18

    invoke-virtual {v3, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 1385
    .local v4, "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_9e

    .line 1386
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_71
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 1387
    .local v2, "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v0, v2, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    .line 1391
    .local v15, "s":Ljava/lang/String;
    invoke-virtual {v3, v15}, Landroid/app/ActivityManager;->restartPackage(Ljava/lang/String;)V

    goto :goto_71

    .line 1371
    .end local v2    # "aTask":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v4    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v5    # "am":Landroid/app/IActivityManager;
    .end local v6    # "config":Landroid/content/res/Configuration;
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "max":I
    .end local v10    # "identity":J
    .end local v12    # "min":I
    .end local v13    # "randomizer":Ljava/util/Random;
    .end local v15    # "s":Ljava/lang/String;
    :catch_89
    move-exception v7

    .line 1372
    .local v7, "e":Ljava/lang/Exception;
    :try_start_8a
    const-string v18, "MiscPolicy"

    const-string/jumbo v19, "setSystemActiveFont():Exception"

    invoke-static/range {v18 .. v19}, Lcom/android/server/enterprise/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_92
    .catchall {:try_start_8a .. :try_end_92} :catchall_99

    .line 1373
    const/16 v18, 0x0

    .line 1375
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_15

    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_99
    move-exception v18

    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 1396
    .restart local v3    # "activityManager":Landroid/app/ActivityManager;
    .restart local v4    # "allTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .restart local v5    # "am":Landroid/app/IActivityManager;
    .restart local v6    # "config":Landroid/content/res/Configuration;
    .restart local v9    # "max":I
    .restart local v10    # "identity":J
    .restart local v12    # "min":I
    .restart local v13    # "randomizer":Ljava/util/Random;
    :cond_9e
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move/from16 v18, v14

    .line 1397
    goto/16 :goto_15
.end method
