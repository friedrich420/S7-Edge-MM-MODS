.class public Lcom/sun/org/apache/xml/internal/security/Init;
.super Ljava/lang/Object;


# static fields
.field public static final CONF_NS:Ljava/lang/String; = "http://www.xmlsecurity.org/NS/#configuration"

.field private static _alreadyInitialized:Z

.field static class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

    if-nez v0, :cond_1a

    const-string v0, "com.sun.org.apache.xml.internal.security.Init"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, _alreadyInitialized:Z

    return-void

    :cond_1a
    sget-object v0, class$com$sun$org$apache$xml$internal$security$Init:Ljava/lang/Class;

    goto :goto_c
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    return-object v0

    :catch_5
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static declared-synchronized init()V
    .registers 59

    const-class v38, Lcom/sun/org/apache/xml/internal/security/Init;

    monitor-enter v38

    :try_start_3
    sget-boolean v4, _alreadyInitialized:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_ac

    if-eqz v4, :cond_9

    :cond_7
    :goto_7
    monitor-exit v38

    return-void

    :cond_9
    const-wide/16 v36, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v32, 0x0

    const-wide/16 v30, 0x0

    const-wide/16 v28, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    const/4 v4, 0x1

    :try_start_1e
    sput-boolean v4, _alreadyInitialized:Z
    :try_end_20
    .catchall {:try_start_1e .. :try_end_20} :catchall_ac

    :try_start_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v42

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v44

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v46

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v5

    const-string v4, "com.sun.org.apache.xml.internal.security.resource.config"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "com.sun.org.apache.xml.internal.security.Init"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    if-eqz v4, :cond_94

    :goto_4e
    invoke-virtual {v6, v4}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v48

    const-wide/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_5f} :catch_9d
    .catchall {:try_start_20 .. :try_end_5f} :catchall_ac

    move-result-wide v50

    :try_start_60
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->init()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_98
    .catchall {:try_start_60 .. :try_end_63} :catchall_ac

    :try_start_63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    :goto_75
    if-eqz v4, :cond_85

    const-string v5, "Configuration"

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_af

    :cond_85
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v5

    :goto_89
    if-eqz v5, :cond_59a

    instance-of v4, v5, Lorg/w3c/dom/Element;

    if-nez v4, :cond_b4

    :cond_8f
    :goto_8f
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v5

    goto :goto_89

    :cond_94
    const-string/jumbo v4, "resource/config.xml"

    goto :goto_4e

    :catch_98
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    throw v4
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_9d} :catch_9d
    .catchall {:try_start_63 .. :try_end_9d} :catchall_ac

    :catch_9d
    move-exception v4

    :try_start_9e
    sget-object v5, log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v7, "Bad: "

    invoke-virtual {v5, v6, v7, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_9e .. :try_end_aa} :catchall_ac

    goto/16 :goto_7

    :catchall_ac
    move-exception v4

    monitor-exit v38

    throw v4

    :cond_af
    :try_start_af
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v4

    goto :goto_75

    :cond_b4
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v39

    const-string v4, "ResourceBundles"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ed

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object v0, v5

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    const-string/jumbo v36, "defaultLanguageCode"

    move-object/from16 v0, v36

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v36

    const-string/jumbo v37, "defaultCountryCode"

    move-object/from16 v0, v37

    invoke-interface {v4, v0}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v37

    if-nez v36, :cond_17c

    const/4 v4, 0x0

    move-object/from16 v36, v4

    :goto_e1
    if-nez v37, :cond_184

    const/4 v4, 0x0

    :goto_e4
    move-object/from16 v0, v36

    invoke-static {v0, v4}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->init(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    :cond_ed
    const-string v4, "CanonicalizationMethods"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v34

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->init()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v32, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v33, "CanonicalizationMethod"

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    invoke-static {v4, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v32

    const/4 v4, 0x0

    :goto_110
    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v33, v0

    move/from16 v0, v33

    if-ge v4, v0, :cond_1b3

    aget-object v33, v32, v4

    const/16 v54, 0x0

    const-string v55, "URI"

    move-object/from16 v0, v33

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    aget-object v54, v32, v4

    const/16 v55, 0x0

    const-string v56, "JAVACLASS"

    invoke-interface/range {v54 .. v56}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_132} :catch_9d
    .catchall {:try_start_af .. :try_end_132} :catchall_ac

    move-result-object v54

    :try_start_133
    invoke-static/range {v54 .. v54}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v55 .. v56}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v55

    if-eqz v55, :cond_172

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string v58, "Canonicalizer.register("

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string v58, ", "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v55 .. v57}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_172
    move-object/from16 v0, v33

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->register(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_179
    .catch Ljava/lang/ClassNotFoundException; {:try_start_133 .. :try_end_179} :catch_18a
    .catch Ljava/lang/Exception; {:try_start_133 .. :try_end_179} :catch_9d
    .catchall {:try_start_133 .. :try_end_179} :catchall_ac

    :goto_179
    add-int/lit8 v4, v4, 0x1

    goto :goto_110

    :cond_17c
    :try_start_17c
    invoke-interface/range {v36 .. v36}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v36, v4

    goto/16 :goto_e1

    :cond_184
    invoke-interface/range {v37 .. v37}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_e4

    :catch_18a
    move-exception v55

    const/16 v55, 0x2

    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v33, v55, v56

    const/16 v33, 0x1

    aput-object v54, v55, v33

    sget-object v33, log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v56, "algorithm.classDoesNotExist"

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v33

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_179

    :cond_1b3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v32

    :cond_1b7
    const-string v4, "TransformAlgorithms"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_284

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->init()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v20, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v21, "TransformAlgorithm"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v4, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v20

    const/4 v4, 0x0

    :goto_1da
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v4, v0, :cond_280

    aget-object v21, v20, v4

    const/16 v54, 0x0

    const-string v55, "URI"

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    aget-object v54, v20, v4

    const/16 v55, 0x0

    const-string v56, "JAVACLASS"

    invoke-interface/range {v54 .. v56}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1fc
    .catch Ljava/lang/Exception; {:try_start_17c .. :try_end_1fc} :catch_9d
    .catchall {:try_start_17c .. :try_end_1fc} :catchall_ac

    move-result-object v54

    :try_start_1fd
    invoke-static/range {v54 .. v54}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v55 .. v56}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v55

    if-eqz v55, :cond_23c

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string v58, "Transform.register("

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string v58, ", "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v55 .. v57}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_23c
    move-object/from16 v0, v21

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/Transform;->register(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_243
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1fd .. :try_end_243} :catch_246
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1fd .. :try_end_243} :catch_26f
    .catch Ljava/lang/Exception; {:try_start_1fd .. :try_end_243} :catch_9d
    .catchall {:try_start_1fd .. :try_end_243} :catchall_ac

    :goto_243
    add-int/lit8 v4, v4, 0x1

    goto :goto_1da

    :catch_246
    move-exception v55

    const/16 v55, 0x2

    :try_start_249
    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v21, v55, v56

    const/16 v21, 0x1

    aput-object v54, v55, v21

    sget-object v21, log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v56, "algorithm.classDoesNotExist"

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_243

    :catch_26f
    move-exception v21

    sget-object v21, log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v55, "Not able to found dependecies for algorithm, I\'m keep working."

    move-object/from16 v0, v21

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_243

    :cond_280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    :cond_284
    const-string v4, "JCEAlgorithmMappings"

    move-object/from16 v0, v39

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    move-object v0, v5

    check-cast v0, Lorg/w3c/dom/Element;

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/org/apache/xml/internal/security/algorithms/JCEMapper;->init(Lorg/w3c/dom/Element;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v30

    :cond_29d
    const-string v4, "SignatureAlgorithms"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_359

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->providerInit()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v22, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v23, "SignatureAlgorithm"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v4, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v22

    const/4 v4, 0x0

    :goto_2c0
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_355

    aget-object v23, v22, v4

    const/16 v54, 0x0

    const-string v55, "URI"

    move-object/from16 v0, v23

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aget-object v54, v22, v4

    const/16 v55, 0x0

    const-string v56, "JAVACLASS"

    invoke-interface/range {v54 .. v56}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2e2
    .catch Ljava/lang/Exception; {:try_start_249 .. :try_end_2e2} :catch_9d
    .catchall {:try_start_249 .. :try_end_2e2} :catchall_ac

    move-result-object v54

    :try_start_2e3
    invoke-static/range {v54 .. v54}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v55 .. v56}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v55

    if-eqz v55, :cond_322

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string v58, "SignatureAlgorithm.register("

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string v58, ", "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string v58, ")"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v55 .. v57}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_322
    move-object/from16 v0, v23

    move-object/from16 v1, v54

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/algorithms/SignatureAlgorithm;->register(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_329
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e3 .. :try_end_329} :catch_32c
    .catch Ljava/lang/Exception; {:try_start_2e3 .. :try_end_329} :catch_9d
    .catchall {:try_start_2e3 .. :try_end_329} :catchall_ac

    :goto_329
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c0

    :catch_32c
    move-exception v55

    const/16 v55, 0x2

    :try_start_32f
    move/from16 v0, v55

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    aput-object v23, v55, v56

    const/16 v23, 0x1

    aput-object v54, v55, v23

    sget-object v23, log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v56, "algorithm.classDoesNotExist"

    move-object/from16 v0, v56

    move-object/from16 v1, v55

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v55

    move-object/from16 v0, v23

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_329

    :cond_355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    :cond_359
    const-string v4, "ResourceResolvers"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_443

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->init()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v54, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v55, "Resolver"

    move-object/from16 v0, v54

    move-object/from16 v1, v55

    invoke-static {v4, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v54

    const/4 v4, 0x0

    :goto_37c
    move-object/from16 v0, v54

    array-length v0, v0

    move/from16 v55, v0

    move/from16 v0, v55

    if-ge v4, v0, :cond_443

    aget-object v8, v54, v4

    const/4 v9, 0x0

    const-string v55, "JAVACLASS"

    move-object/from16 v0, v55

    invoke-interface {v8, v9, v0}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aget-object v9, v54, v4

    const/16 v55, 0x0

    const-string v56, "DESCRIPTION"

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-interface {v9, v0, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3e6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v55

    if-lez v55, :cond_3e6

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v55 .. v56}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v55

    if-eqz v55, :cond_3dc

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string v58, "Register Resolver: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string v58, ": "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3dc
    .catch Ljava/lang/Exception; {:try_start_32f .. :try_end_3dc} :catch_9d
    .catchall {:try_start_32f .. :try_end_3dc} :catchall_ac

    :cond_3dc
    :goto_3dc
    :try_start_3dc
    invoke-static {v8}, Lcom/sun/org/apache/xml/internal/security/utils/resolver/ResourceResolver;->register(Ljava/lang/String;)V
    :try_end_3df
    .catch Ljava/lang/Throwable; {:try_start_3dc .. :try_end_3df} :catch_419
    .catch Ljava/lang/Exception; {:try_start_3dc .. :try_end_3df} :catch_9d
    .catchall {:try_start_3dc .. :try_end_3df} :catchall_ac

    :goto_3df
    :try_start_3df
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_37c

    :cond_3e6
    sget-object v9, log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v55

    invoke-virtual {v9, v0}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v9

    if-eqz v9, :cond_3dc

    sget-object v9, log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v57, "Register Resolver: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    const-string v57, ": For unknown purposes"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v56

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v9, v0, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3dc

    :catch_419
    move-exception v9

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string v58, "Cannot register:"

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v57, " perhaps some needed jars are not installed"

    move-object/from16 v0, v57

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    invoke-virtual {v0, v1, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3df

    :cond_443
    const-string v4, "KeyResolver"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_506

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->init()V

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v28, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v29, "Resolver"

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v28

    const/4 v4, 0x0

    :goto_466
    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    if-ge v4, v0, :cond_502

    aget-object v29, v28, v4

    const/16 v54, 0x0

    const-string v55, "JAVACLASS"

    move-object/from16 v0, v29

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    aget-object v54, v28, v4

    const/16 v55, 0x0

    const-string v56, "DESCRIPTION"

    invoke-interface/range {v54 .. v56}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v54

    if-eqz v54, :cond_4d3

    invoke-virtual/range {v54 .. v54}, Ljava/lang/String;->length()I

    move-result v55

    if-lez v55, :cond_4d3

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v55 .. v56}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v55

    if-eqz v55, :cond_4cd

    sget-object v55, log:Ljava/util/logging/Logger;

    sget-object v56, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v57, Ljava/lang/StringBuffer;

    invoke-direct/range {v57 .. v57}, Ljava/lang/StringBuffer;-><init>()V

    const-string v58, "Register Resolver: "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    const-string v58, ": "

    invoke-virtual/range {v57 .. v58}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v57

    move-object/from16 v0, v57

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v54

    invoke-virtual/range {v54 .. v54}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v54

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_4cd
    :goto_4cd
    invoke-static/range {v29 .. v29}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->register(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_466

    :cond_4d3
    sget-object v54, log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v54 .. v55}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v54

    if-eqz v54, :cond_4cd

    sget-object v54, log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v57, "Register Resolver: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    const-string v57, ": For unknown purposes"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v54 .. v56}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_4cd

    :cond_502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    :cond_506
    const-string v4, "PrefixMappings"

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v6}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_527

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "Now I try to bind prefixes:"

    invoke-virtual {v4, v6, v7}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_527
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v4

    const-string/jumbo v6, "http://www.xmlsecurity.org/NS/#configuration"

    const-string v7, "PrefixMapping"

    invoke-static {v4, v6, v7}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNodes(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;)[Lorg/w3c/dom/Element;

    move-result-object v6

    const/4 v4, 0x0

    :goto_535
    array-length v7, v6

    if-ge v4, v7, :cond_594

    aget-object v7, v6, v4

    const/16 v39, 0x0

    const-string/jumbo v54, "namespace"

    move-object/from16 v0, v39

    move-object/from16 v1, v54

    invoke-interface {v7, v0, v1}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aget-object v39, v6, v4

    const/16 v54, 0x0

    const-string/jumbo v55, "prefix"

    move-object/from16 v0, v39

    move-object/from16 v1, v54

    move-object/from16 v2, v55

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    sget-object v54, log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual/range {v54 .. v55}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v54

    if-eqz v54, :cond_58c

    sget-object v54, log:Ljava/util/logging/Logger;

    sget-object v55, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v56, Ljava/lang/StringBuffer;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuffer;-><init>()V

    const-string v57, "Now I try to bind "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    const-string v57, " to "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    move-object/from16 v0, v56

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-virtual/range {v54 .. v56}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_58c
    move-object/from16 v0, v39

    invoke-static {v7, v0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->setDefaultPrefix(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_535

    :cond_594
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    goto/16 :goto_8f

    :cond_59a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-object v39, log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    move-object/from16 v0, v39

    move-object/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v39

    if-eqz v39, :cond_5d5

    sget-object v39, log:Ljava/util/logging/Logger;

    sget-object v54, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v55, Ljava/lang/StringBuffer;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuffer;-><init>()V

    const-string v56, "XX_init                             "

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v55

    sub-long v4, v4, v40

    long-to-int v4, v4

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v39

    move-object/from16 v1, v54

    invoke-virtual {v0, v1, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_5d5
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_608

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v39, Ljava/lang/StringBuffer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuffer;-><init>()V

    const-string v40, "  XX_prng                           "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    sub-long v40, v44, v42

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v39

    const-string v40, " ms"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_608
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_63b

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v39, Ljava/lang/StringBuffer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuffer;-><init>()V

    const-string v40, "  XX_parsing                        "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    sub-long v40, v48, v46

    move-wide/from16 v0, v40

    long-to-int v0, v0

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v39

    const-string v40, " ms"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_63b
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_672

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v39, Ljava/lang/StringBuffer;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuffer;-><init>()V

    const-string v40, "  XX_configure_i18n                 "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v39

    sub-long v16, v36, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_672
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6a5

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "  XX_configure_reg_c14n             "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    sub-long v32, v32, v34

    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v16

    const-string v17, " ms"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_6a5
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_6d4

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    const-string v17, "  XX_configure_reg_jcemapper        "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v16

    sub-long v12, v30, v12

    long-to-int v12, v12

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_6d4
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_703

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "  XX_configure_reg_keyInfo          "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    sub-long v16, v52, v50

    move-wide/from16 v0, v16

    long-to-int v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_703
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_732

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "  XX_configure_reg_keyResolver      "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    sub-long v16, v28, v18

    move-wide/from16 v0, v16

    long-to-int v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v12

    const-string v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v5, v12}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_732
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_75f

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuffer;

    invoke-direct {v12}, Ljava/lang/StringBuffer;-><init>()V

    const-string v13, "  XX_configure_reg_prefixes         "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    sub-long v6, v6, v26

    long-to-int v6, v6

    invoke-virtual {v12, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_75f
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_78c

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "  XX_configure_reg_resourceresolver "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sub-long v8, v8, v24

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_78c
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_7b9

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "  XX_configure_reg_sigalgos         "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sub-long v8, v22, v10

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_7b9
    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, log:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "  XX_configure_reg_transforms       "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    sub-long v8, v20, v14

    long-to-int v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_7e6
    .catch Ljava/lang/Exception; {:try_start_3df .. :try_end_7e6} :catch_9d
    .catchall {:try_start_3df .. :try_end_7e6} :catchall_ac

    goto/16 :goto_7
.end method

.method public static final isInitialized()Z
    .registers 1

    sget-boolean v0, _alreadyInitialized:Z

    return v0
.end method
