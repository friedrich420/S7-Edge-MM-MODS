.class public final Lcom/android/server/am/CompatModePackages;
.super Ljava/lang/Object;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CompatModePackages$CompatHandler;
    }
.end annotation


# static fields
.field public static final COMPAT_FLAG_DONT_ASK:I = 0x1

.field public static final COMPAT_FLAG_ENABLED:I = 0x2

.field private static final MSG_WRITE:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "ActivityManager"

.field private static final TAG_CONFIGURATION:Ljava/lang/String; = "ActivityManager"


# instance fields
.field private final mFile:Landroid/util/AtomicFile;

.field private final mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;Landroid/os/Handler;)V
    .registers 15
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "systemDir"    # Ljava/io/File;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iput-object v8, p0, mPackages:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    .line 91
    new-instance v8, Landroid/util/AtomicFile;

    new-instance v9, Ljava/io/File;

    const-string/jumbo v10, "packages-compat.xml"

    invoke-direct {v9, p2, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v8, p0, mFile:Landroid/util/AtomicFile;

    .line 92
    new-instance v8, Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/server/am/CompatModePackages$CompatHandler;-><init>(Lcom/android/server/am/CompatModePackages;Landroid/os/Looper;)V

    iput-object v8, p0, mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    .line 94
    const/4 v2, 0x0

    .line 96
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_27
    iget-object v8, p0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v8}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 97
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 98
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v8, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v2, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 99
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 100
    .local v1, "eventType":I
    :goto_3e
    const/4 v8, 0x2

    if-eq v1, v8, :cond_49

    const/4 v8, 0x1

    if-eq v1, v8, :cond_49

    .line 102
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_27 .. :try_end_47} :catch_aa
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_47} :catch_ba
    .catchall {:try_start_27 .. :try_end_47} :catchall_cc

    move-result v1

    goto :goto_3e

    .line 104
    :cond_49
    const/4 v8, 0x1

    if-ne v1, v8, :cond_52

    .line 139
    if-eqz v2, :cond_51

    .line 141
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_d3

    .line 146
    .end local v1    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_51
    :goto_51
    return-void

    .line 108
    .restart local v1    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_52
    :try_start_52
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 109
    .local v7, "tagName":Ljava/lang/String;
    const-string v8, "compat-packages"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a2

    .line 110
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 112
    :cond_62
    const/4 v8, 0x2

    if-ne v1, v8, :cond_9b

    .line 113
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 114
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_9b

    .line 115
    const-string/jumbo v8, "pkg"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9b

    .line 116
    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "pkg":Ljava/lang/String;
    if-eqz v6, :cond_9b

    .line 118
    const/4 v8, 0x0

    const-string/jumbo v9, "mode"

    invoke-interface {v5, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_52 .. :try_end_8a} :catch_aa
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_8a} :catch_ba
    .catchall {:try_start_52 .. :try_end_8a} :catchall_cc

    move-result-object v3

    .line 119
    .local v3, "mode":Ljava/lang/String;
    const/4 v4, 0x0

    .line 120
    .local v4, "modeInt":I
    if-eqz v3, :cond_92

    .line 122
    :try_start_8e
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_91
    .catch Ljava/lang/NumberFormatException; {:try_start_8e .. :try_end_91} :catch_d6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8e .. :try_end_91} :catch_aa
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_ba
    .catchall {:try_start_8e .. :try_end_91} :catchall_cc

    move-result v4

    .line 126
    :cond_92
    :goto_92
    :try_start_92
    iget-object v8, p0, mPackages:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v6, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "modeInt":I
    .end local v6    # "pkg":Ljava/lang/String;
    :cond_9b
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_9e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_92 .. :try_end_9e} :catch_aa
    .catch Ljava/io/IOException; {:try_start_92 .. :try_end_9e} :catch_ba
    .catchall {:try_start_92 .. :try_end_9e} :catchall_cc

    move-result v1

    .line 132
    const/4 v8, 0x1

    if-ne v1, v8, :cond_62

    .line 139
    :cond_a2
    if-eqz v2, :cond_51

    .line 141
    :try_start_a4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_51

    .line 142
    :catch_a8
    move-exception v8

    goto :goto_51

    .line 134
    .end local v1    # "eventType":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_aa
    move-exception v0

    .line 135
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_ab
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b2
    .catchall {:try_start_ab .. :try_end_b2} :catchall_cc

    .line 139
    if-eqz v2, :cond_51

    .line 141
    :try_start_b4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_b4 .. :try_end_b7} :catch_b8

    goto :goto_51

    .line 142
    :catch_b8
    move-exception v8

    goto :goto_51

    .line 136
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_ba
    move-exception v0

    .line 137
    .local v0, "e":Ljava/io/IOException;
    if-eqz v2, :cond_c4

    :try_start_bd
    const-string v8, "ActivityManager"

    const-string v9, "Error reading compat-packages"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c4
    .catchall {:try_start_bd .. :try_end_c4} :catchall_cc

    .line 139
    :cond_c4
    if-eqz v2, :cond_51

    .line 141
    :try_start_c6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c6 .. :try_end_c9} :catch_ca

    goto :goto_51

    .line 142
    :catch_ca
    move-exception v8

    goto :goto_51

    .line 139
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_cc
    move-exception v8

    if-eqz v2, :cond_d2

    .line 141
    :try_start_cf
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_d2
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d2} :catch_d8

    .line 143
    :cond_d2
    :goto_d2
    throw v8

    .line 142
    .restart local v1    # "eventType":I
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_d3
    move-exception v8

    goto/16 :goto_51

    .line 123
    .restart local v3    # "mode":Ljava/lang/String;
    .restart local v4    # "modeInt":I
    .restart local v6    # "pkg":Ljava/lang/String;
    .restart local v7    # "tagName":Ljava/lang/String;
    :catch_d6
    move-exception v8

    goto :goto_92

    .line 142
    .end local v1    # "eventType":I
    .end local v3    # "mode":Ljava/lang/String;
    .end local v4    # "modeInt":I
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "pkg":Ljava/lang/String;
    .end local v7    # "tagName":Ljava/lang/String;
    :catch_d8
    move-exception v9

    goto :goto_d2
.end method

.method private getPackageFlags(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 153
    iget-object v1, p0, mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 154
    .local v0, "flags":Ljava/lang/Integer;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_e
    return v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method private setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V
    .registers 19
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "mode"    # I

    .prologue
    .line 300
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 302
    .local v9, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, getPackageFlags(Ljava/lang/String;)I

    move-result v4

    .line 305
    .local v4, "curFlags":I
    packed-switch p2, :pswitch_data_116

    .line 316
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown screen compat mode req #"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; ignoring"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_2d
    :goto_2d
    return-void

    .line 307
    :pswitch_2e
    const/4 v5, 0x0

    .line 320
    .local v5, "enable":Z
    :goto_2f
    move v8, v4

    .line 321
    .local v8, "newFlags":I
    if-eqz v5, :cond_ee

    .line 322
    or-int/lit8 v8, v8, 0x2

    .line 327
    :goto_34
    invoke-virtual/range {p0 .. p1}, compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 328
    .local v3, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v12

    if-eqz v12, :cond_5d

    .line 329
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring compat mode change of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; compatibility never needed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const/4 v8, 0x0

    .line 333
    :cond_5d
    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v12

    if-eqz v12, :cond_82

    .line 334
    const-string v12, "ActivityManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring compat mode change of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "; compatibility always needed"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    const/4 v8, 0x0

    .line 339
    :cond_82
    if-eq v8, v4, :cond_2d

    .line 340
    if-eqz v8, :cond_f2

    .line 341
    move-object/from16 v0, p0

    iget-object v12, v0, mPackages:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    :goto_91
    invoke-virtual/range {p0 .. p1}, compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    .line 349
    move-object/from16 v0, p0

    iget-object v12, v0, mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const/16 v13, 0x12c

    invoke-virtual {v12, v13}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 350
    move-object/from16 v0, p0

    iget-object v12, v0, mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const/16 v13, 0x12c

    invoke-virtual {v12, v13}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 351
    .local v7, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v12, v0, mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v14, 0x2710

    invoke-virtual {v12, v7, v14, v15}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 353
    move-object/from16 v0, p0

    iget-object v12, v0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v10

    .line 354
    .local v10, "stack":Lcom/android/server/am/ActivityStack;
    invoke-virtual {v10, v9}, Lcom/android/server/am/ActivityStack;->restartPackage(Ljava/lang/String;)Lcom/android/server/am/ActivityRecord;

    move-result-object v11

    .line 357
    .local v11, "starting":Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v12, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x1

    .local v6, "i":I
    :goto_c9
    if-ltz v6, :cond_106

    .line 358
    move-object/from16 v0, p0

    iget-object v12, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 359
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v12, v9}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_fa

    .line 357
    :cond_df
    :goto_df
    add-int/lit8 v6, v6, -0x1

    goto :goto_c9

    .line 310
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v5    # "enable":Z
    .end local v6    # "i":I
    .end local v7    # "msg":Landroid/os/Message;
    .end local v8    # "newFlags":I
    .end local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .end local v11    # "starting":Lcom/android/server/am/ActivityRecord;
    :pswitch_e2
    const/4 v5, 0x1

    .line 311
    .restart local v5    # "enable":Z
    goto/16 :goto_2f

    .line 313
    .end local v5    # "enable":Z
    :pswitch_e5
    and-int/lit8 v12, v4, 0x2

    if-nez v12, :cond_ec

    const/4 v5, 0x1

    .line 314
    .restart local v5    # "enable":Z
    :goto_ea
    goto/16 :goto_2f

    .line 313
    .end local v5    # "enable":Z
    :cond_ec
    const/4 v5, 0x0

    goto :goto_ea

    .line 324
    .restart local v5    # "enable":Z
    .restart local v8    # "newFlags":I
    :cond_ee
    and-int/lit8 v8, v8, -0x3

    goto/16 :goto_34

    .line 343
    .restart local v3    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_f2
    move-object/from16 v0, p0

    iget-object v12, v0, mPackages:Ljava/util/HashMap;

    invoke-virtual {v12, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_91

    .line 363
    .restart local v2    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6    # "i":I
    .restart local v7    # "msg":Landroid/os/Message;
    .restart local v10    # "stack":Lcom/android/server/am/ActivityStack;
    .restart local v11    # "starting":Lcom/android/server/am/ActivityRecord;
    :cond_fa
    :try_start_fa
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v12, :cond_df

    .line 366
    iget-object v12, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v12, v9, v3}, Landroid/app/IApplicationThread;->updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_103} :catch_104

    goto :goto_df

    .line 368
    :catch_104
    move-exception v12

    goto :goto_df

    .line 372
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    :cond_106
    if-eqz v11, :cond_2d

    .line 373
    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 378
    iget-object v12, v10, Lcom/android/server/am/ActivityStack;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    goto/16 :goto_2d

    .line 305
    nop

    :pswitch_data_116
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_e2
        :pswitch_e5
    .end packed-switch
.end method


# virtual methods
.method public compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 6
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 190
    new-instance v0, Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v3, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, getPackageFlags(Ljava/lang/String;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    :goto_19
    invoke-direct {v0, p1, v2, v3, v1}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 196
    .local v0, "ci":Landroid/content/res/CompatibilityInfo;
    return-object v0

    .line 190
    .end local v0    # "ci":Landroid/content/res/CompatibilityInfo;
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method public computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I
    .registers 8
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, getPackageFlags(Ljava/lang/String;)I

    move-result v4

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_26

    move v0, v2

    .line 208
    .local v0, "enabled":Z
    :goto_d
    new-instance v1, Landroid/content/res/CompatibilityInfo;

    iget-object v4, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    iget-object v5, p0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    invoke-direct {v1, p1, v4, v5, v0}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 213
    .local v1, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 214
    const/4 v2, -0x2

    .line 219
    :cond_25
    :goto_25
    return v2

    .end local v0    # "enabled":Z
    .end local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_26
    move v0, v3

    .line 200
    goto :goto_d

    .line 216
    .restart local v0    # "enabled":Z
    .restart local v1    # "info":Landroid/content/res/CompatibilityInfo;
    :cond_28
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 217
    const/4 v2, -0x1

    goto :goto_25

    .line 219
    :cond_30
    if-nez v0, :cond_25

    move v2, v3

    goto :goto_25
.end method

.method public getFrontActivityAskCompatModeLocked()Z
    .registers 4

    .prologue
    .line 224
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 225
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_f

    .line 226
    const/4 v1, 0x0

    .line 228
    :goto_e
    return v1

    :cond_f
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_e
.end method

.method public getFrontActivityScreenCompatModeLocked()I
    .registers 4

    .prologue
    .line 258
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 259
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_f

    .line 260
    const/4 v1, -0x3

    .line 262
    :goto_e
    return v1

    :cond_f
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, v1}, computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_e
.end method

.method public getPackageAskCompatModeLocked(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-direct {p0, p1}, getPackageFlags(Ljava/lang/String;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public getPackageScreenCompatModeLocked(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_14

    move-result-object v0

    .line 280
    :goto_b
    if-nez v0, :cond_f

    .line 281
    const/4 v1, -0x3

    .line 283
    :goto_e
    return v1

    :cond_f
    invoke-virtual {p0, v0}, computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v1

    goto :goto_e

    .line 278
    :catch_14
    move-exception v1

    goto :goto_b
.end method

.method public getPackages()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 149
    iget-object v0, p0, mPackages:Ljava/util/HashMap;

    return-object v0
.end method

.method public handlePackageAddedLocked(Ljava/lang/String;Z)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "updated"    # Z

    .prologue
    const/16 v7, 0x12c

    const/4 v2, 0x0

    .line 158
    const/4 v0, 0x0

    .line 160
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_4
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {v4, p1, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_d} :catch_46

    move-result-object v0

    .line 163
    :goto_e
    if-nez v0, :cond_11

    .line 180
    :cond_10
    :goto_10
    return-void

    .line 166
    :cond_11
    invoke-virtual {p0, v0}, compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    .line 167
    .local v1, "ci":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v1}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v2, 0x1

    .line 170
    .local v2, "mayCompat":Z
    :cond_22
    if-eqz p2, :cond_10

    .line 173
    if-nez v2, :cond_10

    iget-object v4, p0, mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 174
    iget-object v4, p0, mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v4, p0, mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 176
    iget-object v4, p0, mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v4, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 177
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_10

    .line 161
    .end local v1    # "ci":Landroid/content/res/CompatibilityInfo;
    .end local v2    # "mayCompat":Z
    .end local v3    # "msg":Landroid/os/Message;
    :catch_46
    move-exception v4

    goto :goto_e
.end method

.method saveCompatModes()V
    .registers 18

    .prologue
    .line 389
    move-object/from16 v0, p0

    iget-object v15, v0, mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 390
    :try_start_5
    new-instance v10, Ljava/util/HashMap;

    move-object/from16 v0, p0

    iget-object v14, v0, mPackages:Ljava/util/HashMap;

    invoke-direct {v10, v14}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 391
    .local v10, "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    monitor-exit v15
    :try_end_f
    .catchall {:try_start_5 .. :try_end_f} :catchall_c6

    .line 393
    const/4 v4, 0x0

    .line 396
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v14, v0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    .line 397
    new-instance v8, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v8}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 398
    .local v8, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v8, v4, v14}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 399
    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 400
    const-string/jumbo v14, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v15, 0x1

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 401
    const/4 v14, 0x0

    const-string v15, "compat-packages"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 403
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v11

    .line 411
    .local v11, "pm":Landroid/content/pm/IPackageManager;
    move-object/from16 v0, p0

    iget-object v14, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v12, v14, Landroid/content/res/Configuration;->screenLayout:I

    .line 412
    .local v12, "screenLayout":I
    move-object/from16 v0, p0

    iget-object v14, v0, mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget v13, v14, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 415
    .local v13, "smallestScreenWidthDp":I
    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 416
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    :cond_58
    :goto_58
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_c9

    .line 417
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 418
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 419
    .local v9, "pkg":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_73} :catch_b4

    move-result v7

    .line 420
    .local v7, "mode":I
    if-eqz v7, :cond_58

    .line 423
    const/4 v1, 0x0

    .line 425
    .local v1, "ai":Landroid/content/pm/ApplicationInfo;
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_79
    invoke-interface {v11, v9, v14, v15}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_7c
    .catch Landroid/os/RemoteException; {:try_start_79 .. :try_end_7c} :catch_da
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_b4

    move-result-object v1

    .line 428
    :goto_7d
    if-eqz v1, :cond_58

    .line 431
    :try_start_7f
    new-instance v5, Landroid/content/res/CompatibilityInfo;

    const/4 v14, 0x0

    invoke-direct {v5, v1, v12, v13, v14}, Landroid/content/res/CompatibilityInfo;-><init>(Landroid/content/pm/ApplicationInfo;IIZ)V

    .line 433
    .local v5, "info":Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->alwaysSupportsScreen()Z

    move-result v14

    if-nez v14, :cond_58

    .line 436
    invoke-virtual {v5}, Landroid/content/res/CompatibilityInfo;->neverSupportsScreen()Z

    move-result v14

    if-nez v14, :cond_58

    .line 439
    const/4 v14, 0x0

    const-string/jumbo v15, "pkg"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 440
    const/4 v14, 0x0

    const-string/jumbo v15, "name"

    invoke-interface {v8, v14, v15, v9}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 441
    const/4 v14, 0x0

    const-string/jumbo v15, "mode"

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v8, v14, v15, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 442
    const/4 v14, 0x0

    const-string/jumbo v15, "pkg"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_b3
    .catch Ljava/io/IOException; {:try_start_7f .. :try_end_b3} :catch_b4

    goto :goto_58

    .line 449
    .end local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v5    # "info":Landroid/content/res/CompatibilityInfo;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .end local v7    # "mode":I
    .end local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v9    # "pkg":Ljava/lang/String;
    .end local v11    # "pm":Landroid/content/pm/IPackageManager;
    .end local v12    # "screenLayout":I
    .end local v13    # "smallestScreenWidthDp":I
    :catch_b4
    move-exception v2

    .line 450
    .local v2, "e1":Ljava/io/IOException;
    const-string v14, "ActivityManager"

    const-string v15, "Error writing compat packages"

    invoke-static {v14, v15, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 451
    if-eqz v4, :cond_c5

    .line 452
    move-object/from16 v0, p0

    iget-object v14, v0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 455
    .end local v2    # "e1":Ljava/io/IOException;
    :cond_c5
    :goto_c5
    return-void

    .line 391
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :catchall_c6
    move-exception v14

    :try_start_c7
    monitor-exit v15
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    throw v14

    .line 445
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    .restart local v8    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v10    # "pkgs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v11    # "pm":Landroid/content/pm/IPackageManager;
    .restart local v12    # "screenLayout":I
    .restart local v13    # "smallestScreenWidthDp":I
    :cond_c9
    const/4 v14, 0x0

    :try_start_ca
    const-string v15, "compat-packages"

    invoke-interface {v8, v14, v15}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 446
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 448
    move-object/from16 v0, p0

    iget-object v14, v0, mFile:Landroid/util/AtomicFile;

    invoke-virtual {v14, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_d9} :catch_b4

    goto :goto_c5

    .line 426
    .restart local v1    # "ai":Landroid/content/pm/ApplicationInfo;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local v7    # "mode":I
    .restart local v9    # "pkg":Ljava/lang/String;
    :catch_da
    move-exception v14

    goto :goto_7d
.end method

.method public setFrontActivityAskCompatModeLocked(Z)V
    .registers 5
    .param p1, "ask"    # Z

    .prologue
    .line 236
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 237
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_12

    .line 238
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 240
    :cond_12
    return-void
.end method

.method public setFrontActivityScreenCompatModeLocked(I)V
    .registers 5
    .param p1, "mode"    # I

    .prologue
    .line 266
    iget-object v1, p0, mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getFocusedStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 267
    .local v0, "r":Lcom/android/server/am/ActivityRecord;
    if-nez v0, :cond_16

    .line 268
    const-string v1, "ActivityManager"

    const-string/jumbo v2, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :goto_15
    return-void

    .line 271
    :cond_16
    iget-object v1, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {p0, v1, p1}, setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_15
.end method

.method public setPackageAskCompatModeLocked(Ljava/lang/String;Z)V
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ask"    # Z

    .prologue
    const/16 v5, 0x12c

    .line 243
    invoke-direct {p0, p1}, getPackageFlags(Ljava/lang/String;)I

    move-result v0

    .line 244
    .local v0, "curFlags":I
    if-eqz p2, :cond_2a

    and-int/lit8 v2, v0, -0x2

    .line 245
    .local v2, "newFlags":I
    :goto_a
    if-eq v0, v2, :cond_29

    .line 246
    if-eqz v2, :cond_2d

    .line 247
    iget-object v3, p0, mPackages:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    :goto_17
    iget-object v3, p0, mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->removeMessages(I)V

    .line 252
    iget-object v3, p0, mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    invoke-virtual {v3, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 253
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, mHandler:Lcom/android/server/am/CompatModePackages$CompatHandler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/am/CompatModePackages$CompatHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 255
    .end local v1    # "msg":Landroid/os/Message;
    :cond_29
    return-void

    .line 244
    .end local v2    # "newFlags":I
    :cond_2a
    or-int/lit8 v2, v0, 0x1

    goto :goto_a

    .line 249
    .restart local v2    # "newFlags":I
    :cond_2d
    iget-object v3, p0, mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17
.end method

.method public setPackageScreenCompatModeLocked(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 287
    const/4 v0, 0x0

    .line 289
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_2b

    move-result-object v0

    .line 292
    :goto_b
    if-nez v0, :cond_27

    .line 293
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPackageScreenCompatMode failed: unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_26
    return-void

    .line 296
    :cond_27
    invoke-direct {p0, v0, p2}, setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    goto :goto_26

    .line 290
    :catch_2b
    move-exception v1

    goto :goto_b
.end method
