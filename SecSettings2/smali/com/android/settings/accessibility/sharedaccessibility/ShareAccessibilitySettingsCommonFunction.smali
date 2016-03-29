.class public Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;
.super Ljava/lang/Object;
.source "ShareAccessibilitySettingsCommonFunction.java"


# static fields
.field private static RevColorBlindTestCheck:I

.field private static is_galaxy_talkback:I

.field private static is_pagereader:I

.field private static is_switchaccess:I

.field private static is_talkback:I

.field private static mReceiveCVDType:I

.field private static mReceiveCVDseverity:F

.field private static mReceiveDominant_hand_type:I

.field private static mReceivePad_size:I

.field private static mReceivePointer_size:I

.field private static mReceivePointer_speed:I

.field private static mReceiveUserParameter:F

.field private static mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

.field private static mTtsFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 68
    sput v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTtsFlag:I

    .line 69
    sput v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_talkback:I

    .line 70
    sput v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_switchaccess:I

    .line 71
    sput v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_galaxy_talkback:I

    .line 72
    sput v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_pagereader:I

    .line 74
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

    .line 76
    sput v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->RevColorBlindTestCheck:I

    .line 78
    sput v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveDominant_hand_type:I

    .line 80
    const/4 v0, 0x2

    sput v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_speed:I

    .line 81
    sput v1, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_size:I

    .line 82
    sput v3, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePad_size:I

    .line 84
    const/4 v0, 0x3

    sput v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDType:I

    .line 85
    sput v2, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDseverity:F

    .line 86
    sput v2, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveUserParameter:F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadValue(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)Ljava/util/HashMap;
    .locals 17
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .prologue
    .line 262
    const/4 v9, 0x0

    .line 263
    .local v9, "loadValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "loadValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 266
    .restart local v9    # "loadValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v14, "ShareAccessibilitySettingsCommonFunction"

    const-string v15, "loadValue is entered"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 270
    .local v6, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 274
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    if-eqz p1, :cond_0

    .line 275
    :try_start_1
    new-instance v14, Ljava/io/FileInputStream;

    invoke-virtual/range {p1 .. p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :goto_0
    const/4 v3, 0x0

    .line 286
    .local v3, "doc":Lorg/w3c/dom/Document;
    :try_start_2
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v2, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 306
    :try_start_3
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Element;->normalize()V

    .line 308
    const-string v14, "SharingAccessibilitySettings"

    invoke-interface {v3, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 310
    .local v12, "rootNodes":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    invoke-interface {v12, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    if-nez v14, :cond_1

    .line 311
    const-string v14, "ShareAccessibilitySettingsCommonFunction"

    const-string v15, "It is not valid sharing accessibility settings file"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_c
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    :try_start_4
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_4 .. :try_end_4} :catch_a
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 348
    :goto_1
    :try_start_5
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_f

    .line 355
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "rootNodes":Lorg/w3c/dom/NodeList;
    :goto_2
    return-object v9

    .line 277
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :cond_0
    :try_start_6
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sput-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/StreamCorruptedException; {:try_start_6 .. :try_end_6} :catch_a
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v4

    .line 280
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_7
    const-string v14, "ShareAccessibilitySettingsCommonFunction"

    const-string v15, "FileNotFoundException : can\'t create FileInputStream"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_7 .. :try_end_7} :catch_a
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 348
    :try_start_8
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 349
    :catch_1
    move-exception v4

    .line 350
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 351
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v4

    .line 352
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 287
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    :catch_3
    move-exception v4

    .line 289
    .local v4, "e":Lorg/xml/sax/SAXException;
    :try_start_9
    const-string v14, "ShareAccessibilitySettingsCommonFunction"

    const-string v15, "It is not valid sharing accessibility settings file"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_9 .. :try_end_9} :catch_a
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 292
    :try_start_a
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_a .. :try_end_a} :catch_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 299
    :goto_3
    :try_start_b
    const-string v14, "ShareAccessibilitySettingsCommonFunction"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "not xml file. loadValue is : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 348
    :try_start_c
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_2

    .line 349
    :catch_4
    move-exception v4

    .line 350
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 293
    .local v4, "e":Lorg/xml/sax/SAXException;
    :catch_5
    move-exception v5

    .line 295
    .local v5, "e1":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_d .. :try_end_d} :catch_a
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_3

    .line 340
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "e":Lorg/xml/sax/SAXException;
    .end local v5    # "e1":Ljava/io/IOException;
    .end local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_6
    move-exception v4

    .line 341
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 348
    :try_start_f
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catch Ljava/lang/NullPointerException; {:try_start_f .. :try_end_f} :catch_10

    goto :goto_2

    .line 349
    :catch_7
    move-exception v4

    .line 350
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 351
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .local v4, "e":Lorg/xml/sax/SAXException;
    .restart local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_8
    move-exception v4

    .line 352
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2

    .line 315
    .end local v4    # "e":Ljava/lang/NullPointerException;
    .restart local v12    # "rootNodes":Lorg/w3c/dom/NodeList;
    :catch_9
    move-exception v4

    .line 317
    .local v4, "e":Ljava/io/IOException;
    :try_start_10
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_c
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_1

    .line 342
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "rootNodes":Lorg/w3c/dom/NodeList;
    :catch_a
    move-exception v4

    .line 343
    .local v4, "e":Ljava/io/StreamCorruptedException;
    :try_start_11
    invoke-virtual {v4}, Ljava/io/StreamCorruptedException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 348
    :try_start_12
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_11

    goto :goto_2

    .line 349
    :catch_b
    move-exception v4

    .line 350
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 324
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "rootNodes":Lorg/w3c/dom/NodeList;
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_4
    :try_start_13
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    array-length v14, v14

    if-ge v8, v14, :cond_4

    .line 325
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v14, v14, v8

    invoke-interface {v3, v14}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 326
    .local v7, "firstNodes":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    invoke-interface {v7, v14}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .line 327
    .local v11, "node":Lorg/w3c/dom/Node;
    if-eqz v11, :cond_2

    .line 328
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 329
    .local v10, "name":Ljava/lang/String;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 330
    .local v1, "childNode":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_3

    .line 331
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    .line 335
    .local v13, "value":Ljava/lang/String;
    :goto_5
    invoke-virtual {v9, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    .end local v1    # "childNode":Lorg/w3c/dom/Node;
    .end local v10    # "name":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 333
    .restart local v1    # "childNode":Lorg/w3c/dom/Node;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_3
    const/4 v13, 0x0

    .restart local v13    # "value":Ljava/lang/String;
    goto :goto_5

    .line 338
    .end local v1    # "childNode":Lorg/w3c/dom/Node;
    .end local v7    # "firstNodes":Lorg/w3c/dom/NodeList;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "node":Lorg/w3c/dom/Node;
    .end local v13    # "value":Ljava/lang/String;
    :cond_4
    const-string v14, "ShareAccessibilitySettingsCommonFunction"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "loadValue : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/io/StreamCorruptedException; {:try_start_13 .. :try_end_13} :catch_a
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    goto/16 :goto_1

    .line 344
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v8    # "i":I
    .end local v12    # "rootNodes":Lorg/w3c/dom/NodeList;
    :catch_c
    move-exception v4

    .line 345
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_14
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 348
    :try_start_15
    sget-object v14, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_d
    .catch Ljava/lang/NullPointerException; {:try_start_15 .. :try_end_15} :catch_12

    goto/16 :goto_2

    .line 349
    :catch_d
    move-exception v4

    .line 350
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 349
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    .restart local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "rootNodes":Lorg/w3c/dom/NodeList;
    :catch_e
    move-exception v4

    .line 350
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 351
    .end local v4    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v4

    .line 352
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .line 351
    .end local v2    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v12    # "rootNodes":Lorg/w3c/dom/NodeList;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :catch_10
    move-exception v4

    .line 352
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .line 351
    .local v4, "e":Ljava/io/StreamCorruptedException;
    :catch_11
    move-exception v4

    .line 352
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .line 351
    .local v4, "e":Ljava/io/IOException;
    :catch_12
    move-exception v4

    .line 352
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_2

    .line 347
    .end local v4    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v14

    .line 348
    :try_start_16
    sget-object v15, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->fis:Ljava/io/FileInputStream;

    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_16 .. :try_end_16} :catch_14

    .line 353
    :goto_6
    throw v14

    .line 349
    :catch_13
    move-exception v4

    .line 350
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 351
    .end local v4    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v4

    .line 352
    .local v4, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_6
.end method

.method public static applySettings(Landroid/content/Context;Ljava/util/HashMap;)V
    .locals 22
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 993
    .local p1, "receivedSettingValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    const-string v19, "applySettings entered"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    new-instance v13, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction$1;

    invoke-direct {v13}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction$1;-><init>()V

    .line 1002
    .local v13, "mInitListener":Landroid/speech/tts/TextToSpeech$OnInitListener;
    new-instance v14, Landroid/speech/tts/TextToSpeech;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    .line 1004
    .local v14, "mTts":Landroid/speech/tts/TextToSpeech;
    const/16 v18, 0x0

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTtsFlag:I

    .line 1005
    const/16 v18, 0x0

    sput-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

    .line 1007
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v8, v0, :cond_58

    .line 1008
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_56

    .line 1010
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "long_press_timeout"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 1013
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1466
    :cond_0
    :goto_1
    :try_start_0
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ApplySetting: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v20, v8

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " Value :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    sget-object v21, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v21, v21, v8

    invoke-static/range {v20 .. v21}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    .line 1007
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1015
    :cond_1
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_script_injection"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1017
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1019
    :cond_2
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_display_magnification_enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 1021
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1023
    :cond_3
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "speak_password"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1025
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1027
    :cond_4
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "incall_power_button_behavior"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1031
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1033
    :cond_5
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "tts_engine"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1034
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "tts_default_synth"

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 1036
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v14, v13, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setTtsEngine(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    sget v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTtsFlag:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 1041
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

    if-eqz v18, :cond_6

    .line 1042
    const-string v18, "tts_default_rate"

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v14, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setTtsRate(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    const/16 v18, 0x0

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTtsFlag:I

    goto/16 :goto_1

    .line 1046
    :cond_6
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    const-string v19, "mTTS_DEFAULT_RATE_VALUE is null"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1050
    :cond_7
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "tts_default_rate"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1052
    const/16 v18, 0x1

    :try_start_1
    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTtsFlag:I

    .line 1053
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    sput-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mTTS_DEFAULT_RATE_VALUE:Ljava/lang/String;

    .line 1055
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 1057
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v14, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setTtsRate(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 1059
    :catch_0
    move-exception v7

    .line 1060
    .local v7, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 1061
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v14, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setTtsRate(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1065
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "anykey_mode"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1067
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1069
    :cond_9
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "answering_bring_to_ear"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 1071
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1073
    :cond_a
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "answering_accessibility_tapping"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1075
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1077
    :cond_b
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessiblity_font_switch"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 1078
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setGlobalSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1080
    :cond_c
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "font_size"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1081
    const-string v18, "font_scale"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_d

    .line 1084
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 1086
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string v19, "font_scale"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setFontSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 1090
    :catch_1
    move-exception v7

    .line 1091
    .restart local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 1092
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v20, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    const-string v19, "font_scale"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setFontSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1101
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_d
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 1103
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "2"

    const-string v20, "1.0"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setFontSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1

    .line 1105
    :catch_2
    move-exception v7

    .line 1106
    .restart local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 1107
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "2"

    const-string v20, "1.0"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setFontSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1110
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_e
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "font_scale"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 1112
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "mono_audio_db"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 1115
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setMonoAudio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1118
    :cond_f
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "all_sound_off"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 1121
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setTurnOffAllSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1123
    :cond_10
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "assistant_menu"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1125
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setAssistantMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1129
    :cond_11
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "assistant_menu_dominant_hand_type"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 1132
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveDominant_hand_type:I

    .line 1135
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mReceiveDominant_hand_type"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveDominant_hand_type:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveDominant_hand_type:I

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1141
    :cond_12
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "assistant_menu_pointer_speed"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_13

    .line 1144
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_speed:I

    .line 1147
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mReceivePointer_speed"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_speed:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1149
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_speed:I

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1152
    :cond_13
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "assistant_menu_pointer_size"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_14

    .line 1155
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_size:I

    .line 1158
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mReceivePointer_size"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_size:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePointer_size:I

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1163
    :cond_14
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "assistant_menu_pad_size"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_15

    .line 1166
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePad_size:I

    .line 1169
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mReceivePad_size"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePad_size:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceivePad_size:I

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1175
    :cond_15
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "high_contrast"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 1177
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 1179
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setNegativeColourGreyscale(Landroid/content/Context;)V
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 1182
    :catch_3
    move-exception v7

    .line 1183
    .restart local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 1184
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setNegativeColourGreyscale(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1189
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_16
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_17

    .line 1192
    const-string v18, "com.google.android.marvin.talkback"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1193
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setAccessibilityEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1196
    :cond_17
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "galaxy_talkback"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_18

    .line 1200
    const-string v18, "com.samsung.android.app.talkback"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1201
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setGalaxyTalkbackEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1214
    :cond_18
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "switch_access_key"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    .line 1215
    const-string v18, "com.google.android.marvin.talkback"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1216
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSwitchAccessEnabled(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1218
    :cond_19
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "color_blind"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 1219
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1221
    :cond_1a
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "color_blind_test"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 1225
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->RevColorBlindTestCheck:I

    .line 1229
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "RevColorBlindTestCheck"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->RevColorBlindTestCheck:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1230
    :cond_1b
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "color_blind_cvdtype"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1c

    .line 1232
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDType:I

    .line 1234
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mReceiveCVDType"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDType:I

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDType:I

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 1237
    :cond_1c
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "color_blind_cvdseverity"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    .line 1239
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDseverity:F

    .line 1241
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mReceiveCVDseverity"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDseverity:F

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveCVDseverity:F

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_1

    .line 1244
    :cond_1d
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "color_blind_user_parameter"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1e

    .line 1246
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveUserParameter:F

    .line 1248
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mReceiveUserParameter"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveUserParameter:F

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1249
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    sget v20, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveUserParameter:F

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z

    goto/16 :goto_1

    .line 1251
    :cond_1e
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "speak_password"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1f

    .line 1253
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v18

    sput v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->mReceiveUserParameter:F

    goto/16 :goto_1

    .line 1255
    :cond_1f
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "enable_accessibility_global_gesture_enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_20

    .line 1257
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setGlobalSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1259
    :cond_20
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "easy_interaction"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_21

    .line 1260
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1262
    :cond_21
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "lcd_curtain"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 1263
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1265
    :cond_22
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "notification_reminder"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_23

    .line 1266
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1268
    :cond_23
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "time_key"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_24

    .line 1269
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1271
    :cond_24
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "notification_reminder_selectable"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_25

    .line 1272
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1274
    :cond_25
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "time_key_selectable"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_26

    .line 1275
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1277
    :cond_26
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "notification_reminder_vibrate"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_27

    .line 1278
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1280
    :cond_27
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "notification_reminder_led_indicator"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_28

    .line 1281
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1283
    :cond_28
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "notification_reminder_app_list"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_29

    .line 1284
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1286
    :cond_29
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "hearing_aid"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2a

    .line 1287
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setHearingAid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1289
    :cond_2a
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2b

    .line 1290
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1292
    :cond_2b
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_sec_captioning_enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2c

    .line 1293
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1295
    :cond_2c
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_font_scale"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2d

    .line 1296
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureFloatSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1298
    :cond_2d
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_preset"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2e

    .line 1299
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1301
    :cond_2e
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_typeface"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2f

    .line 1302
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1304
    :cond_2f
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_foreground_color"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_30

    .line 1305
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1307
    :cond_30
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_edge_type"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_31

    .line 1308
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1310
    :cond_31
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_edge_color"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_32

    .line 1311
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1313
    :cond_32
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_window_color"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_33

    .line 1314
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1316
    :cond_33
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_background_color"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_34

    .line 1317
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1319
    :cond_34
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_locale"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_35

    .line 1320
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1322
    :cond_35
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "rapid_key_input"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_36

    .line 1323
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1325
    :cond_36
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "rapid_key_input_menu_checked"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_37

    .line 1326
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1328
    :cond_37
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "air_motion_wake_up"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_38

    .line 1329
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->broadcastAirWakeupChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1331
    :cond_38
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "direct_access"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_39

    .line 1332
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1334
    :cond_39
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "direct_accessibility"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3a

    .line 1335
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1337
    :cond_3a
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "direct_talkback"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3b

    .line 1338
    const-string v18, "com.google.android.marvin.talkback"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1339
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1342
    :cond_3b
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "direct_negative"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3c

    .line 1343
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1345
    :cond_3c
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "direct_greyscale"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3d

    .line 1346
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1348
    :cond_3d
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "direct_color_adjustment"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3e

    .line 1349
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1351
    :cond_3e
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_display_inversion_enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3f

    .line 1352
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1354
    :cond_3f
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_display_daltonizer_enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_40

    .line 1355
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1357
    :cond_40
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_display_daltonizer"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_41

    .line 1358
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1360
    :cond_41
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "direct_access_magnifier"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_42

    .line 1361
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1374
    :cond_42
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_magnifier"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_43

    .line 1375
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1377
    :cond_43
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "hover_zoom_value"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_44

    .line 1378
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1380
    :cond_44
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "hover_zoom_magnifier_size"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_45

    .line 1381
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1383
    :cond_45
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "smart_scroll"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_46

    .line 1384
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1386
    :cond_46
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "face_smart_scroll"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_47

    .line 1387
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1389
    :cond_47
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "smart_scroll_sensitivity"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_48

    .line 1390
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1392
    :cond_48
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "smart_scroll_visual_feedback_icon"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_49

    .line 1393
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1395
    :cond_49
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4a

    .line 1396
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1398
    :cond_4a
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "air_motion_call_accept"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4b

    .line 1400
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 1402
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->changeAirCallAccept(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_1

    .line 1404
    :catch_4
    move-exception v7

    .line 1405
    .restart local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 1406
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->changeAirCallAccept(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1409
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_4b
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "direct_access_control"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4c

    .line 1410
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1412
    :cond_4c
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "audio_balance"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4d

    .line 1413
    const-string v19, "sound_balance"

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1415
    :cond_4d
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "sound_balance"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4e

    .line 1416
    const-string v19, "sound_balance"

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1418
    :cond_4e
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "show_button_background"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_50

    .line 1419
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    :try_start_6
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1423
    .local v5, "am":Landroid/app/IActivityManager;
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    .line 1424
    .local v6, "config":Landroid/content/res/Configuration;
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4f

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    iput v0, v6, Landroid/content/res/Configuration;->showButtonBackground:I

    .line 1425
    invoke-interface {v5, v6}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_1

    .line 1426
    .end local v5    # "am":Landroid/app/IActivityManager;
    .end local v6    # "config":Landroid/content/res/Configuration;
    :catch_5
    move-exception v7

    .line 1428
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 1424
    .end local v7    # "e":Landroid/os/RemoteException;
    .restart local v5    # "am":Landroid/app/IActivityManager;
    .restart local v6    # "config":Landroid/content/res/Configuration;
    :cond_4f
    const/16 v18, 0x0

    goto :goto_3

    .line 1430
    .end local v5    # "am":Landroid/app/IActivityManager;
    .end local v6    # "config":Landroid/content/res/Configuration;
    :cond_50
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "greyscale_mode"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_51

    .line 1431
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1432
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setNegativeColourGreyscale(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 1433
    :cond_51
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "high_text_contrast_enabled"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_52

    .line 1434
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1435
    :cond_52
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "high_contrast_keyboard"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_55

    .line 1436
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1437
    .local v9, "import_value":Ljava/lang/String;
    if-eqz v9, :cond_53

    const-string v18, ""

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_54

    .line 1438
    :cond_53
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    const-string v19, "Cannot import High contrast keyboard value. There are no saved value"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1440
    :cond_54
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string v20, "high_contrast_keyboard"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2, v9}, Lcom/android/settings/accessibility/AccessibilityUtils;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1445
    .end local v9    # "import_value":Ljava/lang/String;
    :cond_55
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v19, v8

    invoke-static/range {v18 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 1447
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_6

    goto/16 :goto_1

    .line 1449
    :catch_6
    move-exception v7

    .line 1450
    .local v7, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 1451
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v19, v18, v8

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1456
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_56
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    const-string v19, "KeyList is null"

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_locale"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_57

    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, "accessibility_captioning_typeface"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1461
    :cond_57
    sget-object v18, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v18, v18, v8

    const-string v19, ""

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1473
    :catch_7
    move-exception v7

    .line 1475
    .restart local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v7}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto/16 :goto_2

    .line 1484
    .end local v7    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_58
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "color_blind"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    .line 1486
    .local v10, "isSetting":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "color_blind_cvdtype"

    const/16 v20, 0x3

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 1488
    .local v12, "mCVDType":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v10, v0, :cond_5a

    const/16 v18, 0x1

    move/from16 v19, v18

    :goto_4
    const/16 v18, 0x3

    move/from16 v0, v18

    if-eq v12, v0, :cond_5b

    const/16 v18, 0x1

    :goto_5
    and-int v18, v18, v19

    if-eqz v18, :cond_59

    .line 1489
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "color_blind_cvdseverity"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v11

    .line 1491
    .local v11, "mCVDSeverity":F
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "color_blind_user_parameter"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v15

    .line 1493
    .local v15, "mUserParameter":F
    const-string v18, "power"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    .line 1494
    .local v16, "powerManager":Landroid/os/PowerManager;
    const v18, 0x3f19999a    # 0.6f

    cmpg-float v18, v11, v18

    if-gez v18, :cond_5c

    const/16 v18, 0x1

    :goto_6
    const-string v19, "power"

    invoke-static/range {v19 .. v19}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v19

    move-object/from16 v0, v16

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->setColorWeaknessMode(ZLandroid/os/IBinder;)V

    .line 1496
    const-string v18, "accessibility"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    .line 1498
    .local v4, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v4, v0, v15}, Landroid/view/accessibility/AccessibilityManager;->setColorBlind(ZF)Z

    .line 1501
    .end local v4    # "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v11    # "mCVDSeverity":F
    .end local v15    # "mUserParameter":F
    .end local v16    # "powerManager":Landroid/os/PowerManager;
    :cond_59
    new-instance v17, Landroid/content/Intent;

    const-string v18, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    invoke-direct/range {v17 .. v18}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1503
    .local v17, "share_color_blind_value_intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1505
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "share_color_blind_value_intent"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    const-string v18, "ShareAccessibilitySettingsCommonFunction"

    const-string v19, "ApplySetting is completed."

    invoke-static/range {v18 .. v19}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    return-void

    .line 1488
    .end local v17    # "share_color_blind_value_intent":Landroid/content/Intent;
    :cond_5a
    const/16 v18, 0x0

    move/from16 v19, v18

    goto/16 :goto_4

    :cond_5b
    const/16 v18, 0x0

    goto/16 :goto_5

    .line 1494
    .restart local v11    # "mCVDSeverity":F
    .restart local v15    # "mUserParameter":F
    .restart local v16    # "powerManager":Landroid/os/PowerManager;
    :cond_5c
    const/16 v18, 0x0

    goto :goto_6
.end method

.method public static broadcastAirCallAcceptChanged(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "isEnable"    # Z

    .prologue
    .line 1758
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_CALL_ACCEPT_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1759
    .local v0, "motion_changed":Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1760
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1761
    return-void
.end method

.method public static broadcastAirWakeupChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 2051
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2053
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.gesture.AIR_WAKE_UP_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2054
    .local v0, "motion_changed":Landroid/content/Intent;
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 2055
    invoke-static {p0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 2056
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2057
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2063
    :goto_0
    return-void

    .line 2059
    :cond_0
    const-string v1, "isEnable"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2060
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2061
    invoke-static {p0}, Lcom/android/settings/Utils;->autoTurnOffAirMotionEngine(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static changeAirCallAccept(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1764
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1765
    .local v0, "call_accept":I
    if-ne v0, v3, :cond_0

    .line 1766
    invoke-static {p0}, Lcom/android/settings/Utils;->turnOnAirMotionEngine(Landroid/content/Context;)V

    .line 1767
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_call_accept"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1768
    invoke-static {p0, v3}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->broadcastAirCallAcceptChanged(Landroid/content/Context;Z)V

    .line 1773
    :goto_0
    return-void

    .line 1770
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "air_motion_call_accept"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1771
    invoke-static {p0, v4}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->broadcastAirCallAcceptChanged(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method public static createFolder(Ljava/lang/String;)V
    .locals 4
    .param p0, "strFolderPath"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "accFolder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    .line 202
    const-string v1, "saveValueToFile"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDirectory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_0
.end method

.method public static getAvailableExternalMemorySize(Landroid/content/Context;)J
    .locals 14
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 2001
    const-wide/16 v0, 0x0

    .line 2002
    .local v0, "freeSize":J
    const-string v9, "storage"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/storage/StorageManager;

    .line 2003
    .local v5, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v5}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v6

    .line 2004
    .local v6, "storageVolumes":[Landroid/os/storage/StorageVolume;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v9, v6

    if-ge v2, v9, :cond_1

    .line 2005
    aget-object v8, v6, v2

    .line 2007
    .local v8, "volume":Landroid/os/storage/StorageVolume;
    const-string v9, "sd"

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2009
    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 2011
    .local v3, "mExternalStorageSdPath":Ljava/lang/String;
    invoke-virtual {v5, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2012
    .local v7, "strMountState":Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 2013
    new-instance v4, Landroid/os/StatFs;

    invoke-direct {v4, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2014
    .local v4, "stats":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v12, v9

    mul-long v0, v10, v12

    .line 2004
    .end local v3    # "mExternalStorageSdPath":Ljava/lang/String;
    .end local v4    # "stats":Landroid/os/StatFs;
    .end local v7    # "strMountState":Ljava/lang/String;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2018
    .end local v8    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1
    return-wide v0
.end method

.method public static getAvailableInternalMemorySize()J
    .locals 8

    .prologue
    .line 1987
    const-wide/16 v0, 0x0

    .line 1988
    .local v0, "freeSize":J
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1989
    .local v2, "internalStorageState":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "unmounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "mounted_ro"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1992
    :cond_0
    new-instance v3, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1993
    .local v3, "stats":Landroid/os/StatFs;
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    .line 1995
    .end local v3    # "stats":Landroid/os/StatFs;
    :cond_1
    return-wide v0
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1967
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "enabled_accessibility_services"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1969
    .local v4, "enabledServicesSetting":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 1970
    const-string v4, ""

    .line 1972
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1973
    .local v3, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    sget-object v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1974
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v4}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1975
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1976
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1977
    .local v1, "componentNameString":Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 1978
    .local v2, "enabledService":Landroid/content/ComponentName;
    if-eqz v2, :cond_1

    .line 1979
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1982
    .end local v1    # "componentNameString":Ljava/lang/String;
    .end local v2    # "enabledService":Landroid/content/ComponentName;
    :cond_2
    return-object v3
.end method

.method public static getExternalMemoryPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "additional_path"    # Ljava/lang/String;

    .prologue
    .line 236
    const/4 v2, 0x0

    .line 238
    .local v2, "mExternalStorageSdPath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 240
    .local v1, "isExternalMemoryAvailable":Z
    const-string v6, "storage"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    .line 241
    .local v3, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    .line 242
    .local v4, "storageVolumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v6, v4

    if-ge v0, v6, :cond_0

    .line 243
    aget-object v5, v4, v0

    .line 245
    .local v5, "volume":Landroid/os/storage/StorageVolume;
    const-string v6, "sd"

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 246
    invoke-virtual {v5}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 251
    .end local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    :cond_1
    const-string v6, "ShareAccessibilitySettingsCommonFunction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mExternalStorageSdPath : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    return-object v2

    .line 242
    .restart local v5    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static isDualFolderType(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1582
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.folder_type"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.dual_lcd"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isExternalMemoryAvailable(Landroid/content/Context;)Z
    .locals 10
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 214
    .local v1, "isExternalMemoryAvailable":Z
    const-string v8, "storage"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 215
    .local v4, "storageManager":Landroid/os/storage/StorageManager;
    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 216
    .local v5, "storageVolumes":[Landroid/os/storage/StorageVolume;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v8, v5

    if-ge v0, v8, :cond_2

    .line 217
    aget-object v7, v5, v0

    .line 219
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    const-string v8, "sd"

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 221
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "mExternalStorageSdPath":Ljava/lang/String;
    invoke-virtual {v4, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 224
    .local v6, "strMountState":Ljava/lang/String;
    const-string v8, "mounted"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 225
    const/4 v1, 0x1

    :goto_1
    move v2, v1

    .line 232
    .end local v1    # "isExternalMemoryAvailable":Z
    .end local v3    # "mExternalStorageSdPath":Ljava/lang/String;
    .end local v6    # "strMountState":Ljava/lang/String;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    .local v2, "isExternalMemoryAvailable":I
    :goto_2
    return v2

    .line 227
    .end local v2    # "isExternalMemoryAvailable":I
    .restart local v1    # "isExternalMemoryAvailable":Z
    .restart local v3    # "mExternalStorageSdPath":Ljava/lang/String;
    .restart local v6    # "strMountState":Ljava/lang/String;
    .restart local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 216
    .end local v3    # "mExternalStorageSdPath":Ljava/lang/String;
    .end local v6    # "strMountState":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_2
    move v2, v1

    .line 232
    .restart local v2    # "isExternalMemoryAvailable":I
    goto :goto_2
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)I
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 1780
    const/16 v1, 0x3a

    .line 1781
    .local v1, "ENABLED_SERVICES_SEPARATOR":C
    const-string v0, "com.google.android.marvin.talkback"

    .line 1782
    .local v0, "DEFAULT_SCREENREADER_NAME":Ljava/lang/String;
    const-string v2, "com.samsung.android.app.talkback"

    .line 1783
    .local v2, "SAMSUNG_SCREENREADER_NAME":Ljava/lang/String;
    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v10, 0x3a

    invoke-direct {v7, v10}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1784
    .local v7, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    if-nez p0, :cond_1

    .line 1820
    :cond_0
    :goto_0
    return v8

    .line 1787
    :cond_1
    const/4 v6, 0x0

    .line 1788
    .local v6, "enabledServicesSetting":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 1789
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_accessibility_services"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1791
    :cond_2
    if-nez v6, :cond_3

    .line 1792
    const-string v6, ""

    .line 1794
    :cond_3
    move-object v3, v7

    .line 1795
    .local v3, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v3, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1796
    :cond_4
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1797
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    .line 1798
    .local v4, "componentNameString":Ljava/lang/String;
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 1799
    .local v5, "enabledService":Landroid/content/ComponentName;
    if-eqz v5, :cond_4

    .line 1800
    const-string v10, "com.google.android.marvin.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 1802
    const/4 v8, 0x1

    goto :goto_0

    .line 1803
    :cond_5
    const-string v10, "com.samsung.android.app.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    const-string v10, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 1805
    const/4 v8, 0x2

    goto :goto_0

    .line 1807
    :cond_6
    sget v10, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x16

    if-lt v10, v11, :cond_7

    .line 1809
    const-string v10, "com.google.android.marvin.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v8, v9

    .line 1811
    goto :goto_0

    .line 1813
    :cond_7
    const-string v10, "com.google.android.marvin.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    invoke-virtual {v6, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v8, v9

    .line 1816
    goto/16 :goto_0
.end method

.method public static saveValue(Landroid/content/Context;)Ljava/util/HashMap;
    .locals 11
    .param p0, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 360
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 361
    .local v3, "settingValue":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_68

    .line 364
    :try_start_0
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "long_press_timeout"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/16 v8, 0x1f4

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    :cond_1
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_script_injection"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 370
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 918
    :catch_0
    move-exception v1

    .line 920
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "ShareAccessibilitySettingsCommonFunction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  value is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 374
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    :try_start_1
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_display_magnification_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 376
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 380
    :cond_3
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "speak_password"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 382
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 386
    :cond_4
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "incall_power_button_behavior"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 388
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 391
    :cond_5
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 392
    const-string v5, "com.google.android.marvin.talkback"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 393
    invoke-static {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isTalkBackEnabled(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v9, :cond_6

    .line 394
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 396
    :cond_6
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 399
    :cond_7
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 400
    :cond_8
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "galaxy_talkback"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 401
    const-string v5, "com.samsung.android.app.talkback"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 402
    invoke-static {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isTalkBackEnabled(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v10, :cond_9

    .line 403
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    :goto_2
    const-string v5, "ShareAccessibilitySettingsCommonFunction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TalkBack = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isTalkBackEnabled(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 405
    :cond_9
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 409
    :cond_a
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 410
    :cond_b
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "switch_access_key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 411
    const-string v5, "com.google.android.marvin.talkback"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 412
    invoke-static {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isTalkBackEnabled(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_c

    .line 413
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 415
    :cond_c
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 418
    :cond_d
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 419
    :cond_e
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "tts_engine"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 420
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "tts_default_synth"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 422
    :cond_f
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "tts_default_rate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 423
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 425
    :cond_10
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "font_scale"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 426
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "font_scale"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 428
    :cond_11
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "high_contrast"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 429
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 433
    :cond_12
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "greyscale_mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 434
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 438
    :cond_13
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "color_blind"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 439
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 443
    :cond_14
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "color_blind_test"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 445
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 449
    :cond_15
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "color_blind_cvdtype"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 451
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x3

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 454
    :cond_16
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "color_blind_cvdseverity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 456
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 459
    :cond_17
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "color_blind_user_parameter"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 461
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 464
    :cond_18
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_display_inversion_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 465
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 469
    :cond_19
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_display_daltonizer_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 470
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 474
    :cond_1a
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_display_daltonizer"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 475
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 479
    :cond_1b
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "answering_accessibility_tapping"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 481
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 485
    :cond_1c
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "assistant_menu"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 486
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 491
    :cond_1d
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "assistant_menu_dominant_hand_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 493
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 498
    :cond_1e
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "assistant_menu_pointer_speed"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 500
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 505
    :cond_1f
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "assistant_menu_pointer_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 507
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 512
    :cond_20
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "assistant_menu_pad_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 514
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 520
    :cond_21
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "access_control_use"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 521
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 525
    :cond_22
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "access_control_power_button"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_23

    .line 526
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 530
    :cond_23
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "access_control_volume_button"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 531
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 535
    :cond_24
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "access_control_keyboard_block"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 536
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 540
    :cond_25
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "access_control_time_set_hour"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 541
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 545
    :cond_26
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "access_control_time_set_min"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 546
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 550
    :cond_27
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "anykey_mode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 552
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 556
    :cond_28
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "voice_input_control_incomming_calls"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_29

    .line 558
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 562
    :cond_29
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "answering_bring_to_ear"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 564
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 568
    :cond_2a
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "mono_audio_db"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 570
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 574
    :cond_2b
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "all_sound_off"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 576
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 580
    :cond_2c
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "enable_accessibility_global_gesture_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 582
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 586
    :cond_2d
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "easy_interaction"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 588
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 592
    :cond_2e
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "lcd_curtain"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 594
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 598
    :cond_2f
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "notification_reminder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 600
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 604
    :cond_30
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "time_key"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 606
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 610
    :cond_31
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "notification_reminder_selectable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 612
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 616
    :cond_32
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "time_key_selectable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 618
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 622
    :cond_33
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "notification_reminder_vibrate"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 624
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 628
    :cond_34
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "notification_reminder_led_indicator"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 630
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 634
    :cond_35
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "notification_reminder_app_list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 636
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 639
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_37

    .line 640
    :cond_36
    const-string v5, "ShareAccessibilitySettingsCommonFunction"

    const-string v6, "Default value is skip"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 642
    :cond_37
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 658
    .end local v4    # "value":Ljava/lang/String;
    :cond_38
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_magnifier"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 659
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 661
    :cond_39
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "hover_zoom_value"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    .line 662
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 664
    :cond_3a
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "hover_zoom_magnifier_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 665
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 667
    :cond_3b
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "air_motion_call_accept"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 669
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 673
    :cond_3c
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "hearing_aid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 675
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 679
    :cond_3d
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_captioning_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 681
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 685
    :cond_3e
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_sec_captioning_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 687
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 691
    :cond_3f
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_captioning_font_scale"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 693
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 697
    :cond_40
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_captioning_preset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    .line 699
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 703
    :cond_41
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_captioning_typeface"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_44

    .line 705
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 708
    .restart local v4    # "value":Ljava/lang/String;
    if-eqz v4, :cond_42

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_43

    .line 709
    :cond_42
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 711
    :cond_43
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 715
    .end local v4    # "value":Ljava/lang/String;
    :cond_44
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_captioning_foreground_color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    .line 717
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 721
    :cond_45
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_captioning_edge_type"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_46

    .line 723
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 727
    :cond_46
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_captioning_edge_color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 729
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/high16 v8, -0x1000000

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 733
    :cond_47
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_captioning_window_color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 735
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/16 v8, 0xff

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 739
    :cond_48
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_captioning_background_color"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 741
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/high16 v8, -0x1000000

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 745
    :cond_49
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessibility_captioning_locale"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4c

    .line 747
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 750
    .restart local v4    # "value":Ljava/lang/String;
    if-eqz v4, :cond_4a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4b

    .line 751
    :cond_4a
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 753
    :cond_4b
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 757
    .end local v4    # "value":Ljava/lang/String;
    :cond_4c
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "rapid_key_input"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 759
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 763
    :cond_4d
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "rapid_key_input_menu_checked"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 765
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 769
    :cond_4e
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "air_motion_wake_up"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 771
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 775
    :cond_4f
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "direct_access"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 777
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 781
    :cond_50
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "direct_accessibility"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_51

    .line 783
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 787
    :cond_51
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "direct_talkback"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 789
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 793
    :cond_52
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "smart_scroll"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 795
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 799
    :cond_53
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "face_smart_scroll"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    .line 801
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 805
    :cond_54
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "smart_scroll_sensitivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    .line 807
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 811
    :cond_55
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "smart_scroll_visual_feedback_icon"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 813
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 817
    :cond_56
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "VIB_NOTIFICATION_MAGNITUDE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_57

    .line 819
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 823
    :cond_57
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "direct_negative"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 825
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 829
    :cond_58
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "direct_greyscale"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_59

    .line 831
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 835
    :cond_59
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "direct_color_adjustment"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 837
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 841
    :cond_5a
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "direct_access_magnifier"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5b

    .line 843
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 853
    :cond_5b
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "direct_access_control"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 855
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 859
    :cond_5c
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "direct_s_talkback"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 862
    const-string v5, "com.samsung.android.app.talkback"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 863
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 869
    :cond_5d
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "direct_universal_switch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 872
    const-string v5, "com.samsung.android.universalswitch"

    invoke-static {p0, v5}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 873
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 885
    :cond_5e
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "audio_balance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 887
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sound_balance"

    const/16 v8, 0x32

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 889
    :cond_5f
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "sound_balance"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_60

    .line 891
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sound_balance"

    const/16 v8, 0x32

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 893
    :cond_60
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "show_button_background"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_61

    .line 895
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 897
    :cond_61
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "accessiblity_font_switch"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_62

    .line 898
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 900
    :cond_62
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "font_size"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 901
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 903
    :cond_63
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "high_text_contrast_enabled"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 904
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 905
    :cond_64
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    const-string v6, "high_contrast_keyboard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 906
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "content://com.sec.android.inputmethod.implement.setting.provider.KeyboardSettingsProvider"

    const-string v7, "high_contrast_keyboard"

    invoke-static {v5, v6, v7}, Lcom/android/settings/accessibility/AccessibilityUtils;->getString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "current_value":Ljava/lang/String;
    if-eqz v0, :cond_65

    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    .line 908
    :cond_65
    const-string v5, "ShareAccessibilitySettingsCommonFunction"

    const-string v6, "Cannot export High contrast keyboard value. There are no saved value"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 910
    :cond_66
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 914
    .end local v0    # "current_value":Ljava/lang/String;
    :cond_67
    sget-object v5, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->keyList:[Ljava/lang/String;

    aget-object v7, v7, v2

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 925
    :cond_68
    const-string v5, "ShareAccessibilitySettingsCommonFunction"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SettingValue: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    return-object v3
.end method

.method public static saveValueToFile(Ljava/util/HashMap;Ljava/io/File;)V
    .locals 11
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 91
    .local v2, "fileos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .local v6, "newxmlfile":Ljava/io/File;
    :try_start_1
    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :goto_0
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2    # "fileos":Ljava/io/FileOutputStream;
    .local v3, "fileos":Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 107
    .end local v3    # "fileos":Ljava/io/FileOutputStream;
    .restart local v2    # "fileos":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_3
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v7

    .line 109
    .local v7, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    const-string v8, "UTF-8"

    invoke-interface {v7, v2, v8}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 112
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 114
    const-string v8, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v9, 0x1

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 116
    const-string v8, "ro.product.model"

    const-string v9, "Unknown"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, "ModelNumber":Ljava/lang/String;
    const-string v8, "ShareAccessibilitySettingsCommonFunction"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "model is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v8, 0x0

    const-string v9, "SharingAccessibilitySettings"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 126
    const/4 v8, 0x0

    const-string v9, "Version"

    const-string v10, "1.0"

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 127
    const/4 v8, 0x0

    const-string v9, "Platform"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {v7, v8, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 128
    const/4 v8, 0x0

    const-string v9, "ModelNumber"

    invoke-interface {v7, v8, v9, v0}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 135
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 136
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 137
    .local v5, "key":Ljava/lang/String;
    const/4 v8, 0x0

    invoke-interface {v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 138
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 139
    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 140
    const-string v9, "[saveValueToFile]"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "key : ["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "]"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    const/4 v8, 0x0

    invoke-interface {v7, v8, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 152
    .end local v0    # "ModelNumber":Ljava/lang/String;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "newxmlfile":Ljava/io/File;
    .end local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    .line 168
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    return-void

    .line 95
    .restart local v6    # "newxmlfile":Ljava/io/File;
    :catch_1
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    const-string v8, "ShareAccessibilitySettingsCommonFunction"

    const-string v9, "IOException: exception in createNewFile() method"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    .line 155
    .end local v1    # "e":Ljava/io/IOException;
    .end local v6    # "newxmlfile":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 157
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_3

    .line 164
    :catch_3
    move-exception v8

    goto :goto_3

    .line 102
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v6    # "newxmlfile":Ljava/io/File;
    :catch_4
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    const-string v8, "ShareAccessibilitySettingsCommonFunction"

    const-string v9, "FileNotFoundException : can\'t create FileOutputStream"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    .line 159
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "newxmlfile":Ljava/io/File;
    :catchall_0
    move-exception v8

    .line 161
    if-eqz v2, :cond_2

    .line 162
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 165
    :cond_2
    :goto_4
    throw v8

    .line 146
    .restart local v0    # "ModelNumber":Ljava/lang/String;
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v6    # "newxmlfile":Ljava/io/File;
    .restart local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_3
    const/4 v8, 0x0

    :try_start_b
    const-string v9, "SharingAccessibilitySettings"

    invoke-interface {v7, v8, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 147
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 149
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 151
    const/4 v8, 0x0

    sput v8, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->SaveFlag:I
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 161
    if-eqz v2, :cond_1

    .line 162
    :try_start_c
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    goto :goto_3

    .line 164
    :catch_5
    move-exception v8

    goto :goto_3

    .end local v0    # "ModelNumber":Ljava/lang/String;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v6    # "newxmlfile":Ljava/io/File;
    .end local v7    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v8

    goto :goto_3

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v9

    goto :goto_4
.end method

.method public static setAccessibilityEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1843
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_talkback:I

    .line 1844
    sget v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_talkback:I

    if-ne v0, v1, :cond_0

    .line 1845
    invoke-static {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->turnOffSoundDetector(Landroid/content/Context;)V

    .line 1846
    const-string v0, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-static {p0, v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1850
    :goto_0
    return-void

    .line 1848
    :cond_0
    const-string v0, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setAssistantMenu(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1738
    const/4 v0, 0x0

    .line 1740
    .local v0, "is_serviceOn":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1747
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1749
    const-string v1, "ShareAccessibilitySettingsCommonFunction"

    const-string v2, "AssistantMenu Service Start!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1755
    return-void

    .line 1752
    :cond_0
    const-string v1, "ShareAccessibilitySettingsCommonFunction"

    const-string v2, "AssistantMenu Service Stop!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setFontSize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "index"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1594
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "font_size"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 1595
    .local v8, "previousIndex":I
    const/4 v3, 0x0

    .line 1596
    .local v3, "fontIndex":I
    const/4 v4, 0x0

    .line 1597
    .local v4, "fontScale":F
    const/4 v0, 0x6

    .line 1599
    .local v0, "HUGE_FONT_INDEX":I
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1600
    invoke-static/range {p3 .. p3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 1602
    const/4 v6, 0x0

    .line 1604
    .local v6, "indices":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f11000d

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1605
    invoke-static {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->isDualFolderType(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1606
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f11000f

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .line 1615
    :cond_0
    array-length v7, v6

    .line 1617
    .local v7, "mIsFont11Level":I
    const/4 v10, 0x3

    if-ne v7, v10, :cond_7

    .line 1619
    const/4 v0, 0x2

    .line 1620
    if-le v3, v0, :cond_1

    .line 1621
    move v3, v0

    .line 1632
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "font_size"

    invoke-static {v10, v11, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1634
    if-eqz v6, :cond_2

    array-length v10, v6

    add-int/lit8 v11, v3, 0x1

    if-ge v10, v11, :cond_9

    .line 1635
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 1641
    :goto_1
    aget-object v10, v6, v0

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    cmpl-float v10, v4, v10

    if-lez v10, :cond_3

    .line 1642
    aget-object v10, v6, v0

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    .line 1645
    :cond_3
    sget-object v10, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->mCurConfig:Landroid/content/res/Configuration;

    iput v4, v10, Landroid/content/res/Configuration;->fontScale:F

    .line 1647
    const/16 v10, 0xb

    if-ne v7, v10, :cond_a

    if-le v3, v0, :cond_a

    .line 1648
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1649
    .local v5, "i":Landroid/content/Intent;
    const-string v10, "large_font"

    invoke-virtual {v5, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1650
    const-string v10, "ShareAccessibilitySettingsCommonFunction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "com.samsung.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1665
    .end local v5    # "i":Landroid/content/Intent;
    :cond_4
    :goto_2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1666
    .local v1, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v9

    .line 1671
    .local v9, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v10, "android.app.IActivityManager"

    invoke-virtual {v1, v10}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1673
    sget-object v10, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->mCurConfig:Landroid/content/res/Configuration;

    const/4 v11, 0x0

    invoke-virtual {v10, v1, v11}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1674
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    const/16 v11, 0x88

    const/4 v12, 0x0

    invoke-interface {v10, v11, v1, v9, v12}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 1675
    invoke-virtual {v9}, Landroid/os/Parcel;->readException()V

    .line 1676
    const-string v10, "ShareAccessibilitySettingsCommonFunction"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "android.settings.FONT_SIZE_CHANGED result = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v9}, Landroid/os/Parcel;->readInt()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    if-eqz v1, :cond_5

    .line 1682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1683
    :cond_5
    if-eqz v9, :cond_6

    .line 1684
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    .line 1687
    :cond_6
    :goto_3
    return-void

    .line 1623
    .end local v1    # "data":Landroid/os/Parcel;
    .end local v9    # "reply":Landroid/os/Parcel;
    :cond_7
    const/16 v10, 0xb

    if-eq v7, v10, :cond_1

    .line 1625
    if-le v3, v0, :cond_8

    .line 1626
    move v3, v0

    .line 1628
    :cond_8
    const/4 v0, 0x5

    goto/16 :goto_0

    .line 1637
    :cond_9
    aget-object v10, v6, v3

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto/16 :goto_1

    .line 1652
    :cond_a
    if-gt v8, v0, :cond_b

    if-le v3, v0, :cond_b

    .line 1653
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1654
    .restart local v5    # "i":Landroid/content/Intent;
    const-string v10, "large_font"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1655
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1656
    const-string v10, "ShareAccessibilitySettingsCommonFunction"

    const-string v11, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1657
    .end local v5    # "i":Landroid/content/Intent;
    :cond_b
    if-le v8, v0, :cond_4

    if-gt v3, v0, :cond_4

    .line 1658
    new-instance v5, Landroid/content/Intent;

    const-string v10, "com.samsung.settings.FONT_SIZE_CHANGED"

    invoke-direct {v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1659
    .restart local v5    # "i":Landroid/content/Intent;
    const-string v10, "large_font"

    const/4 v11, 0x0

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1660
    invoke-virtual {p0, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1661
    const-string v10, "ShareAccessibilitySettingsCommonFunction"

    const-string v11, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1677
    .end local v5    # "i":Landroid/content/Intent;
    .restart local v1    # "data":Landroid/os/Parcel;
    .restart local v9    # "reply":Landroid/os/Parcel;
    :catch_0
    move-exception v2

    .line 1678
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v10, "ShareAccessibilitySettingsCommonFunction"

    const-string v11, "Unable to save font size"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1681
    if-eqz v1, :cond_c

    .line 1682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1683
    :cond_c
    if-eqz v9, :cond_6

    .line 1684
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    goto :goto_3

    .line 1681
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v10

    if-eqz v1, :cond_d

    .line 1682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1683
    :cond_d
    if-eqz v9, :cond_e

    .line 1684
    invoke-virtual {v9}, Landroid/os/Parcel;->recycle()V

    :cond_e
    throw v10
.end method

.method public static setGalaxyTalkbackEnabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1853
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_galaxy_talkback:I

    .line 1854
    sget v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_galaxy_talkback:I

    if-ne v0, v1, :cond_0

    .line 1855
    invoke-static {p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->turnOffSoundDetector(Landroid/content/Context;)V

    .line 1856
    const-string v0, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-static {p0, v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1860
    :goto_0
    return-void

    .line 1858
    :cond_0
    const-string v0, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setGlobalSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1575
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    :goto_0
    return-void

    .line 1576
    :catch_0
    move-exception v0

    .line 1577
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setHearingAid(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1730
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1731
    .local v0, "mAudioManager":Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, p1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1732
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call_hearing_aid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ON"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1733
    .local v1, "mAudioManagerParameter":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 1734
    return-void

    .line 1732
    .end local v1    # "mAudioManagerParameter":Ljava/lang/String;
    :cond_0
    const-string v2, "OFF"

    goto :goto_0
.end method

.method public static setMonoAudio(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1710
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1711
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1712
    .local v0, "mono_intent":Landroid/content/Intent;
    const-string v1, "mono"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1713
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1717
    return-void
.end method

.method public static setNegativeColourGreyscale(Landroid/content/Context;)V
    .locals 7
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1690
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "high_contrast"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 1692
    .local v2, "negativeColorsEnabled":Z
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "greyscale_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 1694
    .local v0, "greyscaleModeEnabled":Z
    :goto_1
    const-string v5, "accessibility"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 1695
    .local v1, "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    if-nez v2, :cond_0

    if-eqz v0, :cond_5

    .line 1696
    :cond_0
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 1697
    const/4 v4, 0x5

    invoke-virtual {v1, v4, v3}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    .line 1707
    :goto_2
    return-void

    .end local v0    # "greyscaleModeEnabled":Z
    .end local v1    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    .end local v2    # "negativeColorsEnabled":Z
    :cond_1
    move v2, v4

    .line 1690
    goto :goto_0

    .restart local v2    # "negativeColorsEnabled":Z
    :cond_2
    move v0, v4

    .line 1692
    goto :goto_1

    .line 1698
    .restart local v0    # "greyscaleModeEnabled":Z
    .restart local v1    # "mAccessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    :cond_3
    if-eqz v0, :cond_4

    .line 1699
    const/4 v4, 0x4

    invoke-virtual {v1, v4, v3}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_2

    .line 1701
    :cond_4
    invoke-virtual {v1, v3, v3}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_2

    .line 1704
    :cond_5
    invoke-virtual {v1, v3, v4}, Landroid/view/accessibility/AccessibilityManager;->setmDNIeAccessibilityMode(IZ)Z

    goto :goto_2
.end method

.method public static setSecureFloatSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1551
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    :goto_0
    return-void

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSecureIntSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1543
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1547
    :goto_0
    return-void

    .line 1544
    :catch_0
    move-exception v0

    .line 1545
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSecureStringSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1559
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    :goto_0
    return-void

    .line 1560
    :catch_0
    move-exception v0

    .line 1561
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setSwitchAccessEnabled(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x16

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1824
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_switchaccess:I

    .line 1825
    sget v0, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_switchaccess:I

    if-ne v0, v1, :cond_1

    .line 1826
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_0

    .line 1828
    const-string v0, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    invoke-static {p0, v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1840
    :goto_0
    return-void

    .line 1830
    :cond_0
    const-string v0, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    invoke-static {p0, v0, v1}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1833
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v3, :cond_2

    .line 1835
    const-string v0, "com.google.android.marvin.talkback/com.android.switchaccess.SwitchAccessService"

    invoke-static {p0, v0, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 1837
    :cond_2
    const-string v0, "com.google.android.marvin.talkback/com.googlecode.eyesfree.switchcontrol.SwitchControlService"

    invoke-static {p0, v0, v2}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static setSystemSetting(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1567
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1571
    :goto_0
    return-void

    .line 1568
    :catch_0
    move-exception v0

    .line 1569
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public static setTtsEngine(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mTts"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "mInitListener"    # Landroid/speech/tts/TextToSpeech$OnInitListener;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 1872
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1873
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1874
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1876
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1880
    :goto_0
    if-eqz p1, :cond_0

    .line 1881
    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 1882
    const/4 p1, 0x0

    .line 1884
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "tts_default_synth"

    invoke-static {v2, v3, p4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1885
    return-void

    .line 1877
    :catch_0
    move-exception v0

    .line 1878
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    const-string v2, "ShareAccessibilitySettingsCommonFunction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setTtsRate(Landroid/content/Context;Landroid/speech/tts/TextToSpeech;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "mTts"    # Landroid/speech/tts/TextToSpeech;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1888
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, p2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1889
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 1890
    return-void
.end method

.method public static setTurnOffAllSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 1720
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1721
    .local v0, "all_sound_off_intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1722
    const-string v1, "mute"

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1723
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1727
    return-void
.end method

.method public static sharingFileNameCheck(Ljava/io/File;)Ljava/io/File;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v9, 0x0

    .line 171
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "fileAllPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v5, "nameCheckFile":Ljava/io/File;
    const/4 v0, 0x1

    .line 174
    .local v0, "count":I
    const-string v3, ""

    .line 175
    .local v3, "fileName":Ljava/lang/String;
    const-string v2, ""

    .line 177
    .local v2, "fileExt":Ljava/lang/String;
    :goto_0
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 179
    const-string v6, "."

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 181
    const-string v6, "_"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    const-string v7, "Settings of accessibility_"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "finalNameCheck":Ljava/lang/String;
    const-string v6, "ShareAccessibilitySettingsCommonFunction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "finalNameCheck : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v6, "ShareAccessibilitySettingsCommonFunction"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "lastindex : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v1, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v6, "Settings of accessibility_"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 185
    const-string v6, "_"

    invoke-virtual {v1, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 186
    add-int/lit8 v0, v0, 0x1

    .line 189
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 191
    new-instance v5, Ljava/io/File;

    .end local v5    # "nameCheckFile":Ljava/io/File;
    invoke-direct {v5, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v5    # "nameCheckFile":Ljava/io/File;
    goto/16 :goto_0

    .line 193
    .end local v4    # "finalNameCheck":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static startTalkback(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 17
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "preferenceKey"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 1894
    new-instance v11, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v13, 0x3a

    invoke-direct {v11, v13}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1895
    .local v11, "sStringColonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-static/range {p0 .. p0}, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    .line 1897
    .local v5, "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v13

    if-ne v5, v13, :cond_0

    .line 1898
    new-instance v5, Ljava/util/HashSet;

    .end local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1902
    .restart local v5    # "enabledServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    :cond_0
    invoke-static/range {p1 .. p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 1903
    .local v12, "toggledService":Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 1905
    .local v1, "accessibilityEnabled":Z
    if-eqz p2, :cond_2

    .line 1906
    invoke-interface {v5, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1908
    const/4 v1, 0x1

    .line 1923
    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1929
    .local v6, "enabledServicesBuilder":Ljava/lang/StringBuilder;
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1930
    .local v4, "enabledService":Landroid/content/ComponentName;
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1931
    const/16 v13, 0x3a

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1910
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    .end local v6    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v5, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1912
    sget-object v10, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccVariable;->sInstalledServices:Ljava/util/Set;

    .line 1913
    .local v10, "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 1914
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    invoke-interface {v10, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1916
    const/4 v1, 0x1

    .line 1917
    goto :goto_0

    .line 1934
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    .end local v10    # "installedServices":Ljava/util/Set;, "Ljava/util/Set<Landroid/content/ComponentName;>;"
    .restart local v6    # "enabledServicesBuilder":Ljava/lang/StringBuilder;
    :cond_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    .line 1935
    .local v7, "enabledServicesBuilderLength":I
    if-lez v7, :cond_5

    .line 1936
    add-int/lit8 v13, v7, -0x1

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1939
    :cond_5
    const/4 v8, 0x0

    .line 1940
    .local v8, "enabledServicesSetting":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1941
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "enabled_accessibility_services"

    invoke-static {v13, v14, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1944
    if-eqz v8, :cond_7

    .line 1945
    move-object v2, v11

    .line 1946
    .local v2, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v2, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1948
    :cond_6
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 1949
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 1950
    .local v3, "componentNameString":Ljava/lang/String;
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    .line 1952
    .restart local v4    # "enabledService":Landroid/content/ComponentName;
    if-eqz v4, :cond_6

    .line 1953
    const/4 v1, 0x1

    .line 1961
    .end local v2    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v3    # "componentNameString":Ljava/lang/String;
    .end local v4    # "enabledService":Landroid/content/ComponentName;
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "accessibility_enabled"

    if-nez v1, :cond_8

    sget v13, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_talkback:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_8

    sget v13, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_galaxy_talkback:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_8

    sget v13, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_pagereader:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_8

    sget v13, Lcom/android/settings/accessibility/sharedaccessibility/ShareAccessibilitySettingsCommonFunction;->is_switchaccess:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v13, v0, :cond_9

    :cond_8
    const/4 v13, 0x1

    :goto_2
    invoke-static {v14, v15, v13}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1963
    new-instance v13, Landroid/content/Intent;

    const-string v14, "com.samsung.settings.action.talkback_toggled"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v14, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1964
    return-void

    .line 1961
    :cond_9
    const/4 v13, 0x0

    goto :goto_2
.end method

.method public static turnOffSoundDetector(Landroid/content/Context;)V
    .locals 4
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 2022
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_detector"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "doorbell_detector"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 2048
    :cond_0
    :goto_0
    return-void

    .line 2025
    :cond_1
    const-string v1, "com.samsung.android.app.sounddetector"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2026
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_detector"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2028
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.action.sound_detector"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2030
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2031
    .local v0, "sdIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.sounddetector"

    const-string v3, "com.samsung.android.app.sounddetector.service.SoundDetectService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2033
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0

    .line 2034
    .end local v0    # "sdIntent":Landroid/content/Intent;
    :cond_2
    const-string v1, "com.samsung.android.app.advsounddetector"

    invoke-static {p0, v1}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2035
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_detector"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2036
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "doorbell_detector"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2040
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.action.doorbell_detector"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2042
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2043
    .restart local v0    # "sdIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.advsounddetector"

    const-string v3, "com.samsung.android.app.advsounddetector.service.SoundDetectService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2046
    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    goto :goto_0
.end method
