.class public Lcom/android/server/ResourceManager;
.super Ljava/lang/Object;
.source "ResourceManager.java"


# static fields
.field private static BT_TYPE:I = 0x0

.field private static SDCARD_TYPE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "BTSdcard"

.field private static WHITELIST_MAC_PERM:Ljava/lang/String;

.field private static WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

.field private static instance:Lcom/android/server/ResourceManager;

.field private static mSKLog:Lcom/android/server/SKLogger;


# instance fields
.field private mPms:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    const-string v0, "/data/security/whitelist"

    sput-object v0, WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    .line 83
    const-string v0, "/data/security/whitelist/mac_permissions.xml"

    sput-object v0, WHITELIST_MAC_PERM:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    sput v0, SDCARD_TYPE:I

    .line 85
    const/4 v0, 0x1

    sput v0, BT_TYPE:I

    .line 86
    invoke-static {}, Lcom/android/server/SKLogger;->getLogger()Lcom/android/server/SKLogger;

    move-result-object v0

    sput-object v0, mSKLog:Lcom/android/server/SKLogger;

    .line 88
    const/4 v0, 0x0

    sput-object v0, instance:Lcom/android/server/ResourceManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    return-void
.end method

.method protected static declared-synchronized addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .registers 42
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resourceType"    # I

    .prologue
    .line 987
    const-class v34, Lcom/android/server/ResourceManager;

    monitor-enter v34

    :try_start_3
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 988
    .local v24, "seinfo":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 989
    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 990
    .local v5, "allowcategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 991
    .local v3, "allowContainerCategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x4

    const/16 v35, 0x4

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_1ca

    const/16 v33, 0x1

    :goto_2d
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    .line 992
    .local v16, "issdcardsbaapp":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x8

    const/16 v35, 0x8

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_1ce

    const/16 v33, 0x1

    :goto_43
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .line 993
    .local v15, "isbluetoothsbaapp":Ljava/lang/String;
    const/4 v14, 0x0

    .line 994
    .local v14, "isAddedMac":Z
    const/16 v17, 0x0

    .line 996
    .local v17, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_209

    move-result-object v9

    .line 997
    .local v9, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 999
    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_4f
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 1000
    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_1d2

    .line 1004
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-nez v33, :cond_68

    .line 1005
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1007
    :cond_68
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 1008
    const/16 v17, 0x1

    .line 1024
    :goto_70
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->normalize()V

    .line 1025
    const-string/jumbo v33, "policy"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 1026
    .local v21, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 1027
    .local v20, "policyElement":Lorg/w3c/dom/Element;
    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 1028
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v33, "signer"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 1029
    .local v26, "signer":Lorg/w3c/dom/NodeList;
    const/16 v28, 0x0

    .line 1030
    .local v28, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v27, 0x0

    .line 1031
    .local v27, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 1032
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    .line 1033
    .local v18, "newElement":Lorg/w3c/dom/Element;
    const/16 v25, 0x0

    .line 1034
    .local v25, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v30, 0x0

    .line 1035
    .local v30, "specialTag":Ljava/lang/String;
    const-string/jumbo v30, "service"

    .line 1036
    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 1037
    const-string/jumbo v33, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    const-string/jumbo v33, "seinfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1039
    if-eqz v6, :cond_d0

    .line 1040
    const-string v33, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    :cond_d0
    if-eqz v5, :cond_db

    .line 1043
    const-string v33, "allowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1045
    :cond_db
    if-eqz v3, :cond_e6

    .line 1046
    const-string v33, "containerallowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1048
    :cond_e6
    if-eqz v16, :cond_f4

    .line 1049
    const-string/jumbo v33, "issdcardsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1051
    :cond_f4
    if-eqz v15, :cond_100

    .line 1052
    const-string/jumbo v33, "isbluetoothsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    :cond_100
    sget v33, SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_118

    .line 1055
    const-string/jumbo v33, "sdcarduseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    :cond_118
    sget v33, BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_12f

    .line 1061
    const-string v33, "bluetoothuseridBL"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    :cond_12f
    const-string/jumbo v33, "signer"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v27

    .line 1071
    const-string/jumbo v33, "seinfo"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v25

    .line 1072
    const-string v33, "allow-all"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 1073
    const-string/jumbo v33, "signature"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    const-string/jumbo v33, "value"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    if-eqz v6, :cond_16c

    .line 1076
    const-string v33, "category"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    :cond_16c
    if-eqz v5, :cond_177

    .line 1079
    const-string v33, "allowcategory"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1082
    :cond_177
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_178
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v33

    move/from16 v0, v33

    if-ge v13, v0, :cond_265

    .line 1083
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v28, Lorg/w3c/dom/Element;

    .line 1084
    .restart local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v33, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_353

    .line 1085
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-static {v0, v1}, checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 1086
    .local v12, "existElem":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_343

    .line 1090
    sget v33, SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_2c5

    .line 1092
    const-string/jumbo v33, "sdcarduseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c3
    .catch Lorg/xml/sax/SAXException; {:try_start_4f .. :try_end_1c3} :catch_1f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4f .. :try_end_1c3} :catch_204
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4f .. :try_end_1c3} :catch_362
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_1c3} :catch_368
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_1c3} :catch_36e
    .catchall {:try_start_4f .. :try_end_1c3} :catchall_209

    move-result v33

    if-eqz v33, :cond_20c

    .line 1096
    const/16 v33, 0x0

    .line 1167
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v26    # "signer":Lorg/w3c/dom/NodeList;
    .end local v27    # "signerElement":Lorg/w3c/dom/Element;
    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v30    # "specialTag":Ljava/lang/String;
    :goto_1c8
    monitor-exit v34

    return v33

    .line 991
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    :cond_1ca
    const/16 v33, 0x0

    goto/16 :goto_2d

    .line 992
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    :cond_1ce
    const/16 v33, 0x0

    goto/16 :goto_43

    .line 1014
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    :cond_1d2
    :try_start_1d2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_1ff
    .catch Lorg/xml/sax/SAXException; {:try_start_1d2 .. :try_end_1d5} :catch_1f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d2 .. :try_end_1d5} :catch_204
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d2 .. :try_end_1d5} :catch_362
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d5} :catch_36e
    .catchall {:try_start_1d2 .. :try_end_1d5} :catchall_209

    .line 1018
    :goto_1d5
    :try_start_1d5
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-nez v33, :cond_1e4

    .line 1019
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1020
    :cond_1e4
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 1021
    const-string/jumbo v33, "policy"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 1022
    .local v23, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1f6
    .catch Lorg/xml/sax/SAXException; {:try_start_1d5 .. :try_end_1f6} :catch_1f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d5 .. :try_end_1f6} :catch_204
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d5 .. :try_end_1f6} :catch_362
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1f6} :catch_368
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1f6} :catch_36e
    .catchall {:try_start_1d5 .. :try_end_1f6} :catchall_209

    goto/16 :goto_70

    .line 1156
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "rootElement":Lorg/w3c/dom/Element;
    :catch_1f8
    move-exception v11

    .line 1157
    .local v11, "e1":Lorg/xml/sax/SAXException;
    :try_start_1f9
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_1fc
    .catchall {:try_start_1f9 .. :try_end_1fc} :catchall_209

    .line 1167
    .end local v11    # "e1":Lorg/xml/sax/SAXException;
    :goto_1fc
    const/16 v33, -0x1

    goto :goto_1c8

    .line 1015
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_1ff
    move-exception v10

    .line 1016
    .local v10, "e":Ljava/io/IOException;
    :try_start_200
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_203
    .catch Lorg/xml/sax/SAXException; {:try_start_200 .. :try_end_203} :catch_1f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_200 .. :try_end_203} :catch_204
    .catch Ljavax/xml/transform/TransformerException; {:try_start_200 .. :try_end_203} :catch_362
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_203} :catch_368
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_203} :catch_36e
    .catchall {:try_start_200 .. :try_end_203} :catchall_209

    goto :goto_1d5

    .line 1158
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "e":Ljava/io/IOException;
    :catch_204
    move-exception v11

    .line 1159
    .local v11, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_205
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_208
    .catchall {:try_start_205 .. :try_end_208} :catchall_209

    goto :goto_1fc

    .line 987
    .end local v3    # "allowContainerCategory":Ljava/lang/String;
    .end local v5    # "allowcategory":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    .end local v24    # "seinfo":Ljava/lang/String;
    :catchall_209
    move-exception v33

    monitor-exit v34

    throw v33

    .line 1098
    .restart local v3    # "allowContainerCategory":Ljava/lang/String;
    .restart local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "allowcategory":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    .restart local v18    # "newElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seinfo":Ljava/lang/String;
    .restart local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v26    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v27    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v30    # "specialTag":Ljava/lang/String;
    :cond_20c
    const/16 v19, 0x0

    .line 1099
    .local v19, "newValue":Ljava/lang/String;
    :try_start_20e
    const-string/jumbo v33, "sdcarduseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_2c0

    const-string/jumbo v33, "sdcarduseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v35, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2c0

    .line 1100
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v35, "sdcarduseridBL"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1104
    :goto_25a
    const-string/jumbo v33, "sdcarduseridBL"

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    const/4 v14, 0x1

    .line 1135
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_265
    :goto_265
    if-nez v14, :cond_281

    .line 1136
    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1137
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1138
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1139
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1141
    :cond_281
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->normalize()V

    .line 1142
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v32

    .line 1143
    .local v32, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v32 .. v32}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v31

    .line 1144
    .local v31, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v29, 0x0

    .line 1145
    .local v29, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v17, :cond_357

    .line 1146
    new-instance v29, Ljavax/xml/transform/dom/DOMSource;

    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v29

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1150
    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_29b
    new-instance v22, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1151
    .local v22, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1152
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-eqz v33, :cond_2bc

    .line 1153
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1155
    :cond_2bc
    const/16 v33, 0x0

    goto/16 :goto_1c8

    .line 1102
    .end local v22    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v19    # "newValue":Ljava/lang/String;
    :cond_2c0
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_25a

    .line 1108
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_2c5
    sget v33, BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_343

    .line 1110
    const-string v33, "bluetoothuseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2e7

    .line 1114
    const/16 v33, 0x0

    goto/16 :goto_1c8

    .line 1116
    :cond_2e7
    const/16 v19, 0x0

    .line 1117
    .restart local v19    # "newValue":Ljava/lang/String;
    const-string v33, "bluetoothuseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_33e

    const-string v33, "bluetoothuseridBL"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v35, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_33e

    .line 1118
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "bluetoothuseridBL"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1122
    :goto_332
    const-string v33, "bluetoothuseridBL"

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    const/4 v14, 0x1

    .line 1124
    goto/16 :goto_265

    .line 1120
    :cond_33e
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_332

    .line 1127
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_343
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1131
    const/4 v14, 0x1

    .line 1132
    goto/16 :goto_265

    .line 1082
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    :cond_353
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_178

    .line 1148
    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_357
    new-instance v29, Ljavax/xml/transform/dom/DOMSource;

    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_360
    .catch Lorg/xml/sax/SAXException; {:try_start_20e .. :try_end_360} :catch_1f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_20e .. :try_end_360} :catch_204
    .catch Ljavax/xml/transform/TransformerException; {:try_start_20e .. :try_end_360} :catch_362
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_360} :catch_368
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_360} :catch_36e
    .catchall {:try_start_20e .. :try_end_360} :catchall_209

    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_29b

    .line 1160
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v26    # "signer":Lorg/w3c/dom/NodeList;
    .end local v27    # "signerElement":Lorg/w3c/dom/Element;
    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v30    # "specialTag":Ljava/lang/String;
    .end local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_362
    move-exception v11

    .line 1161
    .local v11, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_363
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_1fc

    .line 1162
    .end local v11    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_368
    move-exception v11

    .line 1163
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1fc

    .line 1164
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_36e
    move-exception v10

    .line 1165
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_372
    .catchall {:try_start_363 .. :try_end_372} :catchall_209

    goto/16 :goto_1fc
.end method

.method protected static declared-synchronized addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I
    .registers 42
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "signature"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "resourceType"    # I

    .prologue
    .line 337
    const-class v34, Lcom/android/server/ResourceManager;

    monitor-enter v34

    :try_start_3
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 338
    .local v24, "seinfo":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->category:I

    move/from16 v33, v0

    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 339
    .local v6, "category":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->allowCategory:Ljava/lang/String;

    .line 340
    .local v5, "allowcategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->allowContainerCategory:Ljava/lang/String;

    .line 341
    .local v3, "allowContainerCategory":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x4

    const/16 v35, 0x4

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_1ca

    const/16 v33, 0x1

    :goto_2d
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v16

    .line 342
    .local v16, "issdcardsbaapp":Ljava/lang/String;
    move-object/from16 v0, p4

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->accessInfo:I

    move/from16 v33, v0

    and-int/lit8 v33, v33, 0x8

    const/16 v35, 0x8

    move/from16 v0, v33

    move/from16 v1, v35

    if-ne v0, v1, :cond_1ce

    const/16 v33, 0x1

    :goto_43
    invoke-static/range {v33 .. v33}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v15

    .line 343
    .local v15, "isbluetoothsbaapp":Ljava/lang/String;
    const/4 v14, 0x0

    .line 344
    .local v14, "isAddedMac":Z
    const/16 v17, 0x0

    .line 346
    .local v17, "macPermExists":Z
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_209

    move-result-object v9

    .line 347
    .local v9, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v8, 0x0

    .line 349
    .local v8, "doc":Lorg/w3c/dom/Document;
    :try_start_4f
    invoke-virtual {v9}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 350
    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v33

    if-eqz v33, :cond_1d2

    .line 354
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-nez v33, :cond_68

    .line 355
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 357
    :cond_68
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 358
    const/16 v17, 0x1

    .line 374
    :goto_70
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->normalize()V

    .line 375
    const-string/jumbo v33, "policy"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v21

    .line 376
    .local v21, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/16 v20, 0x0

    .line 377
    .local v20, "policyElement":Lorg/w3c/dom/Element;
    const/16 v33, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v20, Lorg/w3c/dom/Element;

    .line 378
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v33, "signer"

    move-object/from16 v0, v20

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v26

    .line 379
    .local v26, "signer":Lorg/w3c/dom/NodeList;
    const/16 v28, 0x0

    .line 380
    .local v28, "signerElementCur":Lorg/w3c/dom/Element;
    const/16 v27, 0x0

    .line 381
    .local v27, "signerElement":Lorg/w3c/dom/Element;
    const/4 v4, 0x0

    .line 382
    .local v4, "allowallElement":Lorg/w3c/dom/Element;
    const/16 v18, 0x0

    .line 383
    .local v18, "newElement":Lorg/w3c/dom/Element;
    const/16 v25, 0x0

    .line 384
    .local v25, "seinfoElement":Lorg/w3c/dom/Element;
    const/16 v30, 0x0

    .line 385
    .local v30, "specialTag":Ljava/lang/String;
    const-string/jumbo v30, "service"

    .line 386
    move-object/from16 v0, v30

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v18

    .line 387
    const-string/jumbo v33, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    const-string/jumbo v33, "seinfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    if-eqz v6, :cond_d0

    .line 390
    const-string v33, "category"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    :cond_d0
    if-eqz v5, :cond_db

    .line 393
    const-string v33, "allowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    :cond_db
    if-eqz v3, :cond_e6

    .line 396
    const-string v33, "containerallowcategory"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v3}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :cond_e6
    if-eqz v16, :cond_f4

    .line 399
    const-string/jumbo v33, "issdcardsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_f4
    if-eqz v15, :cond_100

    .line 402
    const-string/jumbo v33, "isbluetoothsbaapp"

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v15}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    :cond_100
    sget v33, SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_118

    .line 405
    const-string/jumbo v33, "sdcarduserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_118
    sget v33, BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_12f

    .line 411
    const-string v33, "bluetoothuserid"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v18

    move-object/from16 v1, v33

    move-object/from16 v2, v35

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_12f
    const-string/jumbo v33, "signer"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v27

    .line 421
    const-string/jumbo v33, "seinfo"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v25

    .line 422
    const-string v33, "allow-all"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    .line 423
    const-string/jumbo v33, "signature"

    move-object/from16 v0, v27

    move-object/from16 v1, v33

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string/jumbo v33, "value"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    if-eqz v6, :cond_16c

    .line 426
    const-string v33, "category"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v6}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_16c
    if-eqz v5, :cond_177

    .line 429
    const-string v33, "allowcategory"

    move-object/from16 v0, v25

    move-object/from16 v1, v33

    invoke-interface {v0, v1, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    :cond_177
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_178
    invoke-interface/range {v26 .. v26}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v33

    move/from16 v0, v33

    if-ge v13, v0, :cond_265

    .line 433
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v28

    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v28, Lorg/w3c/dom/Element;

    .line 434
    .restart local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    const-string/jumbo v33, "signature"

    move-object/from16 v0, v28

    move-object/from16 v1, v33

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-eqz v33, :cond_353

    .line 435
    move-object/from16 v0, v28

    move-object/from16 v1, p2

    invoke-static {v0, v1}, checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v12

    .line 436
    .local v12, "existElem":Lorg/w3c/dom/Element;
    if-eqz v12, :cond_343

    .line 440
    sget v33, SDCARD_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_2c5

    .line 442
    const-string/jumbo v33, "sdcarduserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1c3
    .catch Lorg/xml/sax/SAXException; {:try_start_4f .. :try_end_1c3} :catch_1f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4f .. :try_end_1c3} :catch_204
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4f .. :try_end_1c3} :catch_362
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_1c3} :catch_368
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_1c3} :catch_36e
    .catchall {:try_start_4f .. :try_end_1c3} :catchall_209

    move-result v33

    if-eqz v33, :cond_20c

    .line 446
    const/16 v33, 0x0

    .line 517
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v26    # "signer":Lorg/w3c/dom/NodeList;
    .end local v27    # "signerElement":Lorg/w3c/dom/Element;
    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v30    # "specialTag":Ljava/lang/String;
    :goto_1c8
    monitor-exit v34

    return v33

    .line 341
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    :cond_1ca
    const/16 v33, 0x0

    goto/16 :goto_2d

    .line 342
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    :cond_1ce
    const/16 v33, 0x0

    goto/16 :goto_43

    .line 364
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    :cond_1d2
    :try_start_1d2
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->createNewFile()Z
    :try_end_1d5
    .catch Ljava/io/IOException; {:try_start_1d2 .. :try_end_1d5} :catch_1ff
    .catch Lorg/xml/sax/SAXException; {:try_start_1d2 .. :try_end_1d5} :catch_1f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d2 .. :try_end_1d5} :catch_204
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d2 .. :try_end_1d5} :catch_362
    .catch Ljava/lang/Exception; {:try_start_1d2 .. :try_end_1d5} :catch_36e
    .catchall {:try_start_1d2 .. :try_end_1d5} :catchall_209

    .line 368
    :goto_1d5
    :try_start_1d5
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-nez v33, :cond_1e4

    .line 369
    const/16 v33, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 370
    :cond_1e4
    invoke-virtual {v7}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v8

    .line 371
    const-string/jumbo v33, "policy"

    move-object/from16 v0, v33

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    .line 372
    .local v23, "rootElement":Lorg/w3c/dom/Element;
    move-object/from16 v0, v23

    invoke-interface {v8, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1f6
    .catch Lorg/xml/sax/SAXException; {:try_start_1d5 .. :try_end_1f6} :catch_1f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1d5 .. :try_end_1f6} :catch_204
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1d5 .. :try_end_1f6} :catch_362
    .catch Ljava/io/IOException; {:try_start_1d5 .. :try_end_1f6} :catch_368
    .catch Ljava/lang/Exception; {:try_start_1d5 .. :try_end_1f6} :catch_36e
    .catchall {:try_start_1d5 .. :try_end_1f6} :catchall_209

    goto/16 :goto_70

    .line 506
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v23    # "rootElement":Lorg/w3c/dom/Element;
    :catch_1f8
    move-exception v11

    .line 507
    .local v11, "e1":Lorg/xml/sax/SAXException;
    :try_start_1f9
    invoke-virtual {v11}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_1fc
    .catchall {:try_start_1f9 .. :try_end_1fc} :catchall_209

    .line 517
    .end local v11    # "e1":Lorg/xml/sax/SAXException;
    :goto_1fc
    const/16 v33, -0x1

    goto :goto_1c8

    .line 365
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_1ff
    move-exception v10

    .line 366
    .local v10, "e":Ljava/io/IOException;
    :try_start_200
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V
    :try_end_203
    .catch Lorg/xml/sax/SAXException; {:try_start_200 .. :try_end_203} :catch_1f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_200 .. :try_end_203} :catch_204
    .catch Ljavax/xml/transform/TransformerException; {:try_start_200 .. :try_end_203} :catch_362
    .catch Ljava/io/IOException; {:try_start_200 .. :try_end_203} :catch_368
    .catch Ljava/lang/Exception; {:try_start_200 .. :try_end_203} :catch_36e
    .catchall {:try_start_200 .. :try_end_203} :catchall_209

    goto :goto_1d5

    .line 508
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v10    # "e":Ljava/io/IOException;
    :catch_204
    move-exception v11

    .line 509
    .local v11, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_205
    invoke-virtual {v11}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V
    :try_end_208
    .catchall {:try_start_205 .. :try_end_208} :catchall_209

    goto :goto_1fc

    .line 337
    .end local v3    # "allowContainerCategory":Ljava/lang/String;
    .end local v5    # "allowcategory":Ljava/lang/String;
    .end local v6    # "category":Ljava/lang/String;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v11    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v14    # "isAddedMac":Z
    .end local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .end local v16    # "issdcardsbaapp":Ljava/lang/String;
    .end local v17    # "macPermExists":Z
    .end local v24    # "seinfo":Ljava/lang/String;
    :catchall_209
    move-exception v33

    monitor-exit v34

    throw v33

    .line 448
    .restart local v3    # "allowContainerCategory":Ljava/lang/String;
    .restart local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .restart local v5    # "allowcategory":Ljava/lang/String;
    .restart local v6    # "category":Ljava/lang/String;
    .restart local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "doc":Lorg/w3c/dom/Document;
    .restart local v9    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v13    # "i":I
    .restart local v14    # "isAddedMac":Z
    .restart local v15    # "isbluetoothsbaapp":Ljava/lang/String;
    .restart local v16    # "issdcardsbaapp":Ljava/lang/String;
    .restart local v17    # "macPermExists":Z
    .restart local v18    # "newElement":Lorg/w3c/dom/Element;
    .restart local v20    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v24    # "seinfo":Ljava/lang/String;
    .restart local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .restart local v26    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v27    # "signerElement":Lorg/w3c/dom/Element;
    .restart local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .restart local v30    # "specialTag":Ljava/lang/String;
    :cond_20c
    const/16 v19, 0x0

    .line 449
    .local v19, "newValue":Ljava/lang/String;
    :try_start_20e
    const-string/jumbo v33, "sdcarduserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_2c0

    const-string/jumbo v33, "sdcarduserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v35, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_2c0

    .line 450
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v35, "sdcarduserid"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 454
    :goto_25a
    const-string/jumbo v33, "sdcarduserid"

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v14, 0x1

    .line 485
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_265
    :goto_265
    if-nez v14, :cond_281

    .line 486
    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 487
    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 488
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 489
    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 491
    :cond_281
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Lorg/w3c/dom/Element;->normalize()V

    .line 492
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v32

    .line 493
    .local v32, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v32 .. v32}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v31

    .line 494
    .local v31, "transformer":Ljavax/xml/transform/Transformer;
    const/16 v29, 0x0

    .line 495
    .local v29, "source":Ljavax/xml/transform/dom/DOMSource;
    if-eqz v17, :cond_357

    .line 496
    new-instance v29, Ljavax/xml/transform/dom/DOMSource;

    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v29

    invoke-direct {v0, v8}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 500
    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    :goto_29b
    new-instance v22, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 501
    .local v22, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v31

    move-object/from16 v1, v29

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 502
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v33

    if-eqz v33, :cond_2bc

    .line 503
    const/16 v33, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 505
    :cond_2bc
    const/16 v33, 0x0

    goto/16 :goto_1c8

    .line 452
    .end local v22    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    .restart local v12    # "existElem":Lorg/w3c/dom/Element;
    .restart local v19    # "newValue":Ljava/lang/String;
    :cond_2c0
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_25a

    .line 458
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_2c5
    sget v33, BT_TYPE:I

    move/from16 v0, p5

    move/from16 v1, v33

    if-ne v0, v1, :cond_343

    .line 460
    const-string v33, "bluetoothuserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-static {v0, v1}, checkUser(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v33

    if-eqz v33, :cond_2e7

    .line 464
    const/16 v33, 0x0

    goto/16 :goto_1c8

    .line 466
    :cond_2e7
    const/16 v19, 0x0

    .line 467
    .restart local v19    # "newValue":Ljava/lang/String;
    const-string v33, "bluetoothuserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_33e

    const-string v33, "bluetoothuserid"

    move-object/from16 v0, v33

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const-string v35, ""

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v33

    if-nez v33, :cond_33e

    .line 468
    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v33

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, ","

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string v35, "bluetoothuserid"

    move-object/from16 v0, v35

    invoke-interface {v12, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 472
    :goto_332
    const-string v33, "bluetoothuserid"

    move-object/from16 v0, v33

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    const/4 v14, 0x1

    .line 474
    goto/16 :goto_265

    .line 470
    :cond_33e
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    goto :goto_332

    .line 477
    .end local v19    # "newValue":Ljava/lang/String;
    :cond_343
    move-object/from16 v0, v26

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 481
    const/4 v14, 0x1

    .line 482
    goto/16 :goto_265

    .line 432
    .end local v12    # "existElem":Lorg/w3c/dom/Element;
    :cond_353
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_178

    .line 498
    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .restart local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .restart local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :cond_357
    new-instance v29, Ljavax/xml/transform/dom/DOMSource;

    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    move-object/from16 v0, v29

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V
    :try_end_360
    .catch Lorg/xml/sax/SAXException; {:try_start_20e .. :try_end_360} :catch_1f8
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_20e .. :try_end_360} :catch_204
    .catch Ljavax/xml/transform/TransformerException; {:try_start_20e .. :try_end_360} :catch_362
    .catch Ljava/io/IOException; {:try_start_20e .. :try_end_360} :catch_368
    .catch Ljava/lang/Exception; {:try_start_20e .. :try_end_360} :catch_36e
    .catchall {:try_start_20e .. :try_end_360} :catchall_209

    .restart local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    goto/16 :goto_29b

    .line 510
    .end local v4    # "allowallElement":Lorg/w3c/dom/Element;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "i":I
    .end local v18    # "newElement":Lorg/w3c/dom/Element;
    .end local v20    # "policyElement":Lorg/w3c/dom/Element;
    .end local v21    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v25    # "seinfoElement":Lorg/w3c/dom/Element;
    .end local v26    # "signer":Lorg/w3c/dom/NodeList;
    .end local v27    # "signerElement":Lorg/w3c/dom/Element;
    .end local v28    # "signerElementCur":Lorg/w3c/dom/Element;
    .end local v29    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v30    # "specialTag":Ljava/lang/String;
    .end local v31    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v32    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :catch_362
    move-exception v11

    .line 511
    .local v11, "e1":Ljavax/xml/transform/TransformerException;
    :try_start_363
    invoke-virtual {v11}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_1fc

    .line 512
    .end local v11    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_368
    move-exception v11

    .line 513
    .local v11, "e1":Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1fc

    .line 514
    .end local v11    # "e1":Ljava/io/IOException;
    :catch_36e
    move-exception v10

    .line 515
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_372
    .catchall {:try_start_363 .. :try_end_372} :catchall_209

    goto/16 :goto_1fc
.end method

.method private static checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;
    .registers 6
    .param p0, "curElem"    # Lorg/w3c/dom/Element;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 777
    if-nez p0, :cond_4

    .line 781
    const/4 v1, 0x0

    .line 797
    :cond_3
    :goto_3
    return-object v1

    .line 784
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 785
    .local v0, "currTrustedPackageElem":Lorg/w3c/dom/Element;
    const/4 v1, 0x0

    .line 787
    .local v1, "returnElem":Lorg/w3c/dom/Element;
    :goto_b
    if-eqz v0, :cond_3

    .line 788
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seinfo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_29

    const-string/jumbo v2, "name"

    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 792
    move-object v1, v0

    .line 793
    goto :goto_3

    .line 795
    :cond_29
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    .end local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    check-cast v0, Lorg/w3c/dom/Element;

    .restart local v0    # "currTrustedPackageElem":Lorg/w3c/dom/Element;
    goto :goto_b
.end method

.method private static checkUser(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .param p0, "existUsers"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 706
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 707
    .local v0, "allowUsers":[Ljava/lang/String;
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v1

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_9
    if-ge v2, v4, :cond_18

    aget-object v3, v1, v2

    .line 708
    .local v3, "item":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 709
    const/4 v5, 0x1

    .line 712
    .end local v3    # "item":Ljava/lang/String;
    :goto_14
    return v5

    .line 707
    .restart local v3    # "item":Ljava/lang/String;
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 712
    .end local v3    # "item":Ljava/lang/String;
    :cond_18
    const/4 v5, 0x0

    goto :goto_14
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/ResourceManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-class v1, Lcom/android/server/ResourceManager;

    monitor-enter v1

    :try_start_3
    sget-object v0, instance:Lcom/android/server/ResourceManager;

    if-nez v0, :cond_e

    .line 101
    new-instance v0, Lcom/android/server/ResourceManager;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, instance:Lcom/android/server/ResourceManager;

    .line 103
    :cond_e
    sget-object v0, instance:Lcom/android/server/ResourceManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    .line 100
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 750
    if-nez p0, :cond_5

    move-object v5, v6

    .line 772
    :cond_4
    :goto_4
    return-object v5

    .line 756
    :cond_5
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 757
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    const/4 v2, 0x0

    .line 759
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    const/16 v7, 0x40

    :try_start_c
    invoke-interface {v3, p0, v7, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 760
    if-eqz v2, :cond_29

    .line 761
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 762
    .local v4, "s":[Landroid/content/pm/Signature;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 763
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    array-length v7, v4

    if-ge v1, v7, :cond_4

    .line 764
    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_2b

    .line 763
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .end local v1    # "i":I
    .end local v4    # "s":[Landroid/content/pm/Signature;
    .end local v5    # "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_29
    move-object v5, v6

    .line 768
    goto :goto_4

    .line 770
    :catch_2b
    move-exception v0

    .line 771
    .local v0, "e1":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 772
    goto :goto_4
.end method

.method private static getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 742
    if-nez p0, :cond_4

    .line 746
    :cond_3
    :goto_3
    return-object v1

    .line 742
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

    .line 743
    :catch_10
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private static hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 688
    .local p0, "hs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_a

    .line 692
    :cond_8
    const/4 v0, 0x0

    .line 699
    :cond_9
    return-object v0

    .line 694
    :cond_a
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 695
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 696
    .local v1, "i":I
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 697
    .local v4, "s":Ljava/lang/String;
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aput-object v4, v0, v1

    move v1, v2

    .line 698
    .end local v2    # "i":I
    .restart local v1    # "i":I
    goto :goto_15
.end method

.method private loadContainerSetting(Ljava/lang/String;IZ)I
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "containerID"    # I
    .param p3, "appNotInstalled"    # Z

    .prologue
    .line 804
    const/4 v0, -0x1

    .line 805
    .local v0, "ret":I
    if-nez p1, :cond_f

    .line 806
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string/jumbo v4, "loadContainerSetting, packageName is null"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .line 820
    .end local v0    # "ret":I
    .local v1, "ret":I
    :goto_e
    return v1

    .line 812
    .end local v1    # "ret":I
    .restart local v0    # "ret":I
    :cond_f
    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageManagerService;

    iput-object v2, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    .line 814
    iget-object v2, p0, mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->updateAppInfoForPackage(Ljava/lang/String;IZ)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 818
    const/4 v0, 0x0

    :cond_23
    move v1, v0

    .line 820
    .end local v0    # "ret":I
    .restart local v1    # "ret":I
    goto :goto_e
.end method

.method protected static declared-synchronized removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .registers 31
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I

    .prologue
    .line 1176
    const-class v23, Lcom/android/server/ResourceManager;

    monitor-enter v23

    const/4 v9, 0x0

    .line 1177
    .local v9, "isRemoveSuccess":Z
    const/4 v15, 0x0

    .line 1179
    .local v15, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1a0

    move-result-object v5

    .line 1181
    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_9
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 1182
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 1183
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_116

    .line 1187
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_23

    .line 1188
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 1190
    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 1197
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 1198
    const-string/jumbo v22, "policy"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 1199
    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 1200
    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .line 1201
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v22, "signer"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 1202
    .local v17, "signer":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .line 1203
    .local v18, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .line 1210
    .local v13, "removeElem":Lorg/w3c/dom/Element;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_51
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_c7

    .line 1211
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v18, Lorg/w3c/dom/Element;

    .line 1213
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 1214
    if-eqz v13, :cond_1c7

    .line 1216
    sget v22, SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_13d

    .line 1217
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_13a

    .line 1221
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_119

    .line 1225
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 1226
    const/4 v9, 0x1

    .line 1227
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_bc

    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c7

    .line 1228
    :cond_bc
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1295
    :cond_c7
    :goto_c7
    if-eqz v9, :cond_1cb

    .line 1296
    const-string/jumbo v22, "service"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 1297
    .local v16, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-nez v22, :cond_df

    .line 1298
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 1303
    :cond_df
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 1304
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .line 1305
    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 1306
    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v19, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 1307
    .local v19, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 1308
    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 1315
    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v19    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_103
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-eqz v22, :cond_112

    .line 1316
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_112
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_112} :catch_19a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_112} :catch_1f7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_112} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_112} :catch_203
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_112} :catch_209
    .catchall {:try_start_9 .. :try_end_112} :catchall_1a0

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_112
    :goto_112
    move/from16 v22, v9

    .line 1329
    :goto_114
    monitor-exit v23

    return v22

    .line 1195
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    :cond_116
    const/16 v22, 0x0

    goto :goto_114

    .line 1235
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_119
    :try_start_119
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1236
    .local v10, "newVal":Ljava/lang/String;
    if-eqz v10, :cond_13d

    .line 1237
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    const/4 v9, 0x1

    .line 1239
    goto :goto_c7

    .line 1246
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_13a
    const/16 v22, 0x0

    goto :goto_114

    .line 1250
    :cond_13d
    sget v22, BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c7

    .line 1251
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1c3

    .line 1255
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a3

    .line 1259
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 1260
    const/4 v9, 0x1

    .line 1261
    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_18d

    const-string/jumbo v22, "sdcarduseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c7

    .line 1262
    :cond_18d
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_198
    .catch Lorg/xml/sax/SAXException; {:try_start_119 .. :try_end_198} :catch_19a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_119 .. :try_end_198} :catch_1f7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_119 .. :try_end_198} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_198} :catch_203
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_198} :catch_209
    .catchall {:try_start_119 .. :try_end_198} :catchall_1a0

    goto/16 :goto_c7

    .line 1318
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_19a
    move-exception v7

    .line 1319
    .local v7, "e1":Lorg/xml/sax/SAXException;
    :try_start_19b
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_19e
    .catchall {:try_start_19b .. :try_end_19e} :catchall_1a0

    goto/16 :goto_112

    .line 1176
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "e1":Lorg/xml/sax/SAXException;
    :catchall_1a0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 1269
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_1a3
    :try_start_1a3
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1270
    .restart local v10    # "newVal":Ljava/lang/String;
    if-eqz v10, :cond_1c7

    .line 1271
    const-string v22, "bluetoothuseridBL"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 1272
    const/4 v9, 0x1

    .line 1273
    goto/16 :goto_c7

    .line 1280
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_1c3
    const/16 v22, 0x0

    goto/16 :goto_114

    .line 1210
    :cond_1c7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_51

    .line 1313
    :cond_1cb
    sget-object v22, mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "BTSdcard"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " removeBlacklistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ". Please check again"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f5
    .catch Lorg/xml/sax/SAXException; {:try_start_1a3 .. :try_end_1f5} :catch_19a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a3 .. :try_end_1f5} :catch_1f7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a3 .. :try_end_1f5} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1f5} :catch_203
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1f5} :catch_209
    .catchall {:try_start_1a3 .. :try_end_1f5} :catchall_1a0

    goto/16 :goto_103

    .line 1320
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1f7
    move-exception v7

    .line 1321
    .local v7, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1f8
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_112

    .line 1322
    .end local v7    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1fd
    move-exception v7

    .line 1323
    .local v7, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_112

    .line 1324
    .end local v7    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_203
    move-exception v7

    .line 1325
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_112

    .line 1326
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_209
    move-exception v6

    .line 1327
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20d
    .catchall {:try_start_1f8 .. :try_end_20d} :catchall_1a0

    goto/16 :goto_112
.end method

.method private static removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "existUsers"    # Ljava/lang/String;
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 716
    const/4 v5, 0x0

    .line 717
    .local v5, "returnCat":Ljava/lang/String;
    const-string v7, ","

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 718
    .local v6, "srcUsers":[Ljava/lang/String;
    const/4 v4, 0x0

    .line 719
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

    .line 720
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 721
    const/4 v4, 0x1

    .line 719
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 723
    :cond_19
    if-nez v5, :cond_1d

    .line 724
    move-object v5, v2

    goto :goto_16

    .line 726
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

    .line 730
    .end local v2    # "item":Ljava/lang/String;
    :cond_35
    if-eqz v4, :cond_38

    .line 736
    .end local v5    # "returnCat":Ljava/lang/String;
    :goto_37
    return-object v5

    .restart local v5    # "returnCat":Ljava/lang/String;
    :cond_38
    const/4 v5, 0x0

    goto :goto_37
.end method

.method protected static declared-synchronized removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    .registers 31
    .param p0, "macPermFile"    # Ljava/io/File;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "resourceType"    # I

    .prologue
    .line 526
    const-class v23, Lcom/android/server/ResourceManager;

    monitor-enter v23

    const/4 v9, 0x0

    .line 527
    .local v9, "isRemoveSuccess":Z
    const/4 v15, 0x0

    .line 529
    .local v15, "seinfoElem":Lorg/w3c/dom/Element;
    :try_start_5
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1a0

    move-result-object v5

    .line 531
    .local v5, "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_9
    invoke-virtual {v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 532
    .local v3, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v4, 0x0

    .line 533
    .local v4, "doc":Lorg/w3c/dom/Document;
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_116

    .line 537
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-nez v22, :cond_23

    .line 538
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z

    .line 540
    :cond_23
    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v4

    .line 547
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 548
    const-string/jumbo v22, "policy"

    move-object/from16 v0, v22

    invoke-interface {v4, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v12

    .line 549
    .local v12, "policyNodeList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .line 550
    .local v11, "policyElement":Lorg/w3c/dom/Element;
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-interface {v12, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v11

    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    check-cast v11, Lorg/w3c/dom/Element;

    .line 551
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    const-string/jumbo v22, "signer"

    move-object/from16 v0, v22

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v17

    .line 552
    .local v17, "signer":Lorg/w3c/dom/NodeList;
    const/16 v18, 0x0

    .line 553
    .local v18, "signerElementCur":Lorg/w3c/dom/Element;
    const/4 v13, 0x0

    .line 560
    .local v13, "removeElem":Lorg/w3c/dom/Element;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_51
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    move/from16 v0, v22

    if-ge v8, v0, :cond_c7

    .line 561
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v18

    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    check-cast v18, Lorg/w3c/dom/Element;

    .line 563
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, checkTrustedEntryExists(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v13

    .line 564
    if-eqz v13, :cond_1c7

    .line 566
    sget v22, SDCARD_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_13d

    .line 567
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_13a

    .line 571
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_119

    .line 575
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 576
    const/4 v9, 0x1

    .line 577
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_bc

    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c7

    .line 578
    :cond_bc
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 647
    :cond_c7
    :goto_c7
    if-eqz v9, :cond_1cb

    .line 648
    const-string/jumbo v22, "service"

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v16

    .line 649
    .local v16, "servicePackageList":Lorg/w3c/dom/NodeList;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v22

    if-nez v22, :cond_df

    .line 650
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Lorg/w3c/dom/Element;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 655
    :cond_df
    invoke-interface {v4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Element;->normalize()V

    .line 656
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v21

    .line 657
    .local v21, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual/range {v21 .. v21}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v20

    .line 658
    .local v20, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v19, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v19

    invoke-direct {v0, v4}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 659
    .local v19, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v14, Ljavax/xml/transform/stream/StreamResult;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    .line 660
    .local v14, "result":Ljavax/xml/transform/stream/StreamResult;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 667
    .end local v14    # "result":Ljavax/xml/transform/stream/StreamResult;
    .end local v16    # "servicePackageList":Lorg/w3c/dom/NodeList;
    .end local v19    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v20    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v21    # "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    :goto_103
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->canWrite()Z

    move-result v22

    if-eqz v22, :cond_112

    .line 668
    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/io/File;->setWritable(Z)Z
    :try_end_112
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_112} :catch_19a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_112} :catch_1f7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_112} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_112} :catch_203
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_112} :catch_209
    .catchall {:try_start_9 .. :try_end_112} :catchall_1a0

    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_112
    :goto_112
    move/from16 v22, v9

    .line 681
    :goto_114
    monitor-exit v23

    return v22

    .line 545
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    :cond_116
    const/16 v22, 0x0

    goto :goto_114

    .line 585
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_119
    :try_start_119
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 586
    .local v10, "newVal":Ljava/lang/String;
    if-eqz v10, :cond_13d

    .line 587
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/4 v9, 0x1

    .line 589
    goto :goto_c7

    .line 596
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_13a
    const/16 v22, 0x0

    goto :goto_114

    .line 602
    :cond_13d
    sget v22, BT_TYPE:I

    move/from16 v0, p3

    move/from16 v1, v22

    if-ne v0, v1, :cond_1c7

    .line 603
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_1c3

    .line 607
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1a3

    .line 611
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->removeAttribute(Ljava/lang/String;)V

    .line 612
    const/4 v9, 0x1

    .line 613
    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_18d

    const-string/jumbo v22, "sdcarduserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v24, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_c7

    .line 614
    :cond_18d
    move-object/from16 v0, v17

    invoke-interface {v0, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-interface {v0, v13}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_198
    .catch Lorg/xml/sax/SAXException; {:try_start_119 .. :try_end_198} :catch_19a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_119 .. :try_end_198} :catch_1f7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_119 .. :try_end_198} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_119 .. :try_end_198} :catch_203
    .catch Ljava/lang/Exception; {:try_start_119 .. :try_end_198} :catch_209
    .catchall {:try_start_119 .. :try_end_198} :catchall_1a0

    goto/16 :goto_c7

    .line 670
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_19a
    move-exception v7

    .line 671
    .local v7, "e1":Lorg/xml/sax/SAXException;
    :try_start_19b
    invoke-virtual {v7}, Lorg/xml/sax/SAXException;->printStackTrace()V
    :try_end_19e
    .catchall {:try_start_19b .. :try_end_19e} :catchall_1a0

    goto/16 :goto_112

    .line 526
    .end local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "e1":Lorg/xml/sax/SAXException;
    :catchall_1a0
    move-exception v22

    monitor-exit v23

    throw v22

    .line 621
    .restart local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v4    # "doc":Lorg/w3c/dom/Document;
    .restart local v5    # "docBuildFac":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v8    # "i":I
    .restart local v11    # "policyElement":Lorg/w3c/dom/Element;
    .restart local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .restart local v13    # "removeElem":Lorg/w3c/dom/Element;
    .restart local v17    # "signer":Lorg/w3c/dom/NodeList;
    .restart local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :cond_1a3
    :try_start_1a3
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, removeUser(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 622
    .restart local v10    # "newVal":Ljava/lang/String;
    if-eqz v10, :cond_1c7

    .line 623
    const-string v22, "bluetoothuserid"

    move-object/from16 v0, v22

    invoke-interface {v13, v0, v10}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    const/4 v9, 0x1

    .line 625
    goto/16 :goto_c7

    .line 632
    .end local v10    # "newVal":Ljava/lang/String;
    :cond_1c3
    const/16 v22, 0x0

    goto/16 :goto_114

    .line 560
    :cond_1c7
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_51

    .line 665
    :cond_1cb
    sget-object v22, mSKLog:Lcom/android/server/SKLogger;

    const-string v24, "BTSdcard"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " removeWhitelistEntryFromMac, No match for packageName:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ". Please check again"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f5
    .catch Lorg/xml/sax/SAXException; {:try_start_1a3 .. :try_end_1f5} :catch_19a
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1a3 .. :try_end_1f5} :catch_1f7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a3 .. :try_end_1f5} :catch_1fd
    .catch Ljava/io/IOException; {:try_start_1a3 .. :try_end_1f5} :catch_203
    .catch Ljava/lang/Exception; {:try_start_1a3 .. :try_end_1f5} :catch_209
    .catchall {:try_start_1a3 .. :try_end_1f5} :catchall_1a0

    goto/16 :goto_103

    .line 672
    .end local v3    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v4    # "doc":Lorg/w3c/dom/Document;
    .end local v8    # "i":I
    .end local v11    # "policyElement":Lorg/w3c/dom/Element;
    .end local v12    # "policyNodeList":Lorg/w3c/dom/NodeList;
    .end local v13    # "removeElem":Lorg/w3c/dom/Element;
    .end local v17    # "signer":Lorg/w3c/dom/NodeList;
    .end local v18    # "signerElementCur":Lorg/w3c/dom/Element;
    :catch_1f7
    move-exception v7

    .line 673
    .local v7, "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :try_start_1f8
    invoke-virtual {v7}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    goto/16 :goto_112

    .line 674
    .end local v7    # "e1":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_1fd
    move-exception v7

    .line 675
    .local v7, "e1":Ljavax/xml/transform/TransformerException;
    invoke-virtual {v7}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    goto/16 :goto_112

    .line 676
    .end local v7    # "e1":Ljavax/xml/transform/TransformerException;
    :catch_203
    move-exception v7

    .line 677
    .local v7, "e1":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_112

    .line 678
    .end local v7    # "e1":Ljava/io/IOException;
    :catch_209
    move-exception v6

    .line 679
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_20d
    .catchall {:try_start_1f8 .. :try_end_20d} :catchall_1a0

    goto/16 :goto_112
.end method


# virtual methods
.method public addAppToSBABlacklist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 16
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 827
    const/4 v6, 0x0

    .line 832
    .local v6, "appNotInstalled":Z
    :try_start_1
    sget v2, SDCARD_TYPE:I

    if-eq p4, v2, :cond_b

    sget v2, BT_TYPE:I

    if-eq p4, v2, :cond_b

    .line 833
    const/4 v2, -0x1

    .line 929
    :goto_a
    return v2

    .line 835
    :cond_b
    new-instance v10, Ljava/io/File;

    sget-object v2, WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 836
    .local v10, "whitelistDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    .line 838
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 839
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 840
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_36

    .line 847
    :cond_25
    invoke-static {p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 848
    if-nez p2, :cond_45

    .line 849
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, " addAppToBlacklist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v2, -0x1

    goto :goto_a

    .line 842
    .end local v10    # "whitelistDir":Ljava/io/File;
    :catch_36
    move-exception v8

    .line 843
    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 844
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 845
    const/4 v2, -0x1

    goto :goto_a

    .line 855
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "whitelistDir":Ljava/io/File;
    :cond_45
    const/4 v7, 0x0

    .line 856
    .local v7, "certMatch":Z
    const/4 v1, 0x0

    .line 857
    .local v1, "signature":Ljava/lang/String;
    invoke-static {p2, p1}, getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 858
    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p3, :cond_50

    .line 862
    const/16 v2, -0xe

    goto :goto_a

    .line 863
    :cond_50
    if-nez v9, :cond_93

    .line 865
    const/4 v2, 0x0

    aget-object v1, p3, v2

    .line 866
    const/4 v6, 0x1

    .line 887
    :cond_56
    new-instance v0, Ljava/io/File;

    sget-object v2, WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 896
    .local v0, "macPermFile":Ljava/io/File;
    :try_start_5d
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 897
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_b7

    .line 898
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addAppToBlacklist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 899
    const-string/jumbo v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 900
    const-string/jumbo v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_7e
    move-object v2, p2

    move v3, p1

    move v5, p4

    .line 902
    invoke-static/range {v0 .. v5}, addBlacklistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_aa

    .line 904
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addBlacklistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_90} :catch_ba

    .line 905
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 868
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_93
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "signature":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 871
    .restart local v1    # "signature":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a4

    .line 872
    const/4 v7, 0x1

    .line 877
    :cond_a4
    if-nez v7, :cond_56

    .line 881
    const/16 v2, -0xd

    goto/16 :goto_a

    .line 907
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_aa
    :try_start_aa
    invoke-direct {p0, p2, p1, v6}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_be

    .line 908
    invoke-static {v0, p2, p1, p4}, removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_aa .. :try_end_b4} :catch_ba

    .line 909
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 918
    :cond_b7
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 920
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_ba
    move-exception v8

    .line 924
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 929
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_be
    const/4 v2, 0x0

    goto/16 :goto_a
.end method

.method public addAppToWhitelist(ILjava/lang/String;[Ljava/lang/String;I)I
    .registers 16
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "certificate"    # [Ljava/lang/String;
    .param p4, "resourceType"    # I

    .prologue
    .line 176
    const/4 v6, 0x0

    .line 181
    .local v6, "appNotInstalled":Z
    :try_start_1
    sget v2, SDCARD_TYPE:I

    if-eq p4, v2, :cond_b

    sget v2, BT_TYPE:I

    if-eq p4, v2, :cond_b

    .line 182
    const/4 v2, -0x1

    .line 279
    :goto_a
    return v2

    .line 184
    :cond_b
    new-instance v10, Ljava/io/File;

    sget-object v2, WHITELIST_SEANDROID_FOLDER:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    .local v10, "whitelistDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_25

    .line 187
    invoke-virtual {v10}, Ljava/io/File;->mkdir()Z

    .line 188
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setReadable(ZZ)Z

    .line 189
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v10, v2, v3}, Ljava/io/File;->setWritable(ZZ)Z
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_25} :catch_36

    .line 196
    :cond_25
    invoke-static {p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 197
    if-nez p2, :cond_45

    .line 198
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, " addAppToWhitelist failed, no packageName found"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v2, -0x1

    goto :goto_a

    .line 191
    .end local v10    # "whitelistDir":Ljava/io/File;
    :catch_36
    move-exception v8

    .line 192
    .local v8, "e":Ljava/lang/Exception;
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "Issue with whitelistDir directory"

    invoke-virtual {v2, v3, v5, v8}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 194
    const/4 v2, -0x1

    goto :goto_a

    .line 204
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v10    # "whitelistDir":Ljava/io/File;
    :cond_45
    const/4 v7, 0x0

    .line 205
    .local v7, "certMatch":Z
    const/4 v1, 0x0

    .line 206
    .local v1, "signature":Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v9, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2, p1}, getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v9

    .line 208
    if-nez p3, :cond_55

    .line 212
    const/16 v2, -0xe

    goto :goto_a

    .line 213
    :cond_55
    if-nez v9, :cond_98

    .line 215
    const/4 v2, 0x0

    aget-object v1, p3, v2

    .line 216
    const/4 v6, 0x1

    .line 237
    :cond_5b
    new-instance v0, Ljava/io/File;

    sget-object v2, WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 246
    .local v0, "macPermFile":Ljava/io/File;
    :try_start_62
    invoke-static {p2, p3}, Lcom/android/server/pm/SELinuxMMAC;->getApplicationInfo(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 247
    .local v4, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    if-eqz v2, :cond_bc

    .line 248
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addAppToWhitelist, Got Application Info, Seinfo is not null"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const-string/jumbo v2, "default"

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    .line 250
    const-string/jumbo v2, "untrusted"

    iput-object v2, v4, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    :cond_83
    move-object v2, p2

    move v3, p1

    move v5, p4

    .line 252
    invoke-static/range {v0 .. v5}, addWhitelistEntryToMac(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;I)I

    move-result v2

    if-eqz v2, :cond_af

    .line 254
    sget-object v2, mSKLog:Lcom/android/server/SKLogger;

    const-string v3, "BTSdcard"

    const-string v5, "addWhitelistEntryToMac failed"

    invoke-virtual {v2, v3, v5}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_95
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_95} :catch_bf

    .line 255
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 218
    .end local v0    # "macPermFile":Ljava/io/File;
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_98
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "signature":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 221
    .restart local v1    # "signature":Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, p3, v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a9

    .line 222
    const/4 v7, 0x1

    .line 227
    :cond_a9
    if-nez v7, :cond_5b

    .line 231
    const/16 v2, -0xd

    goto/16 :goto_a

    .line 257
    .restart local v0    # "macPermFile":Ljava/io/File;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_af
    :try_start_af
    invoke-direct {p0, p2, p1, v6}, loadContainerSetting(Ljava/lang/String;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_c3

    .line 258
    invoke-static {v0, p2, p1, p4}, removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_b9} :catch_bf

    .line 259
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 268
    :cond_bc
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 270
    .end local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_bf
    move-exception v8

    .line 274
    .restart local v8    # "e":Ljava/lang/Exception;
    const/4 v2, -0x1

    goto/16 :goto_a

    .line 279
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_c3
    const/4 v2, 0x0

    goto/16 :goto_a
.end method

.method public clearSBABlacklist(II)I
    .registers 12
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 1333
    sget v7, SDCARD_TYPE:I

    if-eq p2, v7, :cond_a

    sget v7, BT_TYPE:I

    if-eq p2, v7, :cond_a

    .line 1351
    :goto_9
    return v6

    .line 1336
    :cond_a
    const/4 v4, -0x1

    .line 1338
    .local v4, "ret":I
    :try_start_b
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v2

    .line 1339
    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_37

    .line 1340
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1341
    .local v5, "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1342
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, p2}, removeAppFromSBABlacklist(ILjava/lang/String;I)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2d

    move-result v4

    .line 1343
    if-eqz v4, :cond_1a

    goto :goto_9

    .line 1348
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2d
    move-exception v0

    .line 1349
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BTSdcard"

    const-string v8, "clearBlacklist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1351
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    const/4 v6, 0x0

    goto :goto_9
.end method

.method public clearWhitelist(II)I
    .registers 12
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 130
    sget v7, SDCARD_TYPE:I

    if-eq p2, v7, :cond_a

    sget v7, BT_TYPE:I

    if-eq p2, v7, :cond_a

    .line 149
    :goto_9
    return v6

    .line 133
    :cond_a
    const/4 v4, -0x1

    .line 136
    .local v4, "ret":I
    :try_start_b
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v2

    .line 137
    .local v2, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v2, :cond_37

    .line 138
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 139
    .local v5, "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_37

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 140
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {p0, p1, v3, p2}, removeAppFromWhitelist(ILjava/lang/String;I)I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_29} :catch_2d

    move-result v4

    .line 141
    if-eqz v4, :cond_1a

    goto :goto_9

    .line 146
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v5    # "templist":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_2d
    move-exception v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    sget-object v6, mSKLog:Lcom/android/server/SKLogger;

    const-string v7, "BTSdcard"

    const-string v8, "clearWhitelist exception"

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_37
    const/4 v6, 0x0

    goto :goto_9
.end method

.method public getPackagesFromSBABlacklist(II)[Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 1355
    sget v1, SDCARD_TYPE:I

    if-eq p2, v1, :cond_a

    sget v1, BT_TYPE:I

    if-eq p2, v1, :cond_a

    .line 1356
    const/4 v1, 0x0

    .line 1359
    :goto_9
    return-object v1

    .line 1358
    :cond_a
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getBlacklist(II)Ljava/util/HashSet;

    move-result-object v0

    .line 1359
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public getPackagesFromSBAList(I)[Ljava/lang/String;
    .registers 4
    .param p1, "resourceType"    # I

    .prologue
    .line 153
    sget v1, SDCARD_TYPE:I

    if-eq p1, v1, :cond_a

    sget v1, BT_TYPE:I

    if-eq p1, v1, :cond_a

    .line 154
    const/4 v1, 0x0

    .line 157
    :goto_9
    return-object v1

    .line 156
    :cond_a
    invoke-static {p1}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v0

    .line 157
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public getPackagesFromWhitelist(II)[Ljava/lang/String;
    .registers 5
    .param p1, "userId"    # I
    .param p2, "resourceType"    # I

    .prologue
    .line 107
    sget v1, SDCARD_TYPE:I

    if-eq p2, v1, :cond_a

    sget v1, BT_TYPE:I

    if-eq p2, v1, :cond_a

    .line 108
    const/4 v1, 0x0

    .line 111
    :goto_9
    return-object v1

    .line 110
    :cond_a
    invoke-static {p1, p2}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v0

    .line 111
    .local v0, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {v0}, hashset_to_str_array(Ljava/util/HashSet;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_9
.end method

.method public isSBAApp(Ljava/lang/String;I)I
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resourceType"    # I

    .prologue
    const/4 v2, -0x1

    .line 162
    :try_start_1
    sget v3, SDCARD_TYPE:I

    if-eq p2, v3, :cond_a

    sget v3, BT_TYPE:I

    if-eq p2, v3, :cond_a

    .line 172
    :cond_9
    :goto_9
    return v2

    .line 165
    :cond_a
    invoke-static {p2}, Lcom/android/server/pm/SELinuxMMAC;->getSBAlist(I)Ljava/util/HashSet;

    move-result-object v1

    .line 166
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_9

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18

    move-result v3

    if-eqz v3, :cond_9

    .line 167
    const/4 v2, 0x0

    goto :goto_9

    .line 169
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_18
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_9
.end method

.method public isWhitelistApp(ILjava/lang/String;I)I
    .registers 8
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v2, -0x1

    .line 116
    :try_start_1
    sget v3, SDCARD_TYPE:I

    if-eq p3, v3, :cond_a

    sget v3, BT_TYPE:I

    if-eq p3, v3, :cond_a

    .line 126
    :cond_9
    :goto_9
    return v2

    .line 119
    :cond_a
    invoke-static {p1, p3}, Lcom/android/server/pm/SELinuxMMAC;->getWhitelist(II)Ljava/util/HashSet;

    move-result-object v1

    .line 120
    .local v1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v1, :cond_9

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_13} :catch_18

    move-result v3

    if-eqz v3, :cond_9

    .line 121
    const/4 v2, 0x0

    goto :goto_9

    .line 123
    .end local v1    # "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_18
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_9
.end method

.method public removeAppFromSBABlacklist(ILjava/lang/String;I)I
    .registers 14
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 933
    const/4 v0, 0x0

    .line 937
    .local v0, "appNotInstalled":Z
    sget v7, SDCARD_TYPE:I

    if-eq p3, v7, :cond_b

    sget v7, BT_TYPE:I

    if-eq p3, v7, :cond_b

    .line 980
    :cond_a
    :goto_a
    return v6

    .line 940
    :cond_b
    invoke-static {p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 941
    if-nez p2, :cond_1b

    .line 942
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, " removeAppFromBlacklist failed, no packageName found"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 945
    :cond_1b
    const/4 v1, 0x0

    .line 946
    .local v1, "certMatch":Z
    const/4 v4, 0x0

    .line 947
    .local v4, "signature":Ljava/lang/String;
    invoke-static {p2, p1}, getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 948
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_24

    .line 952
    const/4 v0, 0x1

    .line 954
    :cond_24
    new-instance v3, Ljava/io/File;

    sget-object v7, WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 967
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_2b
    invoke-static {v3, p2, p1, p3}, removeBlacklistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 968
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string/jumbo v9, "removeEntryFromMac failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 974
    :catch_3c
    move-exception v2

    .line 975
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_a

    .line 971
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    invoke-direct {p0, p2, p1, v0}, loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_3c

    move-result v7

    if-eq v7, v6, :cond_a

    .line 980
    const/4 v6, 0x0

    goto :goto_a
.end method

.method public removeAppFromWhitelist(ILjava/lang/String;I)I
    .registers 14
    .param p1, "userId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "resourceType"    # I

    .prologue
    const/4 v6, -0x1

    .line 283
    const/4 v0, 0x0

    .line 287
    .local v0, "appNotInstalled":Z
    sget v7, SDCARD_TYPE:I

    if-eq p3, v7, :cond_b

    sget v7, BT_TYPE:I

    if-eq p3, v7, :cond_b

    .line 330
    :cond_a
    :goto_a
    return v6

    .line 290
    :cond_b
    invoke-static {p2}, getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 291
    if-nez p2, :cond_1b

    .line 292
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string v9, " removeAppFromWhitelist failed, no packageName found"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 295
    :cond_1b
    const/4 v1, 0x0

    .line 296
    .local v1, "certMatch":Z
    const/4 v4, 0x0

    .line 297
    .local v4, "signature":Ljava/lang/String;
    invoke-static {p2, p1}, getSignatureFromPackage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v5

    .line 298
    .local v5, "sigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v5, :cond_24

    .line 302
    const/4 v0, 0x1

    .line 304
    :cond_24
    new-instance v3, Ljava/io/File;

    sget-object v7, WHITELIST_MAC_PERM:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v3, "macPermFile":Ljava/io/File;
    :try_start_2b
    invoke-static {v3, p2, p1, p3}, removeWhitelistEntryFromMac(Ljava/io/File;Ljava/lang/String;II)Z

    move-result v7

    if-nez v7, :cond_3e

    .line 318
    sget-object v7, mSKLog:Lcom/android/server/SKLogger;

    const-string v8, "BTSdcard"

    const-string/jumbo v9, "removeEntryFromMac failed"

    invoke-virtual {v7, v8, v9}, Lcom/android/server/SKLogger;->logAll(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 324
    :catch_3c
    move-exception v2

    .line 325
    .local v2, "e":Ljava/lang/Exception;
    goto :goto_a

    .line 321
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3e
    invoke-direct {p0, p2, p1, v0}, loadContainerSetting(Ljava/lang/String;IZ)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_41} :catch_3c

    move-result v7

    if-eq v7, v6, :cond_a

    .line 330
    const/4 v6, 0x0

    goto :goto_a
.end method
