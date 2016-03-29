.class public Lcom/android/settings/csc/CscParser;
.super Ljava/lang/Object;
.source "CscParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/csc/CscParser$CscNodeList;
    }
.end annotation


# static fields
.field private static CSC_OTHERS_FILE:Ljava/lang/String;

.field private static CSC_XML_FILE:Ljava/lang/String;

.field private static Media_Type:I

.field private static value_uri:Landroid/net/Uri;


# instance fields
.field private mDoc:Lorg/w3c/dom/Document;

.field private mRoot:Lorg/w3c/dom/Node;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "/system/csc/customer.xml"

    sput-object v0, Lcom/android/settings/csc/CscParser;->CSC_XML_FILE:Ljava/lang/String;

    .line 30
    const-string v0, "/system/csc/others.xml"

    sput-object v0, Lcom/android/settings/csc/CscParser;->CSC_OTHERS_FILE:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/csc/CscParser;->value_uri:Landroid/net/Uri;

    .line 41
    const/4 v0, 0x1

    sput v0, Lcom/android/settings/csc/CscParser;->Media_Type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/csc/CscParser;->update(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getChameleonPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    const-string v0, "/carrier/chameleon.xml"

    .line 307
    .local v0, "chameleon_path":Ljava/lang/String;
    return-object v0
.end method

.method public static getCustomerPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    sget-object v0, Lcom/android/settings/csc/CscParser;->CSC_XML_FILE:Ljava/lang/String;

    .line 282
    .local v0, "customer_path":Ljava/lang/String;
    return-object v0
.end method

.method public static getSalesCode()Ljava/lang/String;
    .locals 10

    .prologue
    .line 245
    const-string v6, "null"

    .line 247
    .local v6, "sales_code":Ljava/lang/String;
    const/4 v4, 0x0

    .line 248
    .local v4, "fr":Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 252
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/efs/imei/mps_code.dat"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v3, "fe":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 256
    new-instance v5, Ljava/io/FileReader;

    const-string v7, "/efs/imei/mps_code.dat"

    invoke-direct {v5, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    .end local v4    # "fr":Ljava/io/FileReader;
    .local v5, "fr":Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 258
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .line 269
    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    :goto_0
    if-eqz v4, :cond_0

    .line 270
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 271
    :cond_0
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9

    .line 276
    .end local v3    # "fe":Ljava/io/File;
    :cond_1
    :goto_1
    return-object v6

    .line 260
    .restart local v3    # "fe":Ljava/io/File;
    :cond_2
    :try_start_4
    const-string v7, "CscParser"

    const-string v8, "mps_code.dat does not exist"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 263
    .end local v3    # "fe":Ljava/io/File;
    :catch_0
    move-exception v2

    .line 264
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_5
    const-string v7, "CscParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "File not Found exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 269
    if-eqz v4, :cond_3

    .line 270
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 271
    :cond_3
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 273
    :catch_1
    move-exception v7

    goto :goto_1

    .line 265
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v7

    .line 269
    :goto_3
    if-eqz v4, :cond_4

    .line 270
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 271
    :cond_4
    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_1

    .line 273
    :catch_3
    move-exception v7

    goto :goto_1

    .line 268
    :catchall_0
    move-exception v7

    .line 269
    :goto_4
    if-eqz v4, :cond_5

    .line 270
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    .line 271
    :cond_5
    if-eqz v0, :cond_6

    .line 272
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 274
    :cond_6
    :goto_5
    throw v7

    .line 273
    :catch_4
    move-exception v8

    goto :goto_5

    .line 268
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v3    # "fe":Ljava/io/File;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_4

    .line 265
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_5
    move-exception v7

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_6
    move-exception v7

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_3

    .line 263
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "fr":Ljava/io/FileReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v5    # "fr":Ljava/io/FileReader;
    :catch_8
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v4, v5

    .end local v5    # "fr":Ljava/io/FileReader;
    .restart local v4    # "fr":Ljava/io/FileReader;
    goto :goto_2

    .line 273
    :catch_9
    move-exception v7

    goto :goto_1
.end method

.method private update(Ljava/lang/String;)V
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 82
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 84
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "fe":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    const-string v3, "CscParser"

    const-string v4, "update(): xml file exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/csc/CscParser;->mDoc:Lorg/w3c/dom/Document;

    .line 92
    iget-object v3, p0, Lcom/android/settings/csc/CscParser;->mDoc:Lorg/w3c/dom/Document;

    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/csc/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const-string v3, "CscParser"

    const-string v4, "update(): xml file not exist"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0, p1}, Lcom/android/settings/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 101
    .local v1, "node":Lorg/w3c/dom/Node;
    if-nez v1, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v2

    .line 104
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 105
    .local v0, "firstChild":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getAttrbute(Ljava/lang/String;II)Ljava/lang/String;
    .locals 18
    .param p1, "tagPath"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "mode"    # I

    .prologue
    .line 198
    const/4 v3, 0x0

    .line 199
    .local v3, "attribute":Ljava/lang/String;
    const-string v15, "[.]"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 200
    .local v14, "tagSplit":[Ljava/lang/String;
    array-length v10, v14

    .line 202
    .local v10, "tagCount":I
    add-int/lit8 v11, v10, -0x1

    .end local v10    # "tagCount":I
    .local v11, "tagCount":I
    const/4 v15, 0x3

    if-ge v10, v15, :cond_0

    move v10, v11

    .end local v11    # "tagCount":I
    .restart local v10    # "tagCount":I
    move-object v4, v3

    .line 240
    .end local v3    # "attribute":Ljava/lang/String;
    .local v4, "attribute":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 207
    .end local v4    # "attribute":Ljava/lang/String;
    .end local v10    # "tagCount":I
    .restart local v3    # "attribute":Ljava/lang/String;
    .restart local v11    # "tagCount":I
    :cond_0
    add-int/lit8 v10, v11, -0x1

    .end local v11    # "tagCount":I
    .restart local v10    # "tagCount":I
    aget-object v9, v14, v11

    .line 208
    .local v9, "tagAttr":Ljava/lang/String;
    aget-object v12, v14, v10

    .line 209
    .local v12, "tagList":Ljava/lang/String;
    const/4 v13, 0x0

    .line 211
    .local v13, "tagNode":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v10, :cond_2

    .line 212
    if-nez v13, :cond_1

    .line 213
    aget-object v13, v14, v6

    .line 211
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 215
    :cond_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    aget-object v16, v14, v6

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 218
    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/settings/csc/CscParser;->search(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v12}, Lcom/android/settings/csc/CscParser;->searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v8

    .line 219
    .local v8, "nodeList":Lorg/w3c/dom/NodeList;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v15

    move/from16 v0, p2

    if-le v15, v0, :cond_3

    .line 220
    move/from16 v0, p2

    invoke-interface {v8, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/Element;

    .line 223
    .local v7, "list":Lorg/w3c/dom/Element;
    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 228
    .end local v7    # "list":Lorg/w3c/dom/Element;
    :cond_3
    if-eqz v3, :cond_4

    const/4 v15, 0x1

    move/from16 v0, p3

    if-ne v0, v15, :cond_4

    .line 229
    const-string v15, "/"

    invoke-virtual {v3, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "attrSlash":[Ljava/lang/String;
    array-length v15, v1

    add-int/lit8 v5, v15, -0x1

    .line 232
    .local v5, "cntSlash":I
    aget-object v15, v1, v5

    if-eqz v15, :cond_4

    .line 233
    aget-object v15, v1, v5

    const-string v16, "[.]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "attrSplit":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v2, v15

    if-eqz v15, :cond_4

    .line 235
    const/4 v15, 0x0

    aget-object v3, v2, v15

    .line 239
    .end local v1    # "attrSlash":[Ljava/lang/String;
    .end local v2    # "attrSplit":[Ljava/lang/String;
    .end local v5    # "cntSlash":I
    :cond_4
    const-string v15, "CscParser"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ": "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v3

    .line 240
    .end local v3    # "attribute":Ljava/lang/String;
    .restart local v4    # "attribute":Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public search(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 109
    if-nez p1, :cond_1

    move-object v0, v3

    .line 124
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/android/settings/csc/CscParser;->mRoot:Lorg/w3c/dom/Node;

    .line 113
    .local v0, "node":Lorg/w3c/dom/Node;
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 116
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, "token":Ljava/lang/String;
    if-nez v0, :cond_2

    move-object v0, v3

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/csc/CscParser;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 122
    goto :goto_1
.end method

.method public search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 6
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 128
    if-nez p1, :cond_1

    move-object v0, v4

    .line 145
    :cond_0
    :goto_0
    return-object v0

    .line 131
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 133
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_2

    .line 134
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    .line 136
    .local v3, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 137
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 139
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 136
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_2
    move-object v0, v4

    .line 145
    goto :goto_0
.end method

.method public searchList(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 8
    .param p1, "parent"    # Lorg/w3c/dom/Node;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 149
    if-nez p1, :cond_1

    move-object v4, v6

    .line 173
    :cond_0
    :goto_0
    return-object v4

    .line 153
    :cond_1
    :try_start_0
    new-instance v4, Lcom/android/settings/csc/CscParser$CscNodeList;

    invoke-direct {v4}, Lcom/android/settings/csc/CscParser$CscNodeList;-><init>()V

    .line 154
    .local v4, "list":Lcom/android/settings/csc/CscParser$CscNodeList;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 156
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_0

    .line 157
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    .line 159
    .local v5, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_0

    .line 160
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 162
    .local v0, "child":Lorg/w3c/dom/Node;
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    if-eqz v7, :cond_2

    .line 164
    :try_start_1
    invoke-virtual {v4, v0}, Lcom/android/settings/csc/CscParser$CscNodeList;->appendChild(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 165
    :catch_0
    move-exception v2

    .line 166
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 172
    .end local v0    # "child":Lorg/w3c/dom/Node;
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i":I
    .end local v4    # "list":Lcom/android/settings/csc/CscParser$CscNodeList;
    .end local v5    # "n":I
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v4, v6

    .line 173
    goto :goto_0
.end method
