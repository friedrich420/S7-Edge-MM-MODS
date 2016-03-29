.class public Lcom/android/settings/MasterClear;
.super Lcom/android/settings/InstrumentedFragment;
.source "MasterClear.java"


# static fields
.field private static final mAppLabelComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;


# instance fields
.field private mCanEraseExternalOnFuseSystem:Z

.field private mContentView:Landroid/view/View;

.field private mExternalStorage:Landroid/widget/CheckBox;

.field private mExternalStorageContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mPinConfirmed:Z

.field private mStrSdVolumeId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 566
    new-instance v0, Lcom/android/settings/MasterClear$4;

    invoke-direct {v0}, Lcom/android/settings/MasterClear$4;-><init>()V

    sput-object v0, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/InstrumentedFragment;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    .line 171
    new-instance v0, Lcom/android/settings/MasterClear$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClear$1;-><init>(Lcom/android/settings/MasterClear;)V

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/MasterClear;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClear;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;
    .param p1, "x1"    # I

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClear;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClear;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/MasterClear;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private addDescriptionForRemovingPreloadApp()V
    .locals 37

    .prologue
    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f0d034e

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 463
    .local v12, "description":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v34, v0

    const v35, 0x7f0d034f

    invoke-virtual/range {v34 .. v35}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 464
    .local v6, "apps":Landroid/widget/LinearLayout;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 466
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v11

    .line 468
    .local v11, "context":Landroid/content/Context;
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v31, "pkg_names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v22, 0x0

    .line 470
    .local v22, "instream":Ljava/io/InputStream;
    const/4 v8, 0x0

    .line 472
    .local v8, "buffreader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v23, Ljava/io/FileInputStream;

    new-instance v34, Ljava/io/File;

    const-string v35, "/system/etc/removable_preload.txt"

    invoke-direct/range {v34 .. v35}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v34

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 473
    .end local v22    # "instream":Ljava/io/InputStream;
    .local v23, "instream":Ljava/io/InputStream;
    :try_start_1
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v34, Ljava/io/InputStreamReader;

    move-object/from16 v0, v34

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v34

    invoke-direct {v9, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 476
    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .local v9, "buffreader":Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v26

    .local v26, "line":Ljava/lang/String;
    if-eqz v26, :cond_5

    .line 477
    const-string v34, "name="

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v34

    if-eqz v34, :cond_1

    .line 478
    const-string v34, "name=\'"

    const-string v35, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    const-string v35, "\'"

    const-string v36, ""

    invoke-virtual/range {v34 .. v36}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v31

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 481
    .end local v26    # "line":Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object v8, v9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .line 482
    .end local v23    # "instream":Ljava/io/InputStream;
    .local v14, "e1":Ljava/io/FileNotFoundException;
    .restart local v22    # "instream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 487
    if-eqz v8, :cond_2

    :try_start_4
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 492
    :cond_2
    :goto_2
    if-eqz v22, :cond_3

    :try_start_5
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 498
    .end local v14    # "e1":Ljava/io/FileNotFoundException;
    :cond_3
    :goto_3
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 499
    .local v5, "N":I
    if-nez v5, :cond_b

    .line 564
    :cond_4
    :goto_4
    return-void

    .line 487
    .end local v5    # "N":I
    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v23    # "instream":Ljava/io/InputStream;
    .restart local v26    # "line":Ljava/lang/String;
    :cond_5
    if-eqz v9, :cond_6

    :try_start_6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 492
    :cond_6
    :goto_5
    if-eqz v23, :cond_7

    :try_start_7
    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_7
    move-object v8, v9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .line 495
    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto :goto_3

    .line 488
    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catch_1
    move-exception v16

    .line 489
    .local v16, "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 493
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catch_2
    move-exception v15

    .line 494
    .local v15, "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    move-object v8, v9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .line 496
    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto :goto_3

    .line 488
    .end local v15    # "e_input":Ljava/io/IOException;
    .end local v26    # "line":Ljava/lang/String;
    .restart local v14    # "e1":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v16

    .line 489
    .restart local v16    # "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 493
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catch_4
    move-exception v15

    .line 494
    .restart local v15    # "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 483
    .end local v14    # "e1":Ljava/io/FileNotFoundException;
    .end local v15    # "e_input":Ljava/io/IOException;
    :catch_5
    move-exception v13

    .line 484
    .local v13, "e":Ljava/io/IOException;
    :goto_6
    :try_start_8
    invoke-virtual {v13}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 487
    if-eqz v8, :cond_8

    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 492
    :cond_8
    :goto_7
    if-eqz v22, :cond_3

    :try_start_a
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_3

    .line 493
    :catch_6
    move-exception v15

    .line 494
    .restart local v15    # "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 488
    .end local v15    # "e_input":Ljava/io/IOException;
    :catch_7
    move-exception v16

    .line 489
    .restart local v16    # "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 486
    .end local v13    # "e":Ljava/io/IOException;
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catchall_0
    move-exception v34

    .line 487
    :goto_8
    if-eqz v8, :cond_9

    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    .line 492
    :cond_9
    :goto_9
    if-eqz v22, :cond_a

    :try_start_c
    invoke-virtual/range {v22 .. v22}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 495
    :cond_a
    :goto_a
    throw v34

    .line 488
    :catch_8
    move-exception v16

    .line 489
    .restart local v16    # "e_reader":Ljava/io/IOException;
    invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 493
    .end local v16    # "e_reader":Ljava/io/IOException;
    :catch_9
    move-exception v15

    .line 494
    .restart local v15    # "e_input":Ljava/io/IOException;
    invoke-virtual {v15}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 503
    .end local v15    # "e_input":Ljava/io/IOException;
    .restart local v5    # "N":I
    :cond_b
    const-string v34, "layout_inflater"

    move-object/from16 v0, v34

    invoke-virtual {v11, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/LayoutInflater;

    .line 507
    .local v21, "inflater":Landroid/view/LayoutInflater;
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v33, "sec_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 509
    .local v29, "other_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_b
    move/from16 v0, v18

    if-ge v0, v5, :cond_11

    .line 510
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    .line 512
    .local v32, "pm":Landroid/content/pm/PackageManager;
    :try_start_d
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    const/16 v35, 0x0

    move-object/from16 v0, v32

    move-object/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_a

    move-result-object v30

    .line 517
    .local v30, "pkg_info":Landroid/content/pm/PackageInfo;
    const/16 v20, 0x0

    .line 518
    .local v20, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    const/16 v35, 0x1

    const/16 v36, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    move/from16 v2, v35

    move/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 521
    const v34, 0x7f040137

    const/16 v35, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    move/from16 v2, v35

    invoke-virtual {v0, v1, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 523
    .local v10, "child":Landroid/widget/TextView;
    move-object/from16 v0, v30

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    if-eqz v20, :cond_c

    .line 525
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    const v35, 0x7f0c00ac

    invoke-virtual/range {v34 .. v35}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    .line 526
    .local v17, "height":I
    const/16 v34, 0x0

    const/16 v35, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v34

    move/from16 v2, v35

    move/from16 v3, v17

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 527
    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, v34

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 530
    .end local v17    # "height":I
    :cond_c
    move-object/from16 v0, v31

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljava/lang/String;

    const-string v35, "\\."

    invoke-virtual/range {v34 .. v35}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 531
    .local v28, "names":[Ljava/lang/String;
    const/16 v24, 0x0

    .line 532
    .local v24, "is_sec_apps":Z
    move-object/from16 v7, v28

    .local v7, "arr$":[Ljava/lang/String;
    array-length v0, v7

    move/from16 v25, v0

    .local v25, "len$":I
    const/16 v19, 0x0

    .local v19, "i$":I
    :goto_c
    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_e

    aget-object v27, v7, v19

    .line 533
    .local v27, "name":Ljava/lang/String;
    const-string v34, "sec"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-nez v34, :cond_d

    const-string v34, "samsung"

    move-object/from16 v0, v34

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 534
    :cond_d
    const/16 v24, 0x1

    .line 538
    .end local v27    # "name":Ljava/lang/String;
    :cond_e
    if-eqz v24, :cond_10

    .line 539
    move-object/from16 v0, v33

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 509
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "child":Landroid/widget/TextView;
    .end local v19    # "i$":I
    .end local v20    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "is_sec_apps":Z
    .end local v25    # "len$":I
    .end local v28    # "names":[Ljava/lang/String;
    .end local v30    # "pkg_info":Landroid/content/pm/PackageInfo;
    :goto_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_b

    .line 513
    :catch_a
    move-exception v13

    .line 514
    .local v13, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_d

    .line 532
    .end local v13    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "arr$":[Ljava/lang/String;
    .restart local v10    # "child":Landroid/widget/TextView;
    .restart local v19    # "i$":I
    .restart local v20    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v24    # "is_sec_apps":Z
    .restart local v25    # "len$":I
    .restart local v27    # "name":Ljava/lang/String;
    .restart local v28    # "names":[Ljava/lang/String;
    .restart local v30    # "pkg_info":Landroid/content/pm/PackageInfo;
    :cond_f
    add-int/lit8 v19, v19, 0x1

    goto :goto_c

    .line 541
    .end local v27    # "name":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 545
    .end local v7    # "arr$":[Ljava/lang/String;
    .end local v10    # "child":Landroid/widget/TextView;
    .end local v19    # "i$":I
    .end local v20    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v24    # "is_sec_apps":Z
    .end local v25    # "len$":I
    .end local v28    # "names":[Ljava/lang/String;
    .end local v30    # "pkg_info":Landroid/content/pm/PackageInfo;
    .end local v32    # "pm":Landroid/content/pm/PackageManager;
    :cond_11
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-nez v34, :cond_12

    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v34

    if-eqz v34, :cond_4

    .line 549
    :cond_12
    sget-object v34, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    invoke-static/range {v33 .. v34}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 550
    sget-object v34, Lcom/android/settings/MasterClear;->mAppLabelComparator:Ljava/util/Comparator;

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 551
    if-eqz v6, :cond_14

    .line 552
    const/16 v18, 0x0

    :goto_e
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_13

    .line 553
    move-object/from16 v0, v33

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 552
    add-int/lit8 v18, v18, 0x1

    goto :goto_e

    .line 555
    :cond_13
    const/16 v18, 0x0

    :goto_f
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->size()I

    move-result v34

    move/from16 v0, v18

    move/from16 v1, v34

    if-ge v0, v1, :cond_14

    .line 556
    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/view/View;

    move-object/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 555
    add-int/lit8 v18, v18, 0x1

    goto :goto_f

    .line 559
    :cond_14
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    .line 560
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->clear()V

    .line 562
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 563
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 486
    .end local v5    # "N":I
    .end local v18    # "i":I
    .end local v21    # "inflater":Landroid/view/LayoutInflater;
    .end local v22    # "instream":Ljava/io/InputStream;
    .end local v29    # "other_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .end local v33    # "sec_apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/TextView;>;"
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catchall_1
    move-exception v34

    move-object/from16 v22, v23

    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto/16 :goto_8

    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catchall_2
    move-exception v34

    move-object v8, v9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto/16 :goto_8

    .line 483
    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catch_b
    move-exception v13

    move-object/from16 v22, v23

    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto/16 :goto_6

    .end local v8    # "buffreader":Ljava/io/BufferedReader;
    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catch_c
    move-exception v13

    move-object v8, v9

    .end local v9    # "buffreader":Ljava/io/BufferedReader;
    .restart local v8    # "buffreader":Ljava/io/BufferedReader;
    move-object/from16 v22, v23

    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 481
    :catch_d
    move-exception v14

    goto/16 :goto_1

    .end local v22    # "instream":Ljava/io/InputStream;
    .restart local v23    # "instream":Ljava/io/InputStream;
    :catch_e
    move-exception v14

    move-object/from16 v22, v23

    .end local v23    # "instream":Ljava/io/InputStream;
    .restart local v22    # "instream":Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method private checkReactivationLock()Z
    .locals 5

    .prologue
    .line 607
    const/4 v1, 0x0

    .line 608
    .local v1, "ret":Z
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 609
    sget-object v2, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {v2}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    .line 610
    .local v0, "lmmFlag":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 611
    const/4 v1, 0x1

    .line 616
    const-string v2, "MasterClear"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LMM[getReqiredAuthFlag] in Check= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "lmmFlag":I
    :cond_0
    move v2, v1

    .line 619
    :goto_0
    return v2

    .line 614
    .restart local v0    # "lmmFlag":I
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private establishInitialState()V
    .locals 21

    .prologue
    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0350

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Button;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mInitiateListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d034a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d034b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    .line 237
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v10

    .line 238
    .local v10, "isExtStorageEmulated":Z
    if-nez v10, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v18

    if-nez v18, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MasterClear;->isExtStorageEncrypted()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 240
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 242
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0349

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 243
    .local v7, "externalOption":Landroid/widget/TextView;
    const/16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0344

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 246
    .local v5, "externalAlsoErased":Landroid/widget/TextView;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e073f

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e0740

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e0741

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e0742

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e0743

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e0744

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "descSummary":Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e073e

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 257
    .local v8, "googleSummary":Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 258
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_0
    const-string v18, "ro.sec.fle.encryption"

    const-string v19, "false"

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "true"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0345

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 266
    .local v6, "externalAlsoErasedSdCardKey":Landroid/widget/TextView;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "\u2022 "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0e01af

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "encryptedSdcardDesc":Ljava/lang/String;
    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 274
    .end local v4    # "encryptedSdcardDesc":Ljava/lang/String;
    .end local v6    # "externalAlsoErasedSdCardKey":Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    if-nez v10, :cond_8

    const/16 v18, 0x1

    :goto_1
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 285
    .end local v3    # "descSummary":Ljava/lang/String;
    .end local v5    # "externalAlsoErased":Landroid/widget/TextView;
    .end local v7    # "externalOption":Landroid/widget/TextView;
    .end local v8    # "googleSummary":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "user"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/UserManager;

    .line 286
    .local v15, "um":Landroid/os/UserManager;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/MasterClear;->loadAccountList(Landroid/os/UserManager;)V

    .line 289
    const-string v18, "ATT"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "AIO"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isSprModel()Z

    move-result v18

    if-nez v18, :cond_2

    const-string v18, "VZW"

    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    :cond_2
    if-eqz v10, :cond_5

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d034c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 291
    .local v12, "mExternalTitle":Landroid/widget/TextView;
    const v18, 0x7f0e067a

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d034d

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 293
    .local v11, "mExternalSummary":Landroid/widget/TextView;
    const v18, 0x7f0e067b

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(I)V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v18

    const-string v19, "storage"

    invoke-virtual/range {v18 .. v19}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/storage/StorageManager;

    .line 296
    .local v14, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v14}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v17

    .line 298
    .local v17, "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/storage/VolumeInfo;

    .line 299
    .local v16, "vol":Landroid/os/storage/VolumeInfo;
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getType()I

    move-result v18

    if-nez v18, :cond_3

    .line 300
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v18

    if-eqz v18, :cond_3

    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDisk()Landroid/os/storage/DiskInfo;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 301
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    .line 302
    invoke-virtual/range {v16 .. v16}, Landroid/os/storage/VolumeInfo;->getDiskId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    .line 308
    .end local v16    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/MasterClear$3;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$3;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v11    # "mExternalSummary":Landroid/widget/TextView;
    .end local v12    # "mExternalTitle":Landroid/widget/TextView;
    .end local v14    # "storageManager":Landroid/os/storage/StorageManager;
    .end local v17    # "volumes":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    :cond_5
    const-string v18, "ro.config.rm_preload_enabled"

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 321
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/MasterClear;->addDescriptionForRemovingPreloadApp()V

    .line 324
    :cond_6
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 325
    .local v2, "contentDescription":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f0d0342

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 326
    .local v13, "masterClearContainer":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 327
    invoke-virtual {v13, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 328
    return-void

    .line 260
    .end local v2    # "contentDescription":Ljava/lang/StringBuffer;
    .end local v13    # "masterClearContainer":Landroid/view/View;
    .end local v15    # "um":Landroid/os/UserManager;
    .restart local v3    # "descSummary":Ljava/lang/String;
    .restart local v5    # "externalAlsoErased":Landroid/widget/TextView;
    .restart local v7    # "externalOption":Landroid/widget/TextView;
    .restart local v8    # "googleSummary":Ljava/lang/String;
    :cond_7
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 274
    :cond_8
    const/16 v18, 0x0

    goto/16 :goto_1

    .line 276
    .end local v3    # "descSummary":Ljava/lang/String;
    .end local v5    # "externalAlsoErased":Landroid/widget/TextView;
    .end local v7    # "externalOption":Landroid/widget/TextView;
    .end local v8    # "googleSummary":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mExternalStorageContainer:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/settings/MasterClear$2;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/MasterClear$2;-><init>(Lcom/android/settings/MasterClear;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method private getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "description"    # Ljava/lang/StringBuffer;

    .prologue
    .line 331
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    move-object v2, p1

    .line 332
    check-cast v2, Landroid/view/ViewGroup;

    .line 333
    .local v2, "vGroup":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 334
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 335
    .local v1, "nextChild":Landroid/view/View;
    invoke-direct {p0, v1, p2}, Lcom/android/settings/MasterClear;->getContentDescription(Landroid/view/View;Ljava/lang/StringBuffer;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    .end local v0    # "i":I
    .end local v1    # "nextChild":Landroid/view/View;
    .end local v2    # "vGroup":Landroid/view/ViewGroup;
    :cond_0
    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 338
    check-cast v3, Landroid/widget/TextView;

    .line 339
    .local v3, "vText":Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    .line 340
    const-string v4, ","

    invoke-virtual {p2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    .end local v3    # "vText":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private isExtStorageEncrypted()Z
    .locals 2

    .prologue
    .line 345
    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, "state":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountList(Landroid/os/UserManager;)V
    .locals 38
    .param p1, "um"    # Landroid/os/UserManager;

    .prologue
    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f0d0346

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 351
    .local v10, "accountsLabel":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f0d0347

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 352
    .local v13, "contents":Landroid/widget/LinearLayout;
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v14

    .line 355
    .local v14, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v35

    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v29

    .line 356
    .local v29, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v30

    .line 358
    .local v30, "profilesSize":I
    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v24

    .line 360
    .local v24, "mgr":Landroid/accounts/AccountManager;
    const-string v35, "layout_inflater"

    move-object/from16 v0, v35

    invoke-virtual {v14, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/LayoutInflater;

    .line 363
    .local v22, "inflater":Landroid/view/LayoutInflater;
    const/4 v9, 0x0

    .line 364
    .local v9, "accountsCount":I
    const/16 v28, 0x0

    .local v28, "profileIndex":I
    :goto_0
    move/from16 v0, v28

    move/from16 v1, v30

    if-ge v0, v1, :cond_9

    .line 365
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/pm/UserInfo;

    .line 366
    .local v34, "userInfo":Landroid/content/pm/UserInfo;
    move-object/from16 v0, v34

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    move/from16 v27, v0

    .line 367
    .local v27, "profileId":I
    new-instance v33, Landroid/os/UserHandle;

    move-object/from16 v0, v33

    move/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    .line 368
    .local v33, "userHandle":Landroid/os/UserHandle;
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsAsUser(I)[Landroid/accounts/Account;

    move-result-object v8

    .line 369
    .local v8, "accounts":[Landroid/accounts/Account;
    array-length v6, v8

    .line 370
    .local v6, "N":I
    if-nez v6, :cond_1

    .line 364
    :cond_0
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 373
    :cond_1
    add-int/2addr v9, v6

    .line 375
    invoke-static {v14}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v35

    move-object/from16 v0, v35

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypesAsUser(I)[Landroid/accounts/AuthenticatorDescription;

    move-result-object v16

    .line 377
    .local v16, "descs":[Landroid/accounts/AuthenticatorDescription;
    move-object/from16 v0, v16

    array-length v5, v0

    .line 379
    .local v5, "M":I
    move-object/from16 v0, v22

    invoke-static {v0, v13}, Lcom/android/settings/Utils;->inflateCategoryHeader(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v32

    .line 380
    .local v32, "titleView":Landroid/view/View;
    const v35, 0x1020016

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Landroid/widget/TextView;

    .line 381
    .local v31, "titleText":Landroid/widget/TextView;
    invoke-virtual/range {v34 .. v34}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v35

    if-eqz v35, :cond_3

    const v35, 0x7f0e05de

    :goto_1
    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 383
    move-object/from16 v0, v32

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 385
    const/16 v20, 0x0

    .local v20, "i":I
    :goto_2
    move/from16 v0, v20

    if-ge v0, v6, :cond_0

    .line 386
    aget-object v7, v8, v20

    .line 387
    .local v7, "account":Landroid/accounts/Account;
    const/4 v15, 0x0

    .line 388
    .local v15, "desc":Landroid/accounts/AuthenticatorDescription;
    const/16 v23, 0x0

    .local v23, "j":I
    :goto_3
    move/from16 v0, v23

    if-ge v0, v5, :cond_2

    .line 389
    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v35, v0

    aget-object v36, v16, v23

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_4

    .line 390
    aget-object v15, v16, v23

    .line 394
    :cond_2
    if-nez v15, :cond_5

    .line 395
    const-string v35, "MasterClear"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "No descriptor for account name="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, " type="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 381
    .end local v7    # "account":Landroid/accounts/Account;
    .end local v15    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v20    # "i":I
    .end local v23    # "j":I
    :cond_3
    const v35, 0x7f0e05dd

    goto :goto_1

    .line 388
    .restart local v7    # "account":Landroid/accounts/Account;
    .restart local v15    # "desc":Landroid/accounts/AuthenticatorDescription;
    .restart local v20    # "i":I
    .restart local v23    # "j":I
    :cond_4
    add-int/lit8 v23, v23, 0x1

    goto :goto_3

    .line 399
    :cond_5
    const/16 v21, 0x0

    .line 401
    .local v21, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v35, v0

    if-eqz v35, :cond_6

    .line 402
    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    move-object/from16 v0, v35

    move/from16 v1, v36

    move-object/from16 v2, v33

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v11

    .line 405
    .local v11, "authContext":Landroid/content/Context;
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v26

    .line 406
    .local v26, "pm":Landroid/content/pm/PackageManager;
    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->shouldPackIntoIconTray(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_8

    .line 407
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    const/16 v36, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getDrawableForIconTray(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v21

    .line 417
    .end local v11    # "authContext":Landroid/content/Context;
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    :goto_5
    if-nez v21, :cond_7

    .line 418
    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 421
    :cond_7
    const v35, 0x7f040137

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v13, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 423
    .local v12, "child":Landroid/widget/TextView;
    iget-object v0, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 424
    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0c00ac

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    .line 425
    .local v19, "height":I
    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v35

    move/from16 v2, v36

    move/from16 v3, v19

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 426
    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 428
    invoke-virtual {v13, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 409
    .end local v12    # "child":Landroid/widget/TextView;
    .end local v19    # "height":I
    .restart local v11    # "authContext":Landroid/content/Context;
    .restart local v26    # "pm":Landroid/content/pm/PackageManager;
    :cond_8
    :try_start_1
    iget v0, v15, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v35, v0

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v35

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v21

    goto :goto_5

    .line 412
    .end local v11    # "authContext":Landroid/content/Context;
    .end local v26    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v17

    .line 413
    .local v17, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v35, "MasterClear"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Bad package name for account type "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 414
    .end local v17    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v17

    .line 415
    .local v17, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v35, "MasterClear"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "Invalid icon id for account type "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    iget-object v0, v15, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v35

    move-object/from16 v1, v36

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 432
    .end local v5    # "M":I
    .end local v6    # "N":I
    .end local v7    # "account":Landroid/accounts/Account;
    .end local v8    # "accounts":[Landroid/accounts/Account;
    .end local v15    # "desc":Landroid/accounts/AuthenticatorDescription;
    .end local v16    # "descs":[Landroid/accounts/AuthenticatorDescription;
    .end local v17    # "e":Landroid/content/res/Resources$NotFoundException;
    .end local v20    # "i":I
    .end local v21    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v23    # "j":I
    .end local v27    # "profileId":I
    .end local v31    # "titleText":Landroid/widget/TextView;
    .end local v32    # "titleView":Landroid/view/View;
    .end local v33    # "userHandle":Landroid/os/UserHandle;
    .end local v34    # "userInfo":Landroid/content/pm/UserInfo;
    :cond_9
    if-lez v9, :cond_a

    .line 433
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    .line 434
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 437
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f0d0348

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    .line 438
    .local v25, "otherUsers":Landroid/view/View;
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v35

    sub-int v35, v35, v30

    if-lez v35, :cond_b

    const/16 v18, 0x1

    .line 439
    .local v18, "hasOtherUsers":Z
    :goto_6
    if-eqz v18, :cond_c

    const/16 v35, 0x0

    :goto_7
    move-object/from16 v0, v25

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    return-void

    .line 438
    .end local v18    # "hasOtherUsers":Z
    :cond_b
    const/16 v18, 0x0

    goto :goto_6

    .line 439
    .restart local v18    # "hasOtherUsers":Z
    :cond_c
    const/16 v35, 0x8

    goto :goto_7
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4
    .param p1, "request"    # I

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 116
    .local v1, "res":Landroid/content/res/Resources;
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 118
    .local v0, "helper":Lcom/android/settings/ChooseLockSettingsHelper;
    invoke-virtual {v0}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->isFingerPrintLockscreen(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, 0x3a

    .end local p1    # "request":I
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v2

    return v2
.end method

.method private showFinalConfirmation()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 158
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v2, "args":Landroid/os/Bundle;
    const-string v0, "erase_sd"

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mExternalStorage:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 160
    const-string v0, "erase_sd_id"

    iget-object v1, p0, Lcom/android/settings/MasterClear;->mStrSdVolumeId:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "can_erase_sd_on_fuse"

    iget-boolean v1, p0, Lcom/android/settings/MasterClear;->mCanEraseExternalOnFuseSystem:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    const-class v1, Lcom/android/settings/MasterClearConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0e1358

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/SettingsActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 164
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 602
    const/16 v0, 0x42

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 128
    const/16 v0, 0x38

    if-ne p1, v0, :cond_1

    .line 129
    if-ne p2, v1, :cond_0

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x37

    if-ne p1, v0, :cond_0

    .line 139
    :cond_2
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 141
    :pswitch_1
    if-ne p2, v1, :cond_3

    .line 142
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 144
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    .line 148
    :pswitch_2
    if-ne p2, v1, :cond_4

    .line 149
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    goto :goto_0

    .line 151
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 445
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    :cond_0
    const v0, 0x7f040139

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 458
    :goto_0
    return-object v0

    .line 451
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportLMM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    new-instance v0, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/MasterClear;->rsm:Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    .line 455
    :cond_2
    const v0, 0x7f040136

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    .line 457
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->establishInitialState()V

    .line 458
    iget-object v0, p0, Lcom/android/settings/MasterClear;->mContentView:Landroid/view/View;

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 575
    invoke-super {p0}, Lcom/android/settings/InstrumentedFragment;->onResume()V

    .line 577
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->checkReactivationLock()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_my_mobile"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 584
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    if-eqz v3, :cond_0

    .line 585
    iput-boolean v2, p0, Lcom/android/settings/MasterClear;->mPinConfirmed:Z

    .line 586
    const/16 v3, 0x37

    invoke-direct {p0, v3}, Lcom/android/settings/MasterClear;->runKeyguardConfirmation(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 587
    invoke-direct {p0}, Lcom/android/settings/MasterClear;->showFinalConfirmation()V

    .line 592
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://com.sec.knox.provider/RestrictionPolicy1"

    const-string v5, "isFactoryResetAllowed"

    invoke-static {v3, v4, v5}, Lcom/android/settings/Utils;->getEnterprisePolicyEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 593
    .local v0, "isFactoryResetAllowed":I
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 594
    iget-object v3, p0, Lcom/android/settings/MasterClear;->mInitiateButton:Landroid/widget/Button;

    if-ne v0, v1, :cond_3

    :goto_1
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 598
    :cond_1
    return-void

    .line 580
    .end local v0    # "isFactoryResetAllowed":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MasterClear;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_my_mobile"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .restart local v0    # "isFactoryResetAllowed":I
    :cond_3
    move v1, v2

    .line 594
    goto :goto_1
.end method
