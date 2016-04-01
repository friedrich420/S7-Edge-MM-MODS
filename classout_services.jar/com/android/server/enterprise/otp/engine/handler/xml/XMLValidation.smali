.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;
.super Ljava/lang/Object;
.source "XMLValidation.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    return-void
.end method

.method private schemaValidation(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 16
    .param p1, "xmlBuffer"    # Ljava/lang/String;
    .param p2, "xsdFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 47
    iget-object v11, p0, mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 48
    .local v2, "resource":Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 49
    .local v9, "xsdStream":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 50
    .local v7, "xmlStream":Ljava/io/InputStream;
    if-eqz v2, :cond_45

    .line 52
    :try_start_b
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    .line 53
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1c} :catch_3e

    .line 63
    .end local v7    # "xmlStream":Ljava/io/InputStream;
    .local v8, "xmlStream":Ljava/io/InputStream;
    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;

    invoke-direct {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;-><init>()V

    .line 64
    .local v1, "factory":Lmf/javax/xml/validation/SchemaFactory;
    new-instance v5, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-direct {v5, v9}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 65
    .local v5, "srcXsd":Lmf/javax/xml/transform/stream/StreamSource;
    new-instance v4, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-direct {v4, v8}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    .line 68
    .local v4, "srcXml":Lmf/javax/xml/transform/stream/StreamSource;
    :try_start_2b
    invoke-virtual {v1, v5}, Lmf/javax/xml/validation/SchemaFactory;->newSchema(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;

    move-result-object v3

    .line 69
    .local v3, "schema":Lmf/javax/xml/validation/Schema;
    invoke-virtual {v3}, Lmf/javax/xml/validation/Schema;->newValidator()Lmf/javax/xml/validation/Validator;

    move-result-object v6

    .line 70
    .local v6, "validator":Lmf/javax/xml/validation/Validator;
    invoke-virtual {v6, v4}, Lmf/javax/xml/validation/Validator;->validate(Lmf/javax/xml/transform/Source;)V
    :try_end_36
    .catch Lorg/xml/sax/SAXException; {:try_start_2b .. :try_end_36} :catch_4b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_36} :catch_68

    .line 78
    const-string v10, "XMLValidation::schemaValidation: XML is Valid."

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    .line 79
    const/4 v10, 0x1

    move-object v7, v8

    .end local v1    # "factory":Lmf/javax/xml/validation/SchemaFactory;
    .end local v3    # "schema":Lmf/javax/xml/validation/Schema;
    .end local v4    # "srcXml":Lmf/javax/xml/transform/stream/StreamSource;
    .end local v5    # "srcXsd":Lmf/javax/xml/transform/stream/StreamSource;
    .end local v6    # "validator":Lmf/javax/xml/validation/Validator;
    .end local v8    # "xmlStream":Ljava/io/InputStream;
    .restart local v7    # "xmlStream":Ljava/io/InputStream;
    :goto_3d
    return v10

    .line 54
    :catch_3e
    move-exception v0

    .line 55
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "XMLValidation::schemaValidation: unable to open xsd"

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_3d

    .line 59
    .end local v0    # "e":Ljava/io/IOException;
    :cond_45
    const-string v11, "XMLValidation::schemaValidation: resources not found"

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_3d

    .line 71
    .end local v7    # "xmlStream":Ljava/io/InputStream;
    .restart local v1    # "factory":Lmf/javax/xml/validation/SchemaFactory;
    .restart local v4    # "srcXml":Lmf/javax/xml/transform/stream/StreamSource;
    .restart local v5    # "srcXsd":Lmf/javax/xml/transform/stream/StreamSource;
    .restart local v8    # "xmlStream":Ljava/io/InputStream;
    :catch_4b
    move-exception v0

    .line 72
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XMLValidation::schemaValidation: Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    move-object v7, v8

    .line 73
    .end local v8    # "xmlStream":Ljava/io/InputStream;
    .restart local v7    # "xmlStream":Ljava/io/InputStream;
    goto :goto_3d

    .line 74
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .end local v7    # "xmlStream":Ljava/io/InputStream;
    .restart local v8    # "xmlStream":Ljava/io/InputStream;
    :catch_68
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XMLValidation::schemaValidation: Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    move-object v7, v8

    .line 76
    .end local v8    # "xmlStream":Ljava/io/InputStream;
    .restart local v7    # "xmlStream":Ljava/io/InputStream;
    goto :goto_3d
.end method


# virtual methods
.method public isDskppValid(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlBuffer"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method

.method public isPskcValid(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlBuffer"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "result":Z
    iput-object p1, p0, mContext:Landroid/content/Context;

    .line 39
    const-string/jumbo v1, "pskc_schema.xsd"

    .line 40
    .local v1, "xsdFilePath":Ljava/lang/String;
    invoke-direct {p0, p2, v1}, schemaValidation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 41
    const/4 v0, 0x1

    .line 43
    :cond_d
    return v0
.end method
