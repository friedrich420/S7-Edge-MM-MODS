.class public abstract Lcom/android/server/SEAMSContainer;
.super Ljava/lang/Object;
.source "SEAMSContainer.java"


# static fields
.field public static final ACTION_SECONTAINER_ADDED:Ljava/lang/String; = "android.intent.action.SECONTAINER_ADDED"

.field public static final ACTION_SECONTAINER_REMOVED:Ljava/lang/String; = "android.intent.action.SECONTAINER_REMOVED"

.field public static final BBCCONTAINER:I = 0x3

.field public static final BBC_SHARED_APPS_CATEGORY:I = 0x1f5

.field public static final FIXMO_CATEGORY_NUMBER:I = 0x6a

.field public static final IRMCONTAINER:I = 0x4

.field public static final KNOXCONTAINER_START_CATEGORY:I = 0x1

.field public static final MYCONTAINER:I = 0x2

.field public static final NONE:I = 0x0

.field public static final OTHER_CONTAINER_END_CATEGORY:I = 0x2bc

.field public static final OTHER_CONTAINER_START_CATEGORY:I = 0x66

.field public static final REMOVE_BBCCONTAINER_TYPE:I = 0x6

.field public static final REMOVE_IRMCONTAINER_TYPE:I = 0x9

.field public static final REMOVE_MYCONTAINER_TYPE:I = 0x0

.field public static final SECURED_APPTYPE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SEAMSContainer"

.field public static final THIRDPARTYCONTAINER:I = 0x1

.field public static final TRUSTED_APPTYPE:I = 0x2

.field public static final USER_VALUE:I = 0x62

.field protected static mContext:Landroid/content/Context;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field protected mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field protected mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 106
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, mSKLog:Lcom/android/server/SKLogger;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static declared-synchronized addEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)I
    .registers 42
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "cat"    # Ljava/lang/String;
    .param p5, "appType"    # I
    .param p6, "agent"    # Z

    .prologue
    .line 243
    const-class v31, Lcom/android/server/SEAMSContainer;

    monitor-enter v31

    const/4 v12, 0x0

    .line 244
    .local v12, "isAddedMac":Z
    const/4 v13, 0x0

    .line 245
    .local v13, "macPermExists":Z
    const/4 v4, 0x0

    .line 246
    .local v4, "conType":I
    const/16 v29, 0x0

    .line 247
    .local v29, "userID":I
    :try_start_8
    invoke-static {}, getBbcEnabled()I

    move-result v29

    .line 250
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_292

    move-result-object v7

    .line 252
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 254
    .local v6, "doc":Lorg/w3c/dom/Document;
    :try_start_11
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 255
    .local v5, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v30

    if-eqz v30, :cond_1b0

    .line 259
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v30

    if-nez v30, :cond_2a

    .line 260
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 261
    :cond_2a
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 262
    const/4 v13, 0x1

    .line 274
    :goto_31
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Element;->normalize()V

    .line 275
    const-string/jumbo v30, "policy"

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 276
    .local v17, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v16, 0x0

    .line 277
    .local v16, "policyElement":Lorg/w3c/dom/Element;
    const/16 v30, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    .end local v16    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v16, Lorg/w3c/dom/Element;

    .line 278
    .restart local v16    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v30, "signer"

    move-object/from16 v0, v16

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    :try_end_59
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_59} :catch_1d6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_59} :catch_28c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_59} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_59} :catch_349
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_59} :catch_370
    .catchall {:try_start_11 .. :try_end_59} :catchall_292

    move-result-object v22

    .line 279
    .local v22, "signer":Lorg/w3c/dom/NodeList;
    const/16 v24, 0x0

    .line 280
    .local v24, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v23, 0x0

    .line 281
    .local v23, "signerElement":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 282
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    const/4 v14, 0x0

    .line 283
    .local v14, "newElement":Lorg/w3c/dom/Element;
    const/16 v21, 0x0

    .line 286
    .local v21, "seinfoElement":Lorg/w3c/dom/Element;
    :try_start_62
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    invoke-static/range {v30 .. v30}, getContainerType(I)I
    :try_end_69
    .catch Ljava/lang/NumberFormatException; {:try_start_62 .. :try_end_69} :catch_1ec
    .catch Lorg/xml/sax/SAXException; {:try_start_62 .. :try_end_69} :catch_1d6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_62 .. :try_end_69} :catch_28c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_62 .. :try_end_69} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_69} :catch_349
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_69} :catch_370
    .catchall {:try_start_62 .. :try_end_69} :catchall_292

    move-result v4

    .line 291
    const/16 v26, 0x0

    .line 292
    .local v26, "specialTag":Ljava/lang/String;
    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v4, v0, :cond_84

    const/16 v30, 0x2

    move/from16 v0, v30

    if-eq v4, v0, :cond_84

    const/16 v30, 0x3

    move/from16 v0, v30

    if-eq v4, v0, :cond_84

    const/16 v30, 0x4

    move/from16 v0, v30

    if-ne v4, v0, :cond_376

    .line 293
    :cond_84
    const/16 v30, 0x2

    move/from16 v0, p5

    move/from16 v1, v30

    if-eq v0, v1, :cond_94

    const/16 v30, 0x4

    move/from16 v0, p5

    move/from16 v1, v30

    if-ne v0, v1, :cond_21a

    .line 294
    :cond_94
    :try_start_94
    const-string/jumbo v26, "service"

    .line 295
    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 296
    const-string/jumbo v30, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    const-string/jumbo v30, "seinfo"

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    const-string v30, "category"

    const-string v32, "1023"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v30, "allowcategory"

    const-string v32, "0,701-1023"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    const-string v30, "containerallowcategory"

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_d0
    :goto_d0
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v20

    .line 347
    .local v20, "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v30, "signer"

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 348
    const-string/jumbo v30, "seinfo"

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v21

    .line 349
    const-string v30, "allow-all"

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 350
    if-eqz v20, :cond_122

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v4, v0, :cond_109

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string/jumbo v32, "default"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_122

    :cond_109
    const/16 v30, 0x4

    move/from16 v0, v30

    if-ne v4, v0, :cond_39c

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v30, v0

    const-string/jumbo v32, "default"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_39c

    .line 351
    :cond_122
    const-string/jumbo v30, "signature"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string/jumbo v30, "value"

    const-string/jumbo v32, "untrusted"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v30, "category"

    const-string v32, "1023"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v30, "allowcategory"

    const-string v32, "0,701-1023"

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :cond_157
    :goto_157
    if-nez v12, :cond_171

    .line 435
    move-object/from16 v0, v23

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 436
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 437
    move-object/from16 v0, v23

    invoke-interface {v0, v14}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 438
    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 440
    :cond_171
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v30

    invoke-interface/range {v30 .. v30}, Lorg/w3c/dom/Element;->normalize()V

    .line 441
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v28

    .line 442
    .local v28, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v28 .. v28}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v27

    .line 443
    .local v27, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v25, 0x0

    .line 444
    .local v25, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v13, :cond_608

    .line 445
    new-instance v25, Ljavax/xml/transform/dom/DOMSource;

    .end local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v25

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 449
    .restart local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_18b
    new-instance v18, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 450
    .local v18, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v30

    if-eqz v30, :cond_1ac

    .line 452
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_1ac
    .catch Lorg/xml/sax/SAXException; {:try_start_94 .. :try_end_1ac} :catch_1d6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_94 .. :try_end_1ac} :catch_28c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_94 .. :try_end_1ac} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_1ac} :catch_349
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_1ac} :catch_370
    .catchall {:try_start_94 .. :try_end_1ac} :catchall_292

    .line 453
    :cond_1ac
    const/16 v30, 0x0

    .line 466
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v14    # "newElement":Lorg/w3c/dom/Element;
    .end local v16    # "policyElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v18    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v20    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v22    # "signer":Lorg/w3c/dom/NodeList;
    .end local v23    # "signerElement":Lorg/w3c/dom/Element;
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v26    # "specialTag":Ljava/lang/String;
    .end local v27    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v28    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_1ae
    monitor-exit v31

    return v30

    .line 267
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :cond_1b0
    :try_start_1b0
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    .line 268
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v30

    if-nez v30, :cond_1c2

    .line 269
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 270
    :cond_1c2
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 271
    const-string/jumbo v30, "policy"

    move-object/from16 v0, v30

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v19

    .line 272
    .local v19, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v19

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1d4
    .catch Lorg/xml/sax/SAXException; {:try_start_1b0 .. :try_end_1d4} :catch_1d6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1b0 .. :try_end_1d4} :catch_28c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1b0 .. :try_end_1d4} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_1b0 .. :try_end_1d4} :catch_349
    .catch Ljava/lang/Exception; {:try_start_1b0 .. :try_end_1d4} :catch_370
    .catchall {:try_start_1b0 .. :try_end_1d4} :catchall_292

    goto/16 :goto_31

    .line 454
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v19    # "rootElement":Lorg/w3c/dom/Element;
    :catch_1d6
    move-exception v9

    .line 455
    .local v9, "e1":Lorg/xml/sax/SAXException;
    :try_start_1d7
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 465
    .end local v9    # "e1":Lorg/xml/sax/SAXException;
    :goto_1da
    sget-object v30, mSKLog:Lcom/android/server/SKLogger;

    const-string v32, "SEAMSContainer"

    const-string v33, "addEntryToMac, POLICY_FAILED is returned"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e9
    .catchall {:try_start_1d7 .. :try_end_1e9} :catchall_292

    .line 466
    const/16 v30, -0x1

    goto :goto_1ae

    .line 287
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v14    # "newElement":Lorg/w3c/dom/Element;
    .restart local v16    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v22    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v23    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1ec
    move-exception v8

    .line 288
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_1ed
    sget-object v30, mSKLog:Lcom/android/server/SKLogger;

    const-string v32, "SEAMSContainer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "category: "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " integer parse failed"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const/16 v30, -0x1

    goto :goto_1ae

    .line 305
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    .restart local v26    # "specialTag":Ljava/lang/String;
    :cond_21a
    const/16 v30, 0x1

    move/from16 v0, p5

    move/from16 v1, v30

    if-eq v0, v1, :cond_23a

    const/16 v30, 0x3

    move/from16 v0, p5

    move/from16 v1, v30

    if-eq v0, v1, :cond_23a

    const/16 v30, 0x7

    move/from16 v0, p5

    move/from16 v1, v30

    if-eq v0, v1, :cond_23a

    const/16 v30, 0x8

    move/from16 v0, p5

    move/from16 v1, v30

    if-ne v0, v1, :cond_2bc

    .line 306
    :cond_23a
    const-string/jumbo v26, "service"

    .line 307
    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 308
    const-string/jumbo v30, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    const-string/jumbo v30, "seinfo"

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v30, "category"

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const/16 v30, 0x7

    move/from16 v0, p5

    move/from16 v1, v30

    if-eq v0, v1, :cond_270

    const/16 v30, 0x8

    move/from16 v0, p5

    move/from16 v1, v30

    if-ne v0, v1, :cond_295

    .line 315
    :cond_270
    const-string v30, "allowcategory"

    const-string v32, "0,701-1023"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :goto_27b
    if-eqz p6, :cond_d0

    .line 321
    const-string v30, "agent"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28a
    .catch Lorg/xml/sax/SAXException; {:try_start_1ed .. :try_end_28a} :catch_1d6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1ed .. :try_end_28a} :catch_28c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1ed .. :try_end_28a} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_1ed .. :try_end_28a} :catch_349
    .catch Ljava/lang/Exception; {:try_start_1ed .. :try_end_28a} :catch_370
    .catchall {:try_start_1ed .. :try_end_28a} :catchall_292

    goto/16 :goto_d0

    .line 456
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v14    # "newElement":Lorg/w3c/dom/Element;
    .end local v16    # "policyElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v22    # "signer":Lorg/w3c/dom/NodeList;
    .end local v23    # "signerElement":Lorg/w3c/dom/Element;
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v26    # "specialTag":Ljava/lang/String;
    :catch_28c
    move-exception v9

    .line 457
    .local v9, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_28d
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_290
    .catchall {:try_start_28d .. :try_end_290} :catchall_292

    goto/16 :goto_1da

    .line 243
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_292
    move-exception v30

    monitor-exit v31

    throw v30

    .line 318
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "newElement":Lorg/w3c/dom/Element;
    .restart local v16    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v22    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v23    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v26    # "specialTag":Ljava/lang/String;
    :cond_295
    :try_start_295
    const-string v30, "allowcategory"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "0,"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b5
    .catch Lorg/xml/sax/SAXException; {:try_start_295 .. :try_end_2b5} :catch_1d6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_295 .. :try_end_2b5} :catch_28c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_295 .. :try_end_2b5} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_295 .. :try_end_2b5} :catch_349
    .catch Ljava/lang/Exception; {:try_start_295 .. :try_end_2b5} :catch_370
    .catchall {:try_start_295 .. :try_end_2b5} :catchall_292

    goto :goto_27b

    .line 458
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v14    # "newElement":Lorg/w3c/dom/Element;
    .end local v16    # "policyElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v22    # "signer":Lorg/w3c/dom/NodeList;
    .end local v23    # "signerElement":Lorg/w3c/dom/Element;
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v26    # "specialTag":Ljava/lang/String;
    :catch_2b6
    move-exception v9

    .line 459
    .local v9, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_2b7
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_2ba
    .catchall {:try_start_2b7 .. :try_end_2ba} :catchall_292

    goto/16 :goto_1da

    .line 322
    .end local v9    # "e1":Ljavax/xml/transform/TransformerException;
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v14    # "newElement":Lorg/w3c/dom/Element;
    .restart local v16    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v22    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v23    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v26    # "specialTag":Ljava/lang/String;
    :cond_2bc
    const/16 v30, 0x5

    move/from16 v0, p5

    move/from16 v1, v30

    if-ne v0, v1, :cond_d0

    .line 323
    :try_start_2c4
    sget-object v30, mSKLog:Lcom/android/server/SKLogger;

    const-string v32, "SEAMSContainer"

    const-string v33, "appType = SEAMS.BBC_SECURED_APPTYPE"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string/jumbo v26, "service"

    .line 325
    move-object/from16 v0, v26

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v14

    .line 326
    const-string/jumbo v30, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v30, "bbcseinfo"

    move-object/from16 v0, v30

    move-object/from16 v1, p3

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v30, "bbccategory"

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v30

    const/16 v32, 0x1f5

    move/from16 v0, v30

    move/from16 v1, v32

    if-ne v0, v1, :cond_34f

    .line 330
    const-string v30, "bbcallowcategory"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "0,"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ",502-700"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :goto_32a
    const-string/jumbo v30, "sdcarduserid"

    invoke-static/range {v29 .. v29}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    if-eqz p6, :cond_d0

    .line 336
    const-string v30, "agent"

    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_347
    .catch Lorg/xml/sax/SAXException; {:try_start_2c4 .. :try_end_347} :catch_1d6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2c4 .. :try_end_347} :catch_28c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2c4 .. :try_end_347} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_2c4 .. :try_end_347} :catch_349
    .catch Ljava/lang/Exception; {:try_start_2c4 .. :try_end_347} :catch_370
    .catchall {:try_start_2c4 .. :try_end_347} :catchall_292

    goto/16 :goto_d0

    .line 460
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v14    # "newElement":Lorg/w3c/dom/Element;
    .end local v16    # "policyElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v22    # "signer":Lorg/w3c/dom/NodeList;
    .end local v23    # "signerElement":Lorg/w3c/dom/Element;
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v26    # "specialTag":Ljava/lang/String;
    :catch_349
    move-exception v9

    .line 461
    .local v9, "e1":Ljava/io/IOException;
    :try_start_34a
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_34d
    .catchall {:try_start_34a .. :try_end_34d} :catchall_292

    goto/16 :goto_1da

    .line 332
    .end local v9    # "e1":Ljava/io/IOException;
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v14    # "newElement":Lorg/w3c/dom/Element;
    .restart local v16    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v22    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v23    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v26    # "specialTag":Ljava/lang/String;
    :cond_34f
    :try_start_34f
    const-string v30, "bbcallowcategory"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "0,501,"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36f
    .catch Lorg/xml/sax/SAXException; {:try_start_34f .. :try_end_36f} :catch_1d6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_34f .. :try_end_36f} :catch_28c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_34f .. :try_end_36f} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_34f .. :try_end_36f} :catch_349
    .catch Ljava/lang/Exception; {:try_start_34f .. :try_end_36f} :catch_370
    .catchall {:try_start_34f .. :try_end_36f} :catchall_292

    goto :goto_32a

    .line 462
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v14    # "newElement":Lorg/w3c/dom/Element;
    .end local v16    # "policyElement":Lorg/w3c/dom/Element;
    .end local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v22    # "signer":Lorg/w3c/dom/NodeList;
    .end local v23    # "signerElement":Lorg/w3c/dom/Element;
    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v26    # "specialTag":Ljava/lang/String;
    :catch_370
    move-exception v8

    .line 463
    .local v8, "e":Ljava/lang/Exception;
    :try_start_371
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_374
    .catchall {:try_start_371 .. :try_end_374} :catchall_292

    goto/16 :goto_1da

    .line 339
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v14    # "newElement":Lorg/w3c/dom/Element;
    .restart local v16    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v17    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v21    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v22    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v23    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v26    # "specialTag":Ljava/lang/String;
    :cond_376
    :try_start_376
    sget-object v30, mSKLog:Lcom/android/server/SKLogger;

    const-string v32, "SEAMSContainer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "addEntryToMac is not supported for containertype:"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    const/16 v30, -0x1

    goto/16 :goto_1ae

    .line 367
    .restart local v20    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    :cond_39c
    const/16 v30, 0x1

    move/from16 v0, v30

    if-eq v4, v0, :cond_3b4

    const/16 v30, 0x2

    move/from16 v0, v30

    if-eq v4, v0, :cond_3b4

    const/16 v30, 0x3

    move/from16 v0, v30

    if-eq v4, v0, :cond_3b4

    const/16 v30, 0x4

    move/from16 v0, v30

    if-ne v4, v0, :cond_4b2

    .line 368
    :cond_3b4
    const-string/jumbo v30, "signature"

    move-object/from16 v0, v23

    move-object/from16 v1, v30

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const/16 v30, 0x3

    move/from16 v0, v30

    if-ne v4, v0, :cond_457

    .line 371
    const-string/jumbo v30, "value"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    const-string v30, "category"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v30, "allowcategory"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    const-string v30, "bbccategory"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v30, "bbcallowcategory"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :goto_424
    const/16 v30, 0x2

    move/from16 v0, p5

    move/from16 v1, v30

    if-ne v0, v1, :cond_4b2

    .line 382
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_490

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-static {v0, v1}, checkCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_490

    .line 384
    sget-object v30, mSKLog:Lcom/android/server/SKLogger;

    const-string v32, "SEAMSContainer"

    const-string v33, "addEntryToMac, same allowContainerCategory already exists for this package, return true and continue with next step"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    const/16 v30, -0x9

    goto/16 :goto_1ae

    .line 377
    :cond_457
    const-string/jumbo v30, "value"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v30, "category"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    const-string v30, "allowcategory"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v30

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_424

    .line 388
    :cond_490
    const-string v30, "category"

    move-object/from16 v0, v20

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v32, v0

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v30, "allowcategory"

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v14, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_4b2
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4b3
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v30

    move/from16 v0, v30

    if-ge v11, v0, :cond_157

    .line 394
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    .end local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v24, Lorg/w3c/dom/Element;

    .line 395
    .restart local v24    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v30, "signature"

    move-object/from16 v0, v24

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_604

    .line 396
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-static {v0, v1}, checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 397
    .local v10, "existElem":Lorg/w3c/dom/Element;
    if-eqz v10, :cond_4fb

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v4, v0, :cond_4fb

    .line 398
    sget-object v30, mSKLog:Lcom/android/server/SKLogger;

    const-string v32, "SEAMSContainer"

    const-string v33, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_1"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const/16 v30, -0x9

    goto/16 :goto_1ae

    .line 402
    :cond_4fb
    if-eqz v10, :cond_50b

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v4, v0, :cond_50b

    const/16 v30, 0x3

    move/from16 v0, p5

    move/from16 v1, v30

    if-eq v0, v1, :cond_533

    :cond_50b
    if-eqz v10, :cond_51b

    const/16 v30, 0x4

    move/from16 v0, v30

    if-ne v4, v0, :cond_51b

    const/16 v30, 0x7

    move/from16 v0, p5

    move/from16 v1, v30

    if-eq v0, v1, :cond_533

    :cond_51b
    const/16 v30, 0x8

    move/from16 v0, p5

    move/from16 v1, v30

    if-eq v0, v1, :cond_533

    if-eqz v10, :cond_546

    const/16 v30, 0x3

    move/from16 v0, v30

    if-ne v4, v0, :cond_546

    const/16 v30, 0x5

    move/from16 v0, p5

    move/from16 v1, v30

    if-ne v0, v1, :cond_546

    .line 403
    :cond_533
    sget-object v30, mSKLog:Lcom/android/server/SKLogger;

    const-string v32, "SEAMSContainer"

    const-string v33, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_2"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const/16 v30, -0x9

    goto/16 :goto_1ae

    .line 407
    :cond_546
    if-eqz v10, :cond_5f6

    const/16 v30, 0x2

    move/from16 v0, v30

    if-ne v4, v0, :cond_5f6

    const/16 v30, 0x4

    move/from16 v0, p5

    move/from16 v1, v30

    if-ne v0, v1, :cond_5f6

    .line 409
    const-string v30, "containerallowcategory"

    move-object/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    if-nez v30, :cond_573

    .line 410
    sget-object v30, mSKLog:Lcom/android/server/SKLogger;

    const-string v32, "SEAMSContainer"

    const-string v33, "addEntryToMac, ERROR_ALREADY_CONTAINER_APP is returned_3"

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const/16 v30, -0x9

    goto/16 :goto_1ae

    .line 414
    :cond_573
    const-string v30, "containerallowcategory"

    move-object/from16 v0, v30

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-static {v0, v1}, checkCategory(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_5c1

    .line 416
    sget-object v30, mSKLog:Lcom/android/server/SKLogger;

    const-string v32, "SEAMSContainer"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "addEntryToMac, Existing "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-interface {v10}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, " entry for "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v34, ", return true and continue with next step"

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/16 v30, -0x9

    goto/16 :goto_1ae

    .line 420
    :cond_5c1
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v32, ","

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v32, "containerallowcategory"

    move-object/from16 v0, v32

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 421
    .local v15, "newValue":Ljava/lang/String;
    const-string v30, "containerallowcategory"

    move-object/from16 v0, v30

    invoke-interface {v10, v0, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v12, 0x1

    .line 423
    goto/16 :goto_157

    .line 425
    .end local v15    # "newValue":Ljava/lang/String;
    :cond_5f6
    move-object/from16 v0, v22

    invoke-interface {v0, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-interface {v0, v14}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 429
    const/4 v12, 0x1

    .line 430
    goto/16 :goto_157

    .line 393
    .end local v10    # "existElem":Lorg/w3c/dom/Element;
    :cond_604
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_4b3

    .line 447
    .end local v11    # "i":I
    .restart local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v27    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v28    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_608
    new-instance v25, Ljavax/xml/transform/dom/DOMSource;

    .end local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_611
    .catch Lorg/xml/sax/SAXException; {:try_start_376 .. :try_end_611} :catch_1d6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_376 .. :try_end_611} :catch_28c
    .catch Ljavax/xml/transform/TransformerException; {:try_start_376 .. :try_end_611} :catch_2b6
    .catch Ljava/io/IOException; {:try_start_376 .. :try_end_611} :catch_349
    .catch Ljava/lang/Exception; {:try_start_376 .. :try_end_611} :catch_370
    .catchall {:try_start_376 .. :try_end_611} :catchall_292

    .restart local v25    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_18b
.end method

.method private static checkCategory(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "existingContAllowCat"    # Ljava/lang/String;
    .param p1, "newCat"    # Ljava/lang/String;

    .prologue
    .line 1276
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1277
    .local v0, "allowCats":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v4, :cond_18

    aget-object v3, v1, v2

    .line 1278
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1279
    const/4 v5, 0x1

    .line 1282
    .end local v3    # "item":Ljava/lang/String;
    :goto_14
    return v5

    .line 1277
    .restart local v3    # "item":Ljava/lang/String;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1282
    .end local v3    # "item":Ljava/lang/String;
    :cond_18
    const/4 v5, 0x0

    goto :goto_14
.end method

.method public static checkCategoryRange(Ljava/lang/String;III)I
    .registers 15
    .param p0, "existingContAllowCat"    # Ljava/lang/String;
    .param p1, "startRange"    # I
    .param p2, "endRange"    # I
    .param p3, "appType"    # I

    .prologue
    .line 1293
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "allowCats":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    :try_start_7
    array-length v5, v1

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_9
    if-ge v3, v5, :cond_e2

    aget-object v4, v1, v3

    .line 1296
    .local v4, "item":Ljava/lang/String;
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_96

    .line 1297
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1298
    .local v6, "range":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_2d

    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_51

    :cond_2d
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_3f

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_51

    :cond_3f
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ge v7, p1, :cond_6d

    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, p2, :cond_6d

    .line 1301
    :cond_51
    const/16 v7, 0x6a

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_70

    const/16 v7, 0x6a

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v7, v8, :cond_70

    const/4 v7, 0x2

    if-eq p3, v7, :cond_6d

    const/4 v7, 0x4

    if-ne p3, v7, :cond_70

    .line 1295
    .end local v6    # "range":[Ljava/lang/String;
    :cond_6d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1305
    .restart local v6    # "range":[Ljava/lang/String;
    :cond_70
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found other container category:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in contAllowCat is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const/4 v7, 0x1

    .line 1324
    .end local v3    # "i$":I
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "range":[Ljava/lang/String;
    :goto_95
    return v7

    .line 1309
    .restart local v3    # "i$":I
    .restart local v4    # "item":Ljava/lang/String;
    .restart local v5    # "len$":I
    :cond_96
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-lt v7, p1, :cond_6d

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gt v7, p2, :cond_6d

    .line 1310
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const/16 v8, 0x6a

    if-ne v7, v8, :cond_b0

    const/4 v7, 0x2

    if-eq p3, v7, :cond_6d

    const/4 v7, 0x4

    if-eq p3, v7, :cond_6d

    .line 1314
    :cond_b0
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found other container category:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in contAllowCat:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_d4} :catch_d6

    .line 1315
    const/4 v7, 0x1

    goto :goto_95

    .line 1319
    .end local v3    # "i$":I
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "len$":I
    :catch_d6
    move-exception v2

    .line 1320
    .local v2, "e":Ljava/lang/NumberFormatException;
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    const-string v9, "NumberFormatException in checkCategoryRange"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const/4 v7, -0x1

    goto :goto_95

    .line 1323
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "i$":I
    .restart local v5    # "len$":I
    :cond_e2
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    const-string v9, "checkCategoryRange, FALSE is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    const/4 v7, 0x0

    goto :goto_95
.end method

.method private static checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;
    .registers 9
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "cat"    # Ljava/lang/String;
    .param p3, "appType"    # I

    .prologue
    .line 1215
    if-nez p0, :cond_d

    .line 1217
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "checkContainerIDEntryExists: curElem is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1219
    const/4 v1, 0x0

    .line 1248
    :cond_c
    :goto_c
    return-object v1

    .line 1221
    :cond_d
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 1222
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 1224
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    if-eqz p3, :cond_1d

    const/4 v2, 0x6

    if-eq p3, v2, :cond_1d

    const/16 v2, 0x9

    if-ne p3, v2, :cond_87

    .line 1225
    :cond_1d
    :goto_1d
    if-eqz v0, :cond_c

    .line 1226
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    const-string v2, "category"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    const-string v2, "bbccategory"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    :cond_51
    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_68

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_78

    :cond_68
    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    .line 1230
    :cond_78
    move-object v1, v0

    .line 1231
    goto :goto_c

    .line 1233
    :cond_7a
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_1d

    .line 1245
    :cond_81
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .line 1237
    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    :cond_87
    if-eqz v0, :cond_c

    .line 1238
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string v2, "category"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    const-string v2, "bbccategory"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    :cond_bb
    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_81

    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_81

    .line 1242
    move-object v1, v0

    .line 1243
    goto/16 :goto_c
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 7
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1187
    if-nez p0, :cond_d

    .line 1189
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string v4, "checkTrustedEntryExists: curElem is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const/4 v1, 0x0

    .line 1207
    :cond_c
    :goto_c
    return-object v1

    .line 1194
    :cond_d
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 1195
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 1197
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    :goto_14
    if-eqz v0, :cond_c

    .line 1198
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4a

    const-string v2, "agent"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4a

    const-string/jumbo v2, "seinfo"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "generic_mdm"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4a

    .line 1202
    move-object v1, v0

    .line 1203
    goto :goto_c

    .line 1205
    :cond_4a
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_14
.end method

.method protected static getBbcEnabled()I
    .registers 4

    .prologue
    .line 1386
    const/4 v1, 0x0

    .line 1387
    .local v1, "userId":I
    sget-object v2, mContext:Landroid/content/Context;

    sget-object v3, mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PersonaManager;

    .line 1388
    .local v0, "persona":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/PersonaManager;->getBbcEnabled()I

    move-result v1

    .line 1390
    return v1
.end method

.method private static getContainerType(I)I
    .registers 4
    .param p0, "cat"    # I

    .prologue
    const/16 v2, 0x1f4

    const/16 v1, 0xc7

    .line 1170
    const/16 v0, 0x65

    if-le p0, v0, :cond_c

    if-gt p0, v1, :cond_c

    .line 1171
    const/4 v0, 0x1

    .line 1179
    :goto_b
    return v0

    .line 1172
    :cond_c
    if-le p0, v1, :cond_12

    if-gt p0, v2, :cond_12

    .line 1173
    const/4 v0, 0x2

    goto :goto_b

    .line 1174
    :cond_12
    if-le p0, v2, :cond_1a

    const/16 v0, 0x2bc

    if-ge p0, v0, :cond_1a

    .line 1175
    const/4 v0, 0x3

    goto :goto_b

    .line 1176
    :cond_1a
    const/16 v0, 0x2be

    if-ne p0, v0, :cond_20

    .line 1177
    const/4 v0, 0x4

    goto :goto_b

    .line 1179
    :cond_20
    const/4 v0, 0x0

    goto :goto_b
.end method

.method protected static declared-synchronized getSignatureEntryFromMac(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 22
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 876
    const-class v16, Lcom/android/server/SEAMSContainer;

    monitor-enter v16

    const/4 v12, 0x0

    .line 877
    .local v12, "signature":Ljava/lang/String;
    const/4 v11, 0x0

    .line 880
    .local v11, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_b1

    move-result-object v4

    .line 882
    .local v4, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_9
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 883
    .local v2, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v3, 0x0

    .line 885
    .local v3, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v15

    if-eqz v15, :cond_76

    .line 890
    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 897
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v15

    invoke-interface {v15}, Lorg/w3c/dom/Element;->normalize()V

    .line 898
    const-string/jumbo v15, "policy"

    invoke-interface {v3, v15}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 899
    .local v9, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .line 900
    .local v8, "policyElement":Lorg/w3c/dom/Element;
    const/4 v15, 0x0

    invoke-interface {v9, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .end local v8    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v8, Lorg/w3c/dom/Element;

    .line 901
    .restart local v8    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v15, "signer"

    invoke-interface {v8, v15}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 902
    .local v13, "signer":Lorg/w3c/dom/NodeList;
    const/4 v14, 0x0

    .line 903
    .local v14, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v10, 0x0

    .line 910
    .local v10, "removeElem":Lorg/w3c/dom/Element;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3a
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    if-ge v6, v15, :cond_af

    .line 911
    invoke-interface {v13, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v14

    .end local v14    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v14, Lorg/w3c/dom/Element;

    .line 912
    .restart local v14    # "signerElementCur":Lorg/w3c/dom/Element;
    invoke-interface {v14}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 914
    .local v7, "packageElem":Lorg/w3c/dom/Element;
    :goto_4c
    if-eqz v7, :cond_a8

    .line 915
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v17, "seinfo"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_a1

    const-string/jumbo v15, "name"

    invoke-interface {v7, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a1

    .line 916
    const-string/jumbo v15, "signature"

    invoke-interface {v14, v15}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
    :try_end_72
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_72} :catch_ab
    .catchall {:try_start_9 .. :try_end_72} :catchall_b1

    move-result-object v12

    move-object v15, v12

    .line 926
    .end local v2    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "i":I
    .end local v7    # "packageElem":Lorg/w3c/dom/Element;
    .end local v8    # "policyElement":Lorg/w3c/dom/Element;
    .end local v9    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "removeElem":Lorg/w3c/dom/Element;
    .end local v13    # "signer":Lorg/w3c/dom/NodeList;
    .end local v14    # "signerElementCur":Lorg/w3c/dom/Element;
    :goto_74
    monitor-exit v16

    return-object v15

    .line 893
    .restart local v2    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v3    # "doc":Lorg/w3c/dom/Document;
    :cond_76
    :try_start_76
    sget-object v15, mSKLog:Lcom/android/server/SKLogger;

    const-string v17, "SEAMSContainer"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "getSignatureEntryFromMac, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " does not exist, creating file"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const/4 v15, 0x0

    goto :goto_74

    .line 919
    .restart local v6    # "i":I
    .restart local v7    # "packageElem":Lorg/w3c/dom/Element;
    .restart local v8    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v9    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v10    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v13    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v14    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_a1
    invoke-interface {v7}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v7

    .end local v7    # "packageElem":Lorg/w3c/dom/Element;
    check-cast v7, Lorg/w3c/dom/Element;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_a7} :catch_ab
    .catchall {:try_start_76 .. :try_end_a7} :catchall_b1

    .restart local v7    # "packageElem":Lorg/w3c/dom/Element;
    goto :goto_4c

    .line 910
    :cond_a8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3a

    .line 922
    .end local v2    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v3    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "i":I
    .end local v7    # "packageElem":Lorg/w3c/dom/Element;
    .end local v8    # "policyElement":Lorg/w3c/dom/Element;
    .end local v9    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v10    # "removeElem":Lorg/w3c/dom/Element;
    .end local v13    # "signer":Lorg/w3c/dom/NodeList;
    .end local v14    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_ab
    move-exception v5

    .line 923
    .local v5, "e":Ljava/lang/Exception;
    :try_start_ac
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_af
    .catchall {:try_start_ac .. :try_end_af} :catchall_b1

    .end local v5    # "e":Ljava/lang/Exception;
    :cond_af
    move-object v15, v12

    .line 926
    goto :goto_74

    .line 876
    .end local v4    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catchall_b1
    move-exception v15

    monitor-exit v16

    throw v15
.end method

.method public static getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 744
    const/4 v6, 0x0

    .line 745
    .local v6, "userId":I
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v6

    .line 747
    if-nez p0, :cond_14

    .line 749
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    const-string/jumbo v10, "getSignatureFromPackage: packageName is null"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, v7

    .line 782
    :cond_13
    :goto_13
    return-object v5

    .line 753
    :cond_14
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 754
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 756
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v8, 0x40

    :try_start_1b
    invoke-interface {v3, p0, v8, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 757
    if-eqz v2, :cond_38

    .line 758
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 759
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    array-length v8, v4

    if-ge v1, v8, :cond_13

    .line 761
    aget-object v8, v4, v1

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 765
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_38
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "getSignatureFromPackage("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") null is returned, check bbcuser."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-static {}, getBbcEnabled()I

    move-result v6

    .line 767
    const/16 v8, 0x40

    invoke-interface {v3, p0, v8, v6}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 768
    if-eqz v2, :cond_7c

    .line 769
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 770
    .restart local v4    # "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .restart local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6d
    array-length v8, v4

    if-ge v1, v8, :cond_13

    .line 772
    aget-object v8, v4, v1

    invoke-virtual {v8}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 771
    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    .line 776
    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7c
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    const-string/jumbo v10, "getSignatureFromPackage: null is returned"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_86} :catch_88

    move-object v5, v7

    .line 777
    goto :goto_13

    .line 780
    :catch_88
    move-exception v0

    .line 781
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v7

    .line 782
    goto :goto_13
.end method

.method public static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 122
    if-nez p0, :cond_4

    .line 126
    :cond_3
    :goto_3
    return-object v1

    .line 122
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_b} :catch_10

    move-result v2

    if-lez v2, :cond_3

    move-object v1, p0

    goto :goto_3

    .line 123
    :catch_10
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method protected static declared-synchronized isContainerEmpty(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 27
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "agentPackageName"    # Ljava/lang/String;
    .param p2, "agentSignature"    # Ljava/lang/String;
    .param p3, "propertyValue"    # I

    .prologue
    .line 1093
    const-class v19, Lcom/android/server/SEAMSContainer;

    monitor-enter v19

    const/4 v14, 0x0

    .line 1094
    .local v14, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_4
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_155

    move-result-object v7

    .line 1096
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_8
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 1097
    .local v5, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v6, 0x0

    .line 1098
    .local v6, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_a4

    .line 1102
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 1109
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Element;->normalize()V

    .line 1110
    const-string/jumbo v18, "policy"

    move-object/from16 v0, v18

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 1111
    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 1112
    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .line 1113
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v18, "signer"

    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1114
    .local v16, "signer":Lorg/w3c/dom/NodeList;
    const/16 v17, 0x0

    .line 1115
    .local v17, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .line 1122
    .local v13, "removeElem":Lorg/w3c/dom/Element;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_125

    .line 1123
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    .end local v17    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v17, Lorg/w3c/dom/Element;

    .line 1124
    .restart local v17    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v18, "signature"

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_112

    .line 1125
    const-string/jumbo v18, "service"

    invoke-interface/range {v17 .. v18}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v15

    .line 1128
    .local v15, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    const/16 v20, 0x2

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_d2

    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_90

    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-eq v0, v1, :cond_d2

    .line 1129
    :cond_90
    sget-object v18, mSKLog:Lcom/android/server/SKLogger;

    const-string v20, "SEAMSContainer"

    const-string/jumbo v21, "service entry different than expected"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a0
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_a0} :catch_138
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_8 .. :try_end_a0} :catch_150
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_a0} :catch_158
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_a0} :catch_15d
    .catchall {:try_start_8 .. :try_end_a0} :catchall_155

    .line 1130
    const/16 v18, 0x0

    .line 1166
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v15    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v16    # "signer":Lorg/w3c/dom/NodeList;
    .end local v17    # "signerElementCur":Lorg/w3c/dom/Element;
    :goto_a2
    monitor-exit v19

    return v18

    .line 1105
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :cond_a4
    :try_start_a4
    sget-object v18, mSKLog:Lcom/android/server/SKLogger;

    const-string v20, "SEAMSContainer"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "isContainerEmpty, "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " does not exist, return failed "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const/16 v18, -0x1

    goto :goto_a2

    .line 1132
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v15    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .restart local v16    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v17    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_d2
    const/4 v4, 0x0

    .line 1133
    .local v4, "currElem":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 1134
    .local v3, "cnt":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_d5
    invoke-interface {v15}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_fb

    .line 1135
    invoke-interface {v15, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .end local v4    # "currElem":Lorg/w3c/dom/Element;
    check-cast v4, Lorg/w3c/dom/Element;

    .line 1139
    .restart local v4    # "currElem":Lorg/w3c/dom/Element;
    const-string/jumbo v18, "name"

    move-object/from16 v0, v18

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f8

    .line 1143
    add-int/lit8 v3, v3, 0x1

    .line 1134
    :cond_f8
    add-int/lit8 v10, v10, 0x1

    goto :goto_d5

    .line 1146
    :cond_fb
    const/16 v18, 0x2

    move/from16 v0, v18

    if-eq v3, v0, :cond_10f

    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v3, v0, :cond_13c

    const/16 v18, 0x1

    move/from16 v0, p3

    move/from16 v1, v18

    if-ne v0, v1, :cond_13c

    .line 1147
    :cond_10f
    const/16 v18, 0x1

    goto :goto_a2

    .line 1149
    .end local v3    # "cnt":I
    .end local v4    # "currElem":Lorg/w3c/dom/Element;
    .end local v10    # "i":I
    .end local v15    # "servicePackageList":Lorg/w3c/dom/NodeList;
    :cond_112
    sget-object v18, mSKLog:Lcom/android/server/SKLogger;

    const-string v20, "SEAMSContainer"

    const-string v21, "Container has signature mis-match with agent"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    const/16 v18, -0x1

    goto/16 :goto_a2

    .line 1153
    :cond_125
    sget-object v18, mSKLog:Lcom/android/server/SKLogger;

    const-string v20, "SEAMSContainer"

    const-string v21, "Container non-empty"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Lorg/xml/sax/SAXException; {:try_start_a4 .. :try_end_134} :catch_138
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a4 .. :try_end_134} :catch_150
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_134} :catch_158
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_134} :catch_15d
    .catchall {:try_start_a4 .. :try_end_134} :catchall_155

    .line 1154
    const/16 v18, 0x0

    goto/16 :goto_a2

    .line 1156
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v16    # "signer":Lorg/w3c/dom/NodeList;
    .end local v17    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_138
    move-exception v9

    .line 1157
    .local v9, "e1":Lorg/xml/sax/SAXException;
    :try_start_139
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 1165
    .end local v9    # "e1":Lorg/xml/sax/SAXException;
    :cond_13c
    :goto_13c
    sget-object v18, mSKLog:Lcom/android/server/SKLogger;

    const-string v20, "SEAMSContainer"

    const-string/jumbo v21, "isContainerEmpty, POLICY_FAILED is returned"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    const/16 v18, -0x1

    goto/16 :goto_a2

    .line 1158
    :catch_150
    move-exception v9

    .line 1159
    .local v9, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_154
    .catchall {:try_start_139 .. :try_end_154} :catchall_155

    goto :goto_13c

    .line 1093
    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_155
    move-exception v18

    monitor-exit v19

    throw v18

    .line 1160
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_158
    move-exception v9

    .line 1161
    .local v9, "e1":Ljava/io/IOException;
    :try_start_159
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13c

    .line 1162
    .end local v9    # "e1":Ljava/io/IOException;
    :catch_15d
    move-exception v8

    .line 1163
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_161
    .catchall {:try_start_159 .. :try_end_161} :catchall_155

    goto :goto_13c
.end method

.method private static removeCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .param p0, "existContainerAllowCat"    # Ljava/lang/String;
    .param p1, "category"    # Ljava/lang/String;

    .prologue
    .line 1333
    const/4 v5, 0x0

    .line 1334
    .local v5, "returnCat":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1335
    .local v6, "srcCategories":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1336
    .local v4, "matchFound":Z
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_b
    if-ge v1, v3, :cond_35

    aget-object v2, v0, v1

    .line 1337
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 1338
    const/4 v4, 0x1

    .line 1336
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1340
    :cond_19
    if-nez v5, :cond_1d

    .line 1341
    move-object v5, v2

    goto :goto_16

    .line 1343
    :cond_1d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_16

    .line 1347
    .end local v2    # "item":Ljava/lang/String;
    :cond_35
    if-eqz v4, :cond_38

    .line 1354
    .end local v5    # "returnCat":Ljava/lang/String;
    :goto_37
    return-object v5

    .line 1353
    .restart local v5    # "returnCat":Ljava/lang/String;
    :cond_38
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "SEAMSContainer"

    const-string/jumbo v9, "removeCategory, null is returned"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    const/4 v5, 0x0

    goto :goto_37
.end method

.method protected static declared-synchronized removeEntryFromMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 34
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "cat"    # Ljava/lang/String;
    .param p4, "appType"    # I

    .prologue
    .line 943
    const-class v25, Lcom/android/server/SEAMSContainer;

    monitor-enter v25

    const/4 v11, 0x0

    .line 944
    .local v11, "isRemoveSuccess":Z
    const/16 v17, 0x0

    .line 947
    .local v17, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_6
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_30c

    move-result-object v7

    .line 949
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_a
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_d} :catch_306
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_a .. :try_end_d} :catch_30f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_a .. :try_end_d} :catch_315
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_31b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_321
    .catchall {:try_start_a .. :try_end_d} :catchall_30c

    move-result-object v5

    .line 950
    .local v5, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v6, 0x0

    .line 951
    .local v6, "doc":Lorg/w3c/dom/Document;
    const/4 v4, 0x0

    .line 953
    .local v4, "conType":I
    :try_start_10
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    invoke-static/range {v24 .. v24}, getContainerType(I)I
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_17} :catch_18f
    .catch Lorg/xml/sax/SAXException; {:try_start_10 .. :try_end_17} :catch_306
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_10 .. :try_end_17} :catch_30f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_10 .. :try_end_17} :catch_315
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_17} :catch_31b
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_17} :catch_321
    .catchall {:try_start_10 .. :try_end_17} :catchall_30c

    move-result v4

    .line 958
    :try_start_18
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v24

    if-eqz v24, :cond_1bd

    .line 962
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v24

    if-nez v24, :cond_2d

    .line 963
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 964
    :cond_2d
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 971
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->normalize()V

    .line 972
    const-string/jumbo v24, "policy"

    move-object/from16 v0, v24

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v14

    .line 973
    .local v14, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .line 974
    .local v13, "policyElement":Lorg/w3c/dom/Element;
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-interface {v14, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v13

    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v13, Lorg/w3c/dom/Element;

    .line 975
    .restart local v13    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v24, "signer"

    move-object/from16 v0, v24

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 976
    .local v19, "signer":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 977
    .local v20, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v15, 0x0

    .line 984
    .local v15, "removeElem":Lorg/w3c/dom/Element;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_5b
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    move/from16 v0, v24

    if-ge v10, v0, :cond_13c

    .line 985
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 986
    .restart local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v24, "signature"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2d6

    .line 990
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v4, v0, :cond_90

    const/16 v24, 0x3

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_c4

    if-eqz p4, :cond_c4

    :cond_90
    const/16 v24, 0x3

    move/from16 v0, v24

    if-ne v4, v0, :cond_a6

    const/16 v24, 0x5

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_c4

    const/16 v24, 0x6

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_c4

    :cond_a6
    const/16 v24, 0x4

    move/from16 v0, v24

    if-ne v4, v0, :cond_1eb

    const/16 v24, 0x7

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_c4

    const/16 v24, 0x8

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_c4

    const/16 v24, 0x9

    move/from16 v0, p4

    move/from16 v1, v24

    if-ne v0, v1, :cond_1eb

    .line 991
    :cond_c4
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v15

    .line 999
    :goto_d0
    if-eqz v15, :cond_23e

    const/16 v24, 0x1

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_10c

    const/16 v24, 0x3

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_10c

    const/16 v24, 0x5

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_10c

    if-eqz p4, :cond_10c

    const/16 v24, 0x6

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_10c

    const/16 v24, 0x7

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_10c

    const/16 v24, 0x8

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_10c

    const/16 v24, 0x9

    move/from16 v0, p4

    move/from16 v1, v24

    if-ne v0, v1, :cond_23e

    .line 1000
    :cond_10c
    const-string v24, "category"

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_130

    const-string v24, "bbccategory"

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_215

    .line 1004
    :cond_130
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1005
    const/4 v11, 0x1

    .line 1051
    :cond_13c
    :goto_13c
    if-eqz v11, :cond_2da

    .line 1052
    const-string/jumbo v24, "service"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 1053
    .local v18, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v24

    if-nez v24, :cond_154

    .line 1054
    move-object/from16 v0, v20

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1059
    :cond_154
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Lorg/w3c/dom/Element;->normalize()V

    .line 1060
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v23

    .line 1061
    .local v23, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v23 .. v23}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v22

    .line 1062
    .local v22, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v21, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v21

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1063
    .local v21, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v16, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1064
    .local v16, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1071
    .end local v16    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v18    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v21    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v22    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v23    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_17c
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v24

    if-eqz v24, :cond_18b

    .line 1072
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_18b
    .catch Lorg/xml/sax/SAXException; {:try_start_18 .. :try_end_18b} :catch_306
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_18 .. :try_end_18b} :catch_30f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_18 .. :try_end_18b} :catch_315
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18b} :catch_31b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18b} :catch_321
    .catchall {:try_start_18 .. :try_end_18b} :catchall_30c

    .end local v4    # "conType":I
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "i":I
    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    .end local v14    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v15    # "removeElem":Lorg/w3c/dom/Element;
    .end local v19    # "signer":Lorg/w3c/dom/NodeList;
    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_18b
    :goto_18b
    move/from16 v24, v11

    .line 1084
    :goto_18d
    monitor-exit v25

    return v24

    .line 954
    .restart local v4    # "conType":I
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    :catch_18f
    move-exception v8

    .line 955
    .local v8, "e":Ljava/lang/NumberFormatException;
    :try_start_190
    sget-object v24, mSKLog:Lcom/android/server/SKLogger;

    const-string v26, "SEAMSContainer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "category: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " integer parse failed"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/16 v24, 0x0

    goto :goto_18d

    .line 967
    .end local v8    # "e":Ljava/lang/NumberFormatException;
    :cond_1bd
    sget-object v24, mSKLog:Lcom/android/server/SKLogger;

    const-string v26, "SEAMSContainer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "removeEntryFromMac, "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " does not exist, creating file"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    const/16 v24, 0x0

    goto :goto_18d

    .line 993
    .restart local v10    # "i":I
    .restart local v13    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v14    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v15    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v19    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_1eb
    if-eqz p4, :cond_1fd

    const/16 v24, 0x6

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_1fd

    const/16 v24, 0x9

    move/from16 v0, p4

    move/from16 v1, v24

    if-ne v0, v1, :cond_20b

    .line 994
    :cond_1fd
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, checkContainerIDEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v15

    goto/16 :goto_d0

    .line 996
    :cond_20b
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-static {v0, v1}, checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v15

    goto/16 :goto_d0

    .line 1009
    :cond_215
    sget-object v24, mSKLog:Lcom/android/server/SKLogger;

    const-string v26, "SEAMSContainer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "removeEntryFromMac, no match found for"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/16 v24, 0x0

    goto/16 :goto_18d

    .line 1013
    :cond_23e
    if-eqz v15, :cond_2ae

    const/16 v24, 0x4

    move/from16 v0, p4

    move/from16 v1, v24

    if-eq v0, v1, :cond_250

    const/16 v24, 0x2

    move/from16 v0, p4

    move/from16 v1, v24

    if-ne v0, v1, :cond_2ae

    .line 1014
    :cond_250
    const/16 v24, 0x2

    move/from16 v0, v24

    if-ne v4, v0, :cond_29a

    const/16 v24, 0x4

    move/from16 v0, p4

    move/from16 v1, v24

    if-ne v0, v1, :cond_29a

    .line 1015
    const-string v24, "containerallowcategory"

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_27e

    .line 1019
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1020
    const/4 v11, 0x1

    .line 1021
    goto/16 :goto_13c

    .line 1026
    :cond_27e
    const-string v24, "containerallowcategory"

    move-object/from16 v0, v24

    invoke-interface {v15, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-static {v0, v1}, removeCategory(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1027
    .local v12, "newVal":Ljava/lang/String;
    if-eqz v12, :cond_2d6

    .line 1028
    const-string v24, "containerallowcategory"

    move-object/from16 v0, v24

    invoke-interface {v15, v0, v12}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    const/4 v11, 0x1

    .line 1030
    goto/16 :goto_13c

    .line 1033
    .end local v12    # "newVal":Ljava/lang/String;
    :cond_29a
    const/16 v24, 0x1

    move/from16 v0, v24

    if-ne v4, v0, :cond_2d6

    .line 1037
    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-interface {v0, v15}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1038
    const/4 v11, 0x1

    .line 1039
    goto/16 :goto_13c

    .line 1043
    :cond_2ae
    sget-object v24, mSKLog:Lcom/android/server/SKLogger;

    const-string v26, "SEAMSContainer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Signature matches but no entry for "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    const/16 v24, 0x0

    goto/16 :goto_18d

    .line 984
    :cond_2d6
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_5b

    .line 1069
    :cond_2da
    sget-object v24, mSKLog:Lcom/android/server/SKLogger;

    const-string v26, "SEAMSContainer"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, " removeEntryFromMac, No match for packageName:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ". Please check again"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_304
    .catch Lorg/xml/sax/SAXException; {:try_start_190 .. :try_end_304} :catch_306
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_190 .. :try_end_304} :catch_30f
    .catch Ljavax/xml/transform/TransformerException; {:try_start_190 .. :try_end_304} :catch_315
    .catch Ljava/io/IOException; {:try_start_190 .. :try_end_304} :catch_31b
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_304} :catch_321
    .catchall {:try_start_190 .. :try_end_304} :catchall_30c

    goto/16 :goto_17c

    .line 1073
    .end local v4    # "conType":I
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "i":I
    .end local v13    # "policyElement":Lorg/w3c/dom/Element;
    .end local v14    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v15    # "removeElem":Lorg/w3c/dom/Element;
    .end local v19    # "signer":Lorg/w3c/dom/NodeList;
    .end local v20    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_306
    move-exception v9

    .line 1074
    .local v9, "e1":Lorg/xml/sax/SAXException;
    :try_start_307
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_30a
    .catchall {:try_start_307 .. :try_end_30a} :catchall_30c

    goto/16 :goto_18b

    .line 943
    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "e1":Lorg/xml/sax/SAXException;
    :catchall_30c
    move-exception v24

    monitor-exit v25

    throw v24

    .line 1075
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :catch_30f
    move-exception v9

    .line 1076
    .local v9, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_310
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_18b

    .line 1077
    .end local v9    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_315
    move-exception v9

    .line 1078
    .local v9, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_18b

    .line 1079
    .end local v9    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_31b
    move-exception v9

    .line 1080
    .local v9, "e1":Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_18b

    .line 1081
    .end local v9    # "e1":Ljava/io/IOException;
    :catch_321
    move-exception v8

    .line 1082
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_325
    .catchall {:try_start_310 .. :try_end_325} :catchall_30c

    goto/16 :goto_18b
.end method

.method protected static declared-synchronized updateEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)I
    .registers 49
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "cat"    # Ljava/lang/String;
    .param p5, "allowCategory"    # Ljava/lang/String;
    .param p6, "appType"    # I
    .param p7, "agent"    # Z
    .param p8, "removeFlag"    # Z

    .prologue
    .line 483
    const-class v36, Lcom/android/server/SEAMSContainer;

    monitor-enter v36

    const/4 v14, 0x0

    .line 484
    .local v14, "isAddedMac":Z
    const/16 v16, 0x0

    .line 485
    .local v16, "macPermExists":Z
    const/16 v34, 0x0

    .line 486
    .local v34, "userID":I
    :try_start_8
    invoke-static {}, getBbcEnabled()I

    move-result v34

    .line 489
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_f
    .catchall {:try_start_8 .. :try_end_f} :catchall_2c9

    move-result-object v7

    .line 491
    .local v7, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v6, 0x0

    .line 493
    .local v6, "doc":Lorg/w3c/dom/Document;
    :try_start_11
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    .line 494
    .local v5, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v35

    if-eqz v35, :cond_254

    .line 498
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v35

    if-nez v35, :cond_2a

    .line 499
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 500
    :cond_2a
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 501
    const/16 v16, 0x1

    .line 513
    :goto_32
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Element;->normalize()V

    .line 514
    const-string/jumbo v35, "policy"

    move-object/from16 v0, v35

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 515
    .local v20, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v19, 0x0

    .line 516
    .local v19, "policyElement":Lorg/w3c/dom/Element;
    const/16 v35, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v19

    .end local v19    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v19, Lorg/w3c/dom/Element;

    .line 517
    .restart local v19    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v35, "signer"

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v25

    .line 518
    .local v25, "signer":Lorg/w3c/dom/NodeList;
    const/16 v27, 0x0

    .line 519
    .local v27, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v26, 0x0

    .line 520
    .local v26, "signerElement":Lorg/w3c/dom/Element;
    const/4 v3, 0x0

    .line 521
    .local v3, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v17, 0x0

    .line 522
    .local v17, "newElement":Lorg/w3c/dom/Element;
    const/16 v24, 0x0

    .line 524
    .local v24, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v29, 0x0

    .line 525
    .local v29, "specialTag":Ljava/lang/String;
    const/16 v35, 0x5

    move/from16 v0, p6

    move/from16 v1, v35

    if-ne v0, v1, :cond_2cc

    .line 526
    const-string/jumbo v29, "service"

    .line 527
    move-object/from16 v0, v29

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v17

    .line 528
    const-string/jumbo v35, "name"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string v35, "bbcseinfo"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, p3

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    const-string v35, "bbccategory"

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, p4

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    const-string v35, "0"

    move-object/from16 v0, p5

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_292

    .line 532
    const-string v35, "bbcallowcategory"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "0,"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ",502-700"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    :goto_cd
    const-string/jumbo v35, "sdcarduserid"

    invoke-static/range {v34 .. v34}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    if-eqz p7, :cond_ee

    .line 538
    const-string v35, "agent"

    invoke-static/range {p7 .. p7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    :cond_ee
    invoke-static/range {p1 .. p2}, Lcom/android/server/pm/SELinuxMMAC;->findMacPermEntry(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v23

    .line 548
    .local v23, "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    const-string/jumbo v35, "signer"

    move-object/from16 v0, v35

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v26

    .line 549
    const-string/jumbo v35, "seinfo"

    move-object/from16 v0, v35

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v24

    .line 550
    const-string v35, "allow-all"

    move-object/from16 v0, v35

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 552
    const-string/jumbo v35, "signature"

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string/jumbo v35, "value"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcseinfo:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const-string v35, "category"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    const-string v35, "allowcategory"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v35, "bbccategory"

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->bbccategory:I

    move/from16 v37, v0

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v35, "bbcallowcategory"

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->bbcallowCategory:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_177
    invoke-interface/range {v25 .. v25}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    move/from16 v0, v35

    if-ge v12, v0, :cond_394

    .line 563
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v27

    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v27, Lorg/w3c/dom/Element;

    .line 564
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v35, "signature"

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_3fe

    .line 565
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-static {v0, v1}, checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v10

    .line 566
    .local v10, "existElem":Lorg/w3c/dom/Element;
    if-eqz v10, :cond_3ef

    .line 568
    const-string v18, ""

    .line 569
    .local v18, "newValue":Ljava/lang/String;
    const/16 v31, 0x0

    .line 570
    .local v31, "tmpValue":[Ljava/lang/String;
    const-string v35, "bbcallowcategory"

    move-object/from16 v0, v35

    invoke-interface {v10, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 571
    .local v11, "existValue":Ljava/lang/String;
    if-eqz p8, :cond_344

    .line 572
    sget-object v35, mSKLog:Lcom/android/server/SKLogger;

    const-string v37, "SEAMSContainer"

    const-string/jumbo v38, "updateEntryToMac, removeFlag is true"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v35, "[,]"

    move-object/from16 v0, v35

    invoke-virtual {v11, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v31

    .line 574
    move-object/from16 v4, v31

    .local v4, "arr$":[Ljava/lang/String;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_1d0
    if-ge v13, v15, :cond_38a

    aget-object v30, v4, v13

    .line 575
    .local v30, "tmpAllowCategory":Ljava/lang/String;
    sget-object v35, mSKLog:Lcom/android/server/SKLogger;

    const-string v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "updateEntryToMac, removeFlag is true tmpAllowCategory = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ",allowCategory = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v35, "0"

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_21d

    move-object/from16 v0, v30

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2f4

    .line 577
    :cond_21d
    sget-object v35, mSKLog:Lcom/android/server/SKLogger;

    const-string v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "updateEntryToMac, removeFlag is true skip tmpAllowCategory = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, ",allowCategory = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    :goto_250
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1d0

    .line 506
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v10    # "existElem":Lorg/w3c/dom/Element;
    .end local v11    # "existValue":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v17    # "newElement":Lorg/w3c/dom/Element;
    .end local v18    # "newValue":Ljava/lang/String;
    .end local v19    # "policyElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    .end local v30    # "tmpAllowCategory":Ljava/lang/String;
    .end local v31    # "tmpValue":[Ljava/lang/String;
    :cond_254
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z

    .line 507
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v35

    if-nez v35, :cond_266

    .line 508
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 509
    :cond_266
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    .line 510
    const-string/jumbo v35, "policy"

    move-object/from16 v0, v35

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v22

    .line 511
    .local v22, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v22

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_278
    .catch Lorg/xml/sax/SAXException; {:try_start_11 .. :try_end_278} :catch_27a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_11 .. :try_end_278} :catch_2c4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_11 .. :try_end_278} :catch_33e
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_278} :catch_40c
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_278} :catch_412
    .catchall {:try_start_11 .. :try_end_278} :catchall_2c9

    goto/16 :goto_32

    .line 623
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v22    # "rootElement":Lorg/w3c/dom/Element;
    :catch_27a
    move-exception v9

    .line 624
    .local v9, "e1":Lorg/xml/sax/SAXException;
    :try_start_27b
    invoke-virtual {v9}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 634
    .end local v9    # "e1":Lorg/xml/sax/SAXException;
    :goto_27e
    sget-object v35, mSKLog:Lcom/android/server/SKLogger;

    const-string v37, "SEAMSContainer"

    const-string/jumbo v38, "updateEntryToMac, POLICY_FAILED is returned"

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28e
    .catchall {:try_start_27b .. :try_end_28e} :catchall_2c9

    .line 635
    const/16 v35, -0x1

    :goto_290
    monitor-exit v36

    return v35

    .line 534
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v17    # "newElement":Lorg/w3c/dom/Element;
    .restart local v19    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v26    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v29    # "specialTag":Ljava/lang/String;
    :cond_292
    :try_start_292
    const-string v35, "bbcallowcategory"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "0,"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ","

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move-object/from16 v2, v37

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c2
    .catch Lorg/xml/sax/SAXException; {:try_start_292 .. :try_end_2c2} :catch_27a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_292 .. :try_end_2c2} :catch_2c4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_292 .. :try_end_2c2} :catch_33e
    .catch Ljava/io/IOException; {:try_start_292 .. :try_end_2c2} :catch_40c
    .catch Ljava/lang/Exception; {:try_start_292 .. :try_end_2c2} :catch_412
    .catchall {:try_start_292 .. :try_end_2c2} :catchall_2c9

    goto/16 :goto_cd

    .line 625
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v17    # "newElement":Lorg/w3c/dom/Element;
    .end local v19    # "policyElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    :catch_2c4
    move-exception v9

    .line 626
    .local v9, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_2c5
    invoke-virtual {v9}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_2c8
    .catchall {:try_start_2c5 .. :try_end_2c8} :catchall_2c9

    goto :goto_27e

    .line 483
    .end local v6    # "doc":Lorg/w3c/dom/Document;
    .end local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v9    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_2c9
    move-exception v35

    monitor-exit v36

    throw v35

    .line 540
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v6    # "doc":Lorg/w3c/dom/Document;
    .restart local v7    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v17    # "newElement":Lorg/w3c/dom/Element;
    .restart local v19    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v26    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v29    # "specialTag":Ljava/lang/String;
    :cond_2cc
    :try_start_2cc
    sget-object v35, mSKLog:Lcom/android/server/SKLogger;

    const-string v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "updateEntryToMac is not supported for apptype:"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const/16 v35, -0x1

    goto :goto_290

    .line 581
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v10    # "existElem":Lorg/w3c/dom/Element;
    .restart local v11    # "existValue":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v13    # "i$":I
    .restart local v15    # "len$":I
    .restart local v18    # "newValue":Ljava/lang/String;
    .restart local v23    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v30    # "tmpAllowCategory":Ljava/lang/String;
    .restart local v31    # "tmpValue":[Ljava/lang/String;
    :cond_2f4
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v37, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 582
    sget-object v35, mSKLog:Lcom/android/server/SKLogger;

    const-string v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "updateEntryToMac, removeFlag is true newValue = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33c
    .catch Lorg/xml/sax/SAXException; {:try_start_2cc .. :try_end_33c} :catch_27a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2cc .. :try_end_33c} :catch_2c4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2cc .. :try_end_33c} :catch_33e
    .catch Ljava/io/IOException; {:try_start_2cc .. :try_end_33c} :catch_40c
    .catch Ljava/lang/Exception; {:try_start_2cc .. :try_end_33c} :catch_412
    .catchall {:try_start_2cc .. :try_end_33c} :catchall_2c9

    goto/16 :goto_250

    .line 627
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "existElem":Lorg/w3c/dom/Element;
    .end local v11    # "existValue":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v13    # "i$":I
    .end local v15    # "len$":I
    .end local v17    # "newElement":Lorg/w3c/dom/Element;
    .end local v18    # "newValue":Ljava/lang/String;
    .end local v19    # "policyElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "specialTag":Ljava/lang/String;
    .end local v30    # "tmpAllowCategory":Ljava/lang/String;
    .end local v31    # "tmpValue":[Ljava/lang/String;
    :catch_33e
    move-exception v9

    .line 628
    .local v9, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_33f
    invoke-virtual {v9}, Ljavax/xml/transform/TransformerException;->printStackTrace()V
    :try_end_342
    .catchall {:try_start_33f .. :try_end_342} :catchall_2c9

    goto/16 :goto_27e

    .line 586
    .end local v9    # "e1":Ljavax/xml/transform/TransformerException;
    .restart local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v10    # "existElem":Lorg/w3c/dom/Element;
    .restart local v11    # "existValue":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v17    # "newElement":Lorg/w3c/dom/Element;
    .restart local v18    # "newValue":Ljava/lang/String;
    .restart local v19    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v23    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v25    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v26    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v29    # "specialTag":Ljava/lang/String;
    .restart local v31    # "tmpValue":[Ljava/lang/String;
    :cond_344
    :try_start_344
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string v37, ","

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 587
    sget-object v35, mSKLog:Lcom/android/server/SKLogger;

    const-string v37, "SEAMSContainer"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "updateEntryToMac, removeFlag is false newValue = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    :cond_38a
    const-string v35, "bbcallowcategory"

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-interface {v10, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const/4 v14, 0x1

    .line 603
    .end local v10    # "existElem":Lorg/w3c/dom/Element;
    .end local v11    # "existValue":Ljava/lang/String;
    .end local v18    # "newValue":Ljava/lang/String;
    .end local v31    # "tmpValue":[Ljava/lang/String;
    :cond_394
    :goto_394
    if-nez v14, :cond_3b0

    .line 604
    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 605
    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 606
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 607
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 609
    :cond_3b0
    invoke-interface {v6}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Element;->normalize()V

    .line 610
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v33

    .line 611
    .local v33, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v33 .. v33}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v32

    .line 612
    .local v32, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v28, 0x0

    .line 613
    .local v28, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v16, :cond_402

    .line 614
    new-instance v28, Ljavax/xml/transform/dom/DOMSource;

    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v28

    invoke-direct {v0, v6}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 618
    .restart local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_3ca
    new-instance v21, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 619
    .local v21, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v32

    move-object/from16 v1, v28

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 620
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v35

    if-eqz v35, :cond_3eb

    .line 621
    const/16 v35, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 622
    :cond_3eb
    const/16 v35, 0x0

    goto/16 :goto_290

    .line 594
    .end local v21    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v10    # "existElem":Lorg/w3c/dom/Element;
    :cond_3ef
    move-object/from16 v0, v25

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 598
    const/4 v14, 0x1

    .line 599
    goto :goto_394

    .line 562
    .end local v10    # "existElem":Lorg/w3c/dom/Element;
    :cond_3fe
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_177

    .line 616
    .restart local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_402
    new-instance v28, Ljavax/xml/transform/dom/DOMSource;

    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_40b
    .catch Lorg/xml/sax/SAXException; {:try_start_344 .. :try_end_40b} :catch_27a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_344 .. :try_end_40b} :catch_2c4
    .catch Ljavax/xml/transform/TransformerException; {:try_start_344 .. :try_end_40b} :catch_33e
    .catch Ljava/io/IOException; {:try_start_344 .. :try_end_40b} :catch_40c
    .catch Ljava/lang/Exception; {:try_start_344 .. :try_end_40b} :catch_412
    .catchall {:try_start_344 .. :try_end_40b} :catchall_2c9

    .restart local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto :goto_3ca

    .line 629
    .end local v3    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v5    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "i":I
    .end local v17    # "newElement":Lorg/w3c/dom/Element;
    .end local v19    # "policyElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v23    # "seandroidInfo":Landroid/content/pm/ApplicationInfo;
    .end local v24    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v25    # "signer":Lorg/w3c/dom/NodeList;
    .end local v26    # "signerElement":Lorg/w3c/dom/Element;
    .end local v27    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v28    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v29    # "specialTag":Ljava/lang/String;
    .end local v32    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v33    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_40c
    move-exception v9

    .line 630
    .local v9, "e1":Ljava/io/IOException;
    :try_start_40d
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_27e

    .line 631
    .end local v9    # "e1":Ljava/io/IOException;
    :catch_412
    move-exception v8

    .line 632
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_416
    .catchall {:try_start_40d .. :try_end_416} :catchall_2c9

    goto/16 :goto_27e
.end method


# virtual methods
.method public activateDomain(IZ)I
    .registers 4
    .param p1, "uid"    # I
    .param p2, "isBundleActivation"    # Z

    .prologue
    .line 133
    const/4 v0, -0x1

    return v0
.end method

.method public addAgentEntryAfterFotaAndReload()I
    .registers 2

    .prologue
    .line 158
    const/4 v0, -0x1

    return v0
.end method

.method public addAppToContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 138
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized addSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 26
    .param p1, "contextFileName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "fileType"    # Ljava/lang/String;
    .param p7, "category"    # I

    .prologue
    .line 642
    monitor-enter p0

    const/4 v9, 0x0

    .line 643
    .local v9, "br":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 646
    .local v15, "pw":Ljava/io/PrintWriter;
    :try_start_3
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 647
    .local v13, "inFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 648
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " does not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 650
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    .line 651
    invoke-virtual {v13}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 652
    const/4 v1, 0x1

    invoke-virtual {v13, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 655
    :cond_3f
    new-instance v17, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 656
    .local v17, "tempFile":Ljava/io/File;
    new-instance v10, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v10, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_69} :catch_1c4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_69} :catch_153
    .catchall {:try_start_3 .. :try_end_69} :catchall_19a

    .line 657
    .end local v9    # "br":Ljava/io/BufferedReader;
    .local v10, "br":Ljava/io/BufferedReader;
    :try_start_69
    new-instance v16, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, v17

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_77
    .catch Ljava/io/FileNotFoundException; {:try_start_69 .. :try_end_77} :catch_1c7
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_77} :catch_1bc
    .catchall {:try_start_69 .. :try_end_77} :catchall_1cb

    .line 659
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    const/4 v14, 0x0

    .local v14, "line":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 660
    :try_start_86
    invoke-virtual/range {v1 .. v7}, getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 665
    .local v8, "addedLine":Ljava/lang/String;
    :goto_8a
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_f2

    .line 666
    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    .line 667
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->flush()V
    :try_end_9e
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_9e} :catch_9f
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_9e} :catch_1bf
    .catchall {:try_start_86 .. :try_end_9e} :catchall_1ce

    goto :goto_8a

    .line 694
    .end local v8    # "addedLine":Ljava/lang/String;
    :catch_9f
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .line 695
    .end local v10    # "br":Ljava/io/BufferedReader;
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "tempFile":Ljava/io/File;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .local v12, "ex":Ljava/io/FileNotFoundException;
    :goto_a3
    :try_start_a3
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c0
    .catchall {:try_start_a3 .. :try_end_c0} :catchall_19a

    .line 696
    const/4 v1, -0x1

    .line 728
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    :goto_c1
    monitor-exit p0

    return v1

    .line 670
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "tempFile":Ljava/io/File;
    :cond_c3
    :try_start_c3
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 671
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 672
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_ed

    .line 673
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not delete the file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_ed
    const/4 v1, 0x0

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_c1

    .line 679
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_f2
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 680
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->flush()V

    .line 682
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 683
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V

    .line 685
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_128

    .line 686
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_c1

    .line 689
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_128
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_19d

    .line 690
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, Could not rename file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14d
    .catch Ljava/io/FileNotFoundException; {:try_start_c3 .. :try_end_14d} :catch_9f
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_14d} :catch_1bf
    .catchall {:try_start_c3 .. :try_end_14d} :catchall_1ce

    .line 691
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_c1

    .line 697
    .end local v8    # "addedLine":Ljava/lang/String;
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "tempFile":Ljava/io/File;
    :catch_153
    move-exception v12

    .line 698
    .local v12, "ex":Ljava/io/IOException;
    :goto_154
    :try_start_154
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "remove Seapp_context, file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Other Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_177
    .catchall {:try_start_154 .. :try_end_177} :catchall_19a

    .line 701
    if-eqz v9, :cond_17d

    .line 702
    :try_start_179
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 703
    const/4 v9, 0x0

    .line 705
    :cond_17d
    if-eqz v15, :cond_183

    .line 706
    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V
    :try_end_182
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_182} :catch_18f
    .catchall {:try_start_179 .. :try_end_182} :catchall_19a

    .line 707
    const/4 v15, 0x0

    .line 712
    :cond_183
    :goto_183
    :try_start_183
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "addSEAppContext, POLICY_FAILED is returned"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    const/4 v1, -0x1

    goto/16 :goto_c1

    .line 709
    :catch_18f
    move-exception v11

    .line 710
    .local v11, "e":Ljava/io/IOException;
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_199
    .catchall {:try_start_183 .. :try_end_199} :catchall_19a

    goto :goto_183

    .line 642
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "ex":Ljava/io/IOException;
    :catchall_19a
    move-exception v1

    :goto_19b
    monitor-exit p0

    throw v1

    .line 717
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "tempFile":Ljava/io/File;
    :cond_19d
    if-eqz v10, :cond_1d7

    .line 718
    :try_start_19f
    invoke-virtual {v10}, Ljava/io/BufferedReader;->close()V
    :try_end_1a2
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1a2} :catch_1ac
    .catchall {:try_start_19f .. :try_end_1a2} :catchall_1ce

    .line 719
    const/4 v9, 0x0

    .line 721
    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    :goto_1a3
    if-eqz v16, :cond_1b7

    .line 722
    :try_start_1a5
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1a8} :catch_1ba
    .catchall {:try_start_1a5 .. :try_end_1a8} :catchall_1d3

    .line 723
    const/4 v15, 0x0

    .line 728
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :goto_1a9
    const/4 v1, 0x0

    goto/16 :goto_c1

    .line 725
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_1ac
    move-exception v11

    move-object v9, v10

    .line 726
    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_1ae
    :try_start_1ae
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1b7
    .catchall {:try_start_1ae .. :try_end_1b7} :catchall_1d3

    .end local v11    # "e":Ljava/io/IOException;
    :cond_1b7
    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto :goto_1a9

    .line 725
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_1ba
    move-exception v11

    goto :goto_1ae

    .line 697
    .end local v8    # "addedLine":Ljava/lang/String;
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :catch_1bc
    move-exception v12

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_154

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_1bf
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_154

    .line 694
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "tempFile":Ljava/io/File;
    :catch_1c4
    move-exception v12

    goto/16 :goto_a3

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v17    # "tempFile":Ljava/io/File;
    :catch_1c7
    move-exception v12

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_a3

    .line 642
    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    :catchall_1cb
    move-exception v1

    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_19b

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catchall_1ce
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_19b

    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v8    # "addedLine":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catchall_1d3
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto :goto_19b

    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v10    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_1d7
    move-object v9, v10

    .end local v10    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    goto :goto_1a3
.end method

.method public createSEContainer(II)I
    .registers 4
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 150
    const/4 v0, -0x1

    return v0
.end method

.method public deActivateDomain(I)I
    .registers 3
    .param p1, "uid"    # I

    .prologue
    .line 142
    const/4 v0, -0x1

    return v0
.end method

.method protected deleteSEContainerClipboardTableEntry(II)I
    .registers 15
    .param p1, "containerID"    # I
    .param p2, "mode"    # I

    .prologue
    .line 1395
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1396
    .local v2, "cvWhere":Landroid/content/ContentValues;
    const-string v8, "containerID"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1398
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "containerID"

    aput-object v9, v5, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "mode"

    aput-object v9, v5, v8

    .line 1399
    .local v5, "sColumns":[Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 1400
    .local v0, "contId":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 1401
    .local v7, "status":Ljava/lang/String;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 1403
    .local v6, "sValues":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 1407
    .local v4, "ret":Z
    :try_start_2e
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "SeamsClipboardTable"

    const-string/jumbo v10, "mode"

    invoke-virtual {v8, v9, v10, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v1

    .line 1409
    .local v1, "cvOld":Landroid/content/ContentValues;
    if-eqz v1, :cond_41

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-nez v8, :cond_57

    .line 1410
    :cond_41
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    const-string/jumbo v10, "cvOld null or size 0"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    const-string/jumbo v10, "no entry in database to delete"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1413
    const/4 v8, -0x1

    .line 1422
    .end local v1    # "cvOld":Landroid/content/ContentValues;
    :goto_56
    return v8

    .line 1415
    .restart local v1    # "cvOld":Landroid/content/ContentValues;
    :cond_57
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Checking if entry already exists:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1417
    iget-object v8, p0, mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "SeamsClipboardTable"

    invoke-virtual {v8, v9, v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    .line 1418
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSEContainerClipboardTable: ret = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_98} :catch_9f

    .line 1419
    const/4 v8, 0x1

    if-ne v4, v8, :cond_9d

    const/4 v8, 0x0

    goto :goto_56

    :cond_9d
    const/4 v8, -0x1

    goto :goto_56

    .line 1420
    .end local v1    # "cvOld":Landroid/content/ContentValues;
    :catch_9f
    move-exception v3

    .line 1421
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, mSKLog:Lcom/android/server/SKLogger;

    const-string v9, "SEAMSContainer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "updateSEContainerClipboardTable Exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1422
    const/4 v8, -0x1

    goto :goto_56
.end method

.method public getActivationStatus()I
    .registers 2

    .prologue
    .line 146
    const/4 v0, -0x1

    return v0
.end method

.method protected getMDMID()Lcom/android/server/pm/SELinuxMMAC$MDMID;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 1359
    const/4 v1, 0x0

    .line 1363
    .local v1, "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1364
    .local v3, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1365
    .local v2, "pid":I
    new-instance v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;

    .end local v1    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    invoke-direct {v1}, Lcom/android/server/pm/SELinuxMMAC$MDMID;-><init>()V

    .line 1366
    .restart local v1    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    sget-object v5, mContext:Landroid/content/Context;

    invoke-static {v5, v2, v3}, Lcom/android/server/ServiceKeeper;->getPackageName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    .line 1367
    iget-object v5, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    if-nez v5, :cond_26

    .line 1369
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    const-string v7, "MDMID package name is null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 1382
    .end local v1    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :goto_25
    return-object v1

    .line 1373
    .restart local v1    # "mdmID":Lcom/android/server/pm/SELinuxMMAC$MDMID;
    :cond_26
    iget-object v5, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->packageName:Ljava/lang/String;

    invoke-static {v5}, getSignatureFromPackage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1374
    .local v0, "mdmCerts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_34

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3f

    .line 1376
    :cond_34
    sget-object v5, mSKLog:Lcom/android/server/SKLogger;

    const-string v6, "SEAMSContainer"

    const-string v7, "MDMID certs are null"

    invoke-virtual {v5, v6, v7}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v4

    .line 1378
    goto :goto_25

    .line 1380
    :cond_3f
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v1, Lcom/android/server/pm/SELinuxMMAC$MDMID;->certs:Ljava/lang/String;

    goto :goto_25
.end method

.method public getPackageNamesFromSEContainer(II)[Ljava/lang/String;
    .registers 4
    .param p1, "containerID"    # I
    .param p2, "appType"    # I

    .prologue
    .line 177
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "userType"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "seinfo"    # Ljava/lang/String;
    .param p4, "domain"    # Ljava/lang/String;
    .param p5, "fileType"    # Ljava/lang/String;
    .param p6, "category"    # I

    .prologue
    .line 733
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDs()Ljava/util/HashSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSEContainerIDsFromPackageName(Ljava/lang/String;I)[I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "appType"    # I

    .prologue
    .line 187
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSignatureFromMac(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 195
    const/4 v0, 0x0

    return-object v0
.end method

.method public isProcessRunning(Ljava/lang/String;)Z
    .registers 9
    .param p1, "processName"    # Ljava/lang/String;

    .prologue
    .line 1255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1256
    .local v2, "origId":J
    sget-object v5, mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1257
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 1258
    .local v4, "procInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1260
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2f

    .line 1261
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1262
    const/4 v5, 0x1

    .line 1265
    :goto_2b
    return v5

    .line 1260
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 1265
    :cond_2f
    const/4 v5, 0x0

    goto :goto_2b
.end method

.method public loadContainerSetting(Ljava/lang/String;IZ)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I
    .param p3, "appNotInstalled"    # Z

    .prologue
    .line 202
    const/4 v0, -0x1

    .line 203
    .local v0, "ret":I
    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 204
    :cond_9
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "SEAMSContainer"

    const-string/jumbo v4, "loadContainerSetting, packageName is null or empty"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 218
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_14
    return v1

    .line 210
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_15
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    .line 212
    iget-object v2, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 216
    const/4 v0, 0x0

    :cond_29
    move v1, v0

    .line 218
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_14
.end method

.method public removeAppFromContainer(Ljava/lang/String;[Ljava/lang/String;II)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "appType"    # I

    .prologue
    .line 222
    const/4 v0, -0x1

    return v0
.end method

.method protected declared-synchronized removeSEAppContext(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 27
    .param p1, "contextFileName"    # Ljava/lang/String;
    .param p2, "userType"    # Ljava/lang/String;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "seinfo"    # Ljava/lang/String;
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "fileType"    # Ljava/lang/String;
    .param p7, "category"    # I

    .prologue
    .line 790
    monitor-enter p0

    const/4 v8, 0x0

    .line 791
    .local v8, "br":Ljava/io/BufferedReader;
    const/4 v15, 0x0

    .line 794
    .local v15, "pw":Ljava/io/PrintWriter;
    const/4 v10, 0x0

    .line 795
    .local v10, "count":I
    :try_start_4
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    .local v13, "inFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 798
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Parameter is not an existing file"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_18} :catch_191
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_18} :catch_137
    .catchall {:try_start_4 .. :try_end_18} :catchall_175

    .line 799
    const/4 v1, -0x1

    .line 868
    .end local v13    # "inFile":Ljava/io/File;
    :goto_19
    monitor-exit p0

    return v1

    .line 802
    .restart local v13    # "inFile":Ljava/io/File;
    :cond_1b
    :try_start_1b
    new-instance v18, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 804
    .local v18, "tempFile":Ljava/io/File;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_45} :catch_191
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_45} :catch_137
    .catchall {:try_start_1b .. :try_end_45} :catchall_175

    .line 805
    .end local v8    # "br":Ljava/io/BufferedReader;
    .local v9, "br":Ljava/io/BufferedReader;
    :try_start_45
    new-instance v16, Ljava/io/PrintWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, v18

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_53} :catch_194
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_53} :catch_189
    .catchall {:try_start_45 .. :try_end_53} :catchall_198

    .line 807
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .local v16, "pw":Ljava/io/PrintWriter;
    const/4 v14, 0x0

    .local v14, "line":Ljava/lang/String;
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    .line 808
    :try_start_62
    invoke-virtual/range {v1 .. v7}, getSEAppContextLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v17

    .line 809
    .local v17, "removeLine":Ljava/lang/String;
    :goto_66
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_a4

    .line 810
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 811
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 812
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->flush()V
    :try_end_7c
    .catch Ljava/io/FileNotFoundException; {:try_start_62 .. :try_end_7c} :catch_7d
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_7c} :catch_18c
    .catchall {:try_start_62 .. :try_end_7c} :catchall_19b

    goto :goto_66

    .line 835
    .end local v17    # "removeLine":Ljava/lang/String;
    :catch_7d
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .line 836
    .end local v9    # "br":Ljava/io/BufferedReader;
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "tempFile":Ljava/io/File;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .local v12, "ex":Ljava/io/FileNotFoundException;
    :goto_81
    :try_start_81
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9e
    .catchall {:try_start_81 .. :try_end_9e} :catchall_175

    .line 837
    const/4 v1, -0x1

    goto/16 :goto_19

    .line 814
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v12    # "ex":Ljava/io/FileNotFoundException;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "removeLine":Ljava/lang/String;
    .restart local v18    # "tempFile":Ljava/io/File;
    :cond_a1
    add-int/lit8 v10, v10, 0x1

    goto :goto_66

    .line 817
    :cond_a4
    :try_start_a4
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V

    .line 818
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V

    .line 819
    if-nez v10, :cond_e3

    .line 820
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_d4

    .line 821
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->delete()Z
    :try_end_d4
    .catch Ljava/io/FileNotFoundException; {:try_start_a4 .. :try_end_d4} :catch_7d
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_d4} :catch_18c
    .catchall {:try_start_a4 .. :try_end_d4} :catchall_19b

    .line 857
    :cond_d4
    if-eqz v9, :cond_1a4

    .line 858
    :try_start_d6
    invoke-virtual {v9}, Ljava/io/BufferedReader;->close()V
    :try_end_d9
    .catch Ljava/io/IOException; {:try_start_d6 .. :try_end_d9} :catch_178
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_19b

    .line 859
    const/4 v8, 0x0

    .line 861
    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    :goto_da
    if-eqz v16, :cond_183

    .line 862
    :try_start_dc
    invoke-virtual/range {v16 .. v16}, Ljava/io/PrintWriter;->close()V
    :try_end_df
    .catch Ljava/io/IOException; {:try_start_dc .. :try_end_df} :catch_187
    .catchall {:try_start_dc .. :try_end_df} :catchall_1a0

    .line 863
    const/4 v15, 0x0

    .line 868
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :goto_e0
    const/4 v1, 0x0

    goto/16 :goto_19

    .line 826
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_e3
    :try_start_e3
    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_10c

    .line 827
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not delete file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 828
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_19

    .line 830
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_10c
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_d4

    .line 831
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, Could not rename file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_131
    .catch Ljava/io/FileNotFoundException; {:try_start_e3 .. :try_end_131} :catch_7d
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_131} :catch_18c
    .catchall {:try_start_e3 .. :try_end_131} :catchall_19b

    .line 832
    const/4 v1, -0x1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_19

    .line 838
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v17    # "removeLine":Ljava/lang/String;
    .end local v18    # "tempFile":Ljava/io/File;
    :catch_137
    move-exception v12

    .line 839
    .local v12, "ex":Ljava/io/IOException;
    :goto_138
    :try_start_138
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeSeapp_context, file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Other Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15b
    .catchall {:try_start_138 .. :try_end_15b} :catchall_175

    .line 842
    if-eqz v8, :cond_161

    .line 843
    :try_start_15d
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V

    .line 844
    const/4 v8, 0x0

    .line 846
    :cond_161
    if-eqz v15, :cond_167

    .line 847
    invoke-virtual {v15}, Ljava/io/PrintWriter;->close()V
    :try_end_166
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_166} :catch_16a
    .catchall {:try_start_15d .. :try_end_166} :catchall_175

    .line 848
    const/4 v15, 0x0

    .line 853
    :cond_167
    :goto_167
    const/4 v1, -0x1

    goto/16 :goto_19

    .line 850
    :catch_16a
    move-exception v11

    .line 851
    .local v11, "e":Ljava/io/IOException;
    :try_start_16b
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_174
    .catchall {:try_start_16b .. :try_end_174} :catchall_175

    goto :goto_167

    .line 790
    .end local v11    # "e":Ljava/io/IOException;
    .end local v12    # "ex":Ljava/io/IOException;
    :catchall_175
    move-exception v1

    :goto_176
    monitor-exit p0

    throw v1

    .line 865
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "removeLine":Ljava/lang/String;
    .restart local v18    # "tempFile":Ljava/io/File;
    :catch_178
    move-exception v11

    move-object v8, v9

    .line 866
    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    .restart local v11    # "e":Ljava/io/IOException;
    :goto_17a
    :try_start_17a
    sget-object v1, mSKLog:Lcom/android/server/SKLogger;

    const-string v2, "SEAMSContainer"

    const-string v3, "Couldn\'t close BufferedReader or PrintWriter"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_183
    .catchall {:try_start_17a .. :try_end_183} :catchall_1a0

    .end local v11    # "e":Ljava/io/IOException;
    :cond_183
    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto/16 :goto_e0

    .line 865
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_187
    move-exception v11

    goto :goto_17a

    .line 838
    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "pw":Ljava/io/PrintWriter;
    .end local v17    # "removeLine":Ljava/lang/String;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    :catch_189
    move-exception v12

    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_138

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catch_18c
    move-exception v12

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_138

    .line 835
    .end local v13    # "inFile":Ljava/io/File;
    .end local v14    # "line":Ljava/lang/String;
    .end local v18    # "tempFile":Ljava/io/File;
    :catch_191
    move-exception v12

    goto/16 :goto_81

    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v13    # "inFile":Ljava/io/File;
    .restart local v18    # "tempFile":Ljava/io/File;
    :catch_194
    move-exception v12

    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_81

    .line 790
    .end local v8    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    :catchall_198
    move-exception v1

    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_176

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v14    # "line":Ljava/lang/String;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :catchall_19b
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto :goto_176

    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v17    # "removeLine":Ljava/lang/String;
    :catchall_1a0
    move-exception v1

    move-object/from16 v15, v16

    .end local v16    # "pw":Ljava/io/PrintWriter;
    .restart local v15    # "pw":Ljava/io/PrintWriter;
    goto :goto_176

    .end local v8    # "br":Ljava/io/BufferedReader;
    .end local v15    # "pw":Ljava/io/PrintWriter;
    .restart local v9    # "br":Ljava/io/BufferedReader;
    .restart local v16    # "pw":Ljava/io/PrintWriter;
    :cond_1a4
    move-object v8, v9

    .end local v9    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "br":Ljava/io/BufferedReader;
    goto/16 :goto_da
.end method

.method public removeSEContainer(III)I
    .registers 5
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "containerID"    # I

    .prologue
    .line 154
    const/4 v0, -0x1

    return v0
.end method

.method public restartApp(Ljava/lang/String;)I
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 226
    const/4 v0, -0x1

    return v0
.end method

.method public updateAppToContainer(Ljava/lang/String;[Ljava/lang/String;IIIZ)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "certificate"    # [Ljava/lang/String;
    .param p3, "containerID"    # I
    .param p4, "allowcategory"    # I
    .param p5, "appType"    # I
    .param p6, "removeFlag"    # Z

    .prologue
    .line 167
    const/4 v0, -0x1

    return v0
.end method

.method public updateSeappContextsAndReload()I
    .registers 2

    .prologue
    .line 162
    const/4 v0, -0x1

    return v0
.end method
