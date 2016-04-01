.class Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
.super Ljava/lang/Object;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputMethodFileManager"
.end annotation


# static fields
.field private static final ADDITIONAL_SUBTYPES_FILE_NAME:Ljava/lang/String; = "subtypes.xml"

.field private static final ATTR_ICON:Ljava/lang/String; = "icon"

.field private static final ATTR_ID:Ljava/lang/String; = "id"

.field private static final ATTR_IME_SUBTYPE_EXTRA_VALUE:Ljava/lang/String; = "imeSubtypeExtraValue"

.field private static final ATTR_IME_SUBTYPE_LOCALE:Ljava/lang/String; = "imeSubtypeLocale"

.field private static final ATTR_IME_SUBTYPE_MODE:Ljava/lang/String; = "imeSubtypeMode"

.field private static final ATTR_IS_AUXILIARY:Ljava/lang/String; = "isAuxiliary"

.field private static final ATTR_LABEL:Ljava/lang/String; = "label"

.field private static final INPUT_METHOD_PATH:Ljava/lang/String; = "inputmethod"

.field private static final NODE_IMI:Ljava/lang/String; = "imi"

.field private static final NODE_SUBTYPE:Ljava/lang/String; = "subtype"

.field private static final NODE_SUBTYPES:Ljava/lang/String; = "subtypes"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "system"


# instance fields
.field private final mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

.field private final mAdditionalSubtypesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMethodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;I)V
    .registers 9
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 5487
    .local p1, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5485
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, mAdditionalSubtypesMap:Ljava/util/HashMap;

    .line 5488
    if-nez p1, :cond_15

    .line 5489
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "methodMap is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 5491
    :cond_15
    iput-object p1, p0, mMethodMap:Ljava/util/HashMap;

    .line 5492
    if-nez p2, :cond_72

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string/jumbo v4, "system"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5495
    .local v2, "systemDir":Ljava/io/File;
    :goto_25
    new-instance v0, Ljava/io/File;

    const-string/jumbo v3, "inputmethod"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5496
    .local v0, "inputMethodDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_55

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_55

    .line 5497
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t create dir.: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5499
    :cond_55
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "subtypes.xml"

    invoke-direct {v1, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5500
    .local v1, "subtypeFile":Ljava/io/File;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {v3, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    .line 5501
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_77

    .line 5503
    iget-object v3, p0, mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    invoke-static {v3, v4, p1}, writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    .line 5509
    :goto_71
    return-void

    .line 5492
    .end local v0    # "inputMethodDir":Ljava/io/File;
    .end local v1    # "subtypeFile":Ljava/io/File;
    .end local v2    # "systemDir":Ljava/io/File;
    :cond_72
    invoke-static {p2}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    goto :goto_25

    .line 5506
    .restart local v0    # "inputMethodDir":Ljava/io/File;
    .restart local v1    # "subtypeFile":Ljava/io/File;
    .restart local v2    # "systemDir":Ljava/io/File;
    :cond_77
    iget-object v3, p0, mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v4, p0, mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    invoke-static {v3, v4}, readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V

    goto :goto_71
.end method

.method static synthetic access$1600(Lcom/android/server/InputMethodManagerService$InputMethodFileManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/InputMethodManagerService$InputMethodFileManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 5469
    invoke-direct {p0, p1}, deleteAllInputMethodSubtypes(Ljava/lang/String;)V

    return-void
.end method

.method private deleteAllInputMethodSubtypes(Ljava/lang/String;)V
    .registers 6
    .param p1, "imiId"    # Ljava/lang/String;

    .prologue
    .line 5512
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5513
    :try_start_3
    iget-object v0, p0, mAdditionalSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5514
    iget-object v0, p0, mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v2, p0, mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    iget-object v3, p0, mMethodMap:Ljava/util/HashMap;

    invoke-static {v0, v2, v3}, writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    .line 5516
    monitor-exit v1

    .line 5517
    return-void

    .line 5516
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method

.method private static readAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;)V
    .registers 24
    .param p1, "subtypesFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            ")V"
        }
    .end annotation

    .prologue
    .line 5594
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 5671
    :cond_4
    :goto_4
    return-void

    .line 5595
    :cond_5
    invoke-virtual/range {p0 .. p0}, Ljava/util/HashMap;->clear()V

    .line 5596
    const/4 v7, 0x0

    .line 5598
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v7

    .line 5599
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v15

    .line 5600
    .local v15, "parser":Lorg/xmlpull/v1/XmlPullParser;
    sget-object v19, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual/range {v19 .. v19}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v15, v7, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 5601
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v18

    .line 5604
    .local v18, "type":I
    :cond_20
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_34

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_20

    .line 5605
    :cond_34
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 5606
    .local v6, "firstNodeName":Ljava/lang/String;
    const-string/jumbo v19, "subtypes"

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_75

    .line 5607
    new-instance v19, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v20, "Xml doesn\'t start with subtypes"

    invoke-direct/range {v19 .. v20}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v19
    :try_end_4b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_4b} :catch_4b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_4b} :catch_ca
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_4b} :catch_104
    .catchall {:try_start_9 .. :try_end_4b} :catchall_15f

    .line 5653
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v18    # "type":I
    :catch_4b
    move-exception v4

    .line 5654
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_4c
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error reading subtypes: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catchall {:try_start_4c .. :try_end_66} :catchall_15f

    .line 5663
    if-eqz v7, :cond_4

    .line 5665
    :try_start_68
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6c

    goto :goto_4

    .line 5666
    :catch_6c
    move-exception v5

    .line 5667
    .local v5, "e1":Ljava/io/IOException;
    const-string v19, "InputMethodManagerService"

    const-string v20, "Failed to close."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5609
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v18    # "type":I
    :cond_75
    :try_start_75
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 5610
    .local v3, "depth":I
    const/4 v2, 0x0

    .line 5611
    .local v2, "currentImiId":Ljava/lang/String;
    const/16 v17, 0x0

    .line 5613
    .local v17, "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_7c
    :goto_7c
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_90

    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v19

    move/from16 v0, v19

    if-le v0, v3, :cond_204

    :cond_90
    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_204

    .line 5614
    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7c

    .line 5616
    invoke-interface {v15}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 5617
    .local v14, "nodeName":Ljava/lang/String;
    const-string/jumbo v19, "imi"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_130

    .line 5618
    const/16 v19, 0x0

    const-string/jumbo v20, "id"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5619
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_f6

    .line 5620
    const-string v19, "InputMethodManagerService"

    const-string v20, "Invalid imi id found in subtypes.xml"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_75 .. :try_end_c9} :catch_4b
    .catch Ljava/io/IOException; {:try_start_75 .. :try_end_c9} :catch_ca
    .catch Ljava/lang/NumberFormatException; {:try_start_75 .. :try_end_c9} :catch_104
    .catchall {:try_start_75 .. :try_end_c9} :catchall_15f

    goto :goto_7c

    .line 5656
    .end local v2    # "currentImiId":Ljava/lang/String;
    .end local v3    # "depth":I
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "type":I
    :catch_ca
    move-exception v4

    .line 5657
    .local v4, "e":Ljava/io/IOException;
    :try_start_cb
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error reading subtypes: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_cb .. :try_end_e5} :catchall_15f

    .line 5663
    if-eqz v7, :cond_4

    .line 5665
    :try_start_e7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_ea
    .catch Ljava/io/IOException; {:try_start_e7 .. :try_end_ea} :catch_ec

    goto/16 :goto_4

    .line 5666
    :catch_ec
    move-exception v5

    .line 5667
    .restart local v5    # "e1":Ljava/io/IOException;
    const-string v19, "InputMethodManagerService"

    const-string v20, "Failed to close."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 5623
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v2    # "currentImiId":Ljava/lang/String;
    .restart local v3    # "depth":I
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v18    # "type":I
    :cond_f6
    :try_start_f6
    new-instance v17, Ljava/util/ArrayList;

    .end local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 5624
    .restart local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_102
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f6 .. :try_end_102} :catch_4b
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_102} :catch_ca
    .catch Ljava/lang/NumberFormatException; {:try_start_f6 .. :try_end_102} :catch_104
    .catchall {:try_start_f6 .. :try_end_102} :catchall_15f

    goto/16 :goto_7c

    .line 5659
    .end local v2    # "currentImiId":Ljava/lang/String;
    .end local v3    # "depth":I
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "type":I
    :catch_104
    move-exception v4

    .line 5660
    .local v4, "e":Ljava/lang/NumberFormatException;
    :try_start_105
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Error reading subtypes: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11f
    .catchall {:try_start_105 .. :try_end_11f} :catchall_15f

    .line 5663
    if-eqz v7, :cond_4

    .line 5665
    :try_start_121
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_124
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_124} :catch_126

    goto/16 :goto_4

    .line 5666
    :catch_126
    move-exception v5

    .line 5667
    .restart local v5    # "e1":Ljava/io/IOException;
    const-string v19, "InputMethodManagerService"

    const-string v20, "Failed to close."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 5625
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .end local v5    # "e1":Ljava/io/IOException;
    .restart local v2    # "currentImiId":Ljava/lang/String;
    .restart local v3    # "depth":I
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v18    # "type":I
    :cond_130
    :try_start_130
    const-string/jumbo v19, "subtype"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7c

    .line 5626
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_143

    if-nez v17, :cond_166

    .line 5627
    :cond_143
    const-string v19, "InputMethodManagerService"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "IME uninstalled or not valid.: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15d
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_130 .. :try_end_15d} :catch_4b
    .catch Ljava/io/IOException; {:try_start_130 .. :try_end_15d} :catch_ca
    .catch Ljava/lang/NumberFormatException; {:try_start_130 .. :try_end_15d} :catch_104
    .catchall {:try_start_130 .. :try_end_15d} :catchall_15f

    goto/16 :goto_7c

    .line 5663
    .end local v2    # "currentImiId":Ljava/lang/String;
    .end local v3    # "depth":I
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "type":I
    :catchall_15f
    move-exception v19

    if-eqz v7, :cond_165

    .line 5665
    :try_start_162
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_165
    .catch Ljava/io/IOException; {:try_start_162 .. :try_end_165} :catch_215

    .line 5668
    :cond_165
    :goto_165
    throw v19

    .line 5630
    .restart local v2    # "currentImiId":Ljava/lang/String;
    .restart local v3    # "depth":I
    .restart local v6    # "firstNodeName":Ljava/lang/String;
    .restart local v14    # "nodeName":Ljava/lang/String;
    .restart local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v18    # "type":I
    :cond_166
    const/16 v19, 0x0

    :try_start_168
    const-string/jumbo v20, "icon"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 5632
    .local v8, "icon":I
    const/16 v19, 0x0

    const-string/jumbo v20, "label"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 5634
    .local v13, "label":I
    const/16 v19, 0x0

    const-string/jumbo v20, "imeSubtypeLocale"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 5636
    .local v10, "imeSubtypeLocale":Ljava/lang/String;
    const/16 v19, 0x0

    const-string/jumbo v20, "imeSubtypeMode"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5638
    .local v11, "imeSubtypeMode":Ljava/lang/String;
    const/16 v19, 0x0

    const-string/jumbo v20, "imeSubtypeExtraValue"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 5640
    .local v9, "imeSubtypeExtraValue":Ljava/lang/String;
    const-string v19, "1"

    const/16 v20, 0x0

    const-string/jumbo v21, "isAuxiliary"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-interface {v15, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 5642
    .local v12, "isAuxiliary":Z
    new-instance v19, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    invoke-direct/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeNameResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeIconResId(I)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeLocale(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeMode(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setSubtypeExtraValue(Ljava/lang/String;)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->setIsAuxiliary(Z)Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/inputmethod/InputMethodSubtype$InputMethodSubtypeBuilder;->build()Landroid/view/inputmethod/InputMethodSubtype;

    move-result-object v16

    .line 5650
    .local v16, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_202
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_168 .. :try_end_202} :catch_4b
    .catch Ljava/io/IOException; {:try_start_168 .. :try_end_202} :catch_ca
    .catch Ljava/lang/NumberFormatException; {:try_start_168 .. :try_end_202} :catch_104
    .catchall {:try_start_168 .. :try_end_202} :catchall_15f

    goto/16 :goto_7c

    .line 5663
    .end local v8    # "icon":I
    .end local v9    # "imeSubtypeExtraValue":Ljava/lang/String;
    .end local v10    # "imeSubtypeLocale":Ljava/lang/String;
    .end local v11    # "imeSubtypeMode":Ljava/lang/String;
    .end local v12    # "isAuxiliary":Z
    .end local v13    # "label":I
    .end local v14    # "nodeName":Ljava/lang/String;
    .end local v16    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_204
    if-eqz v7, :cond_4

    .line 5665
    :try_start_206
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_209
    .catch Ljava/io/IOException; {:try_start_206 .. :try_end_209} :catch_20b

    goto/16 :goto_4

    .line 5666
    :catch_20b
    move-exception v5

    .line 5667
    .restart local v5    # "e1":Ljava/io/IOException;
    const-string v19, "InputMethodManagerService"

    const-string v20, "Failed to close."

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 5666
    .end local v2    # "currentImiId":Ljava/lang/String;
    .end local v3    # "depth":I
    .end local v5    # "e1":Ljava/io/IOException;
    .end local v6    # "firstNodeName":Ljava/lang/String;
    .end local v15    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v17    # "tempSubtypesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v18    # "type":I
    :catch_215
    move-exception v5

    .line 5667
    .restart local v5    # "e1":Ljava/io/IOException;
    const-string v20, "InputMethodManagerService"

    const-string v21, "Failed to close."

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_165
.end method

.method private static writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V
    .registers 16
    .param p1, "subtypesFile"    # Landroid/util/AtomicFile;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;",
            "Landroid/util/AtomicFile;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5549
    .local p0, "allSubtypes":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;>;"
    .local p2, "methodMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/view/inputmethod/InputMethodInfo;>;"
    if-eqz p2, :cond_76

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v10

    if-lez v10, :cond_76

    const/4 v6, 0x1

    .line 5550
    .local v6, "isSetMethodMap":Z
    :goto_9
    const/4 v2, 0x0

    .line 5552
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_a
    invoke-virtual {p1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 5553
    new-instance v7, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v7}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 5554
    .local v7, "out":Lorg/xmlpull/v1/XmlSerializer;
    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v10}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v2, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 5555
    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 5556
    const-string/jumbo v10, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v11, 0x1

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 5557
    const/4 v10, 0x0

    const-string/jumbo v11, "subtypes"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5558
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_3b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_106

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5559
    .local v5, "imiId":Ljava/lang/String;
    if-eqz v6, :cond_78

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_78

    .line 5560
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IME uninstalled or not valid.: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_67} :catch_68

    goto :goto_3b

    .line 5584
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "imiId":Ljava/lang/String;
    .end local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :catch_68
    move-exception v1

    .line 5585
    .local v1, "e":Ljava/io/IOException;
    const-string v10, "InputMethodManagerService"

    const-string v11, "Error writing subtypes"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5586
    if-eqz v2, :cond_75

    .line 5587
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 5590
    .end local v1    # "e":Ljava/io/IOException;
    :cond_75
    :goto_75
    return-void

    .line 5549
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v6    # "isSetMethodMap":Z
    :cond_76
    const/4 v6, 0x0

    goto :goto_9

    .line 5563
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v5    # "imiId":Ljava/lang/String;
    .restart local v6    # "isSetMethodMap":Z
    .restart local v7    # "out":Lorg/xmlpull/v1/XmlSerializer;
    :cond_78
    const/4 v10, 0x0

    :try_start_79
    const-string/jumbo v11, "imi"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5564
    const/4 v10, 0x0

    const-string/jumbo v11, "id"

    invoke-interface {v7, v10, v11, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5565
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    .line 5566
    .local v9, "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 5567
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_91
    if-ge v3, v0, :cond_fd

    .line 5568
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 5569
    .local v8, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    const/4 v10, 0x0

    const-string/jumbo v11, "subtype"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5570
    const/4 v10, 0x0

    const-string/jumbo v11, "icon"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getIconResId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5571
    const/4 v10, 0x0

    const-string/jumbo v11, "label"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getNameResId()I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5572
    const/4 v10, 0x0

    const-string/jumbo v11, "imeSubtypeLocale"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5573
    const/4 v10, 0x0

    const-string/jumbo v11, "imeSubtypeMode"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5574
    const/4 v10, 0x0

    const-string/jumbo v11, "imeSubtypeExtraValue"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->getExtraValue()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v7, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5575
    const/4 v11, 0x0

    const-string/jumbo v12, "isAuxiliary"

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v10

    if-eqz v10, :cond_fb

    const/4 v10, 0x1

    :goto_ea
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v11, v12, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5577
    const/4 v10, 0x0

    const-string/jumbo v11, "subtype"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5567
    add-int/lit8 v3, v3, 0x1

    goto :goto_91

    .line 5575
    :cond_fb
    const/4 v10, 0x0

    goto :goto_ea

    .line 5579
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_fd
    const/4 v10, 0x0

    const-string/jumbo v11, "imi"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_3b

    .line 5581
    .end local v0    # "N":I
    .end local v3    # "i":I
    .end local v5    # "imiId":Ljava/lang/String;
    .end local v9    # "subtypesList":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_106
    const/4 v10, 0x0

    const-string/jumbo v11, "subtypes"

    invoke-interface {v7, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 5582
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 5583
    invoke-virtual {p1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_113
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_113} :catch_68

    goto/16 :goto_75
.end method


# virtual methods
.method public addInputMethodSubtypes(Landroid/view/inputmethod/InputMethodInfo;[Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 11
    .param p1, "imi"    # Landroid/view/inputmethod/InputMethodInfo;
    .param p2, "additionalSubtypes"    # [Landroid/view/inputmethod/InputMethodSubtype;

    .prologue
    .line 5521
    iget-object v5, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 5522
    :try_start_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5523
    .local v3, "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    array-length v0, p2

    .line 5524
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_48

    .line 5525
    aget-object v2, p2, v1

    .line 5526
    .local v2, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 5527
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5524
    :goto_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 5529
    :cond_1a
    const-string v4, "InputMethodManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicated subtype definition found: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodSubtype;->getMode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 5536
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v3    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :catchall_45
    move-exception v4

    monitor-exit v5
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_45

    throw v4

    .line 5533
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    .restart local v3    # "subtypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_48
    :try_start_48
    iget-object v4, p0, mAdditionalSubtypesMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5534
    iget-object v4, p0, mAdditionalSubtypesMap:Ljava/util/HashMap;

    iget-object v6, p0, mAdditionalInputMethodSubtypeFile:Landroid/util/AtomicFile;

    iget-object v7, p0, mMethodMap:Ljava/util/HashMap;

    invoke-static {v4, v6, v7}, writeAdditionalInputMethodSubtypes(Ljava/util/HashMap;Landroid/util/AtomicFile;Ljava/util/HashMap;)V

    .line 5536
    monitor-exit v5
    :try_end_5b
    .catchall {:try_start_48 .. :try_end_5b} :catchall_45

    .line 5537
    return-void
.end method

.method public getAllAdditionalInputMethodSubtypes()Ljava/util/HashMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodSubtype;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5540
    iget-object v1, p0, mMethodMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 5541
    :try_start_3
    iget-object v0, p0, mAdditionalSubtypesMap:Ljava/util/HashMap;

    monitor-exit v1

    return-object v0

    .line 5542
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
