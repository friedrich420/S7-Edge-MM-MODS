.class public Lcom/sun/org/apache/xml/internal/security/utils/CachedXPathFuncHereAPI;
.super Ljava/lang/Object;


# static fields
.field static _funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

.field static class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

.field static class$com$sun$org$apache$xml$internal$security$utils$CachedXPathFuncHereAPI:Ljava/lang/Class;

.field static class$com$sun$org$apache$xml$internal$utils$PrefixResolver:Ljava/lang/Class;

.field static class$com$sun$org$apache$xpath$internal$Expression:Ljava/lang/Class;

.field static class$com$sun$org$apache$xpath$internal$XPath:Ljava/lang/Class;

.field static class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

.field static class$java$lang$Class:Ljava/lang/Class;

.field static class$java$lang$String:Ljava/lang/Class;

.field static class$javax$xml$transform$ErrorListener:Ljava/lang/Class;

.field static class$javax$xml$transform$SourceLocator:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

.field _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

.field _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

.field xpath:Lcom/sun/org/apache/xpath/internal/XPath;

.field xpathStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$CachedXPathFuncHereAPI:Ljava/lang/Class;

    if-nez v0, :cond_1d

    const-string v0, "com.sun.org.apache.xml.internal.security.utils.CachedXPathFuncHereAPI"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$utils$CachedXPathFuncHereAPI:Ljava/lang/Class;

    :goto_c
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-object v0, _funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-static {}, fixupFunctionTable()V

    return-void

    :cond_1d
    sget-object v0, class$com$sun$org$apache$xml$internal$security$utils$CachedXPathFuncHereAPI:Ljava/lang/Class;

    goto :goto_c
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    iput-object v0, p0, _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iput-object v0, p0, _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iput-object v0, p0, xpathStr:Ljava/lang/String;

    iput-object v0, p0, xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    iput-object v0, p0, _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iput-object v0, p0, _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iput-object v0, p0, xpathStr:Ljava/lang/String;

    iput-object v0, p0, xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/CachedXPathAPI;->getXPathContext()Lcom/sun/org/apache/xpath/internal/XPathContext;

    move-result-object v0

    iput-object v0, p0, _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xpath/internal/XPathContext;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    iput-object v0, p0, _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iput-object v0, p0, _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    iput-object v0, p0, xpathStr:Ljava/lang/String;

    iput-object v0, p0, xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    invoke-virtual {p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    iput-object p1, p0, _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

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

.method private createXPath(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/XPath;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    sget-object v0, class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_90

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$java$lang$String:Ljava/lang/Class;

    :goto_15
    aput-object v0, v1, v4

    sget-object v0, class$javax$xml$transform$SourceLocator:Ljava/lang/Class;

    if-nez v0, :cond_93

    const-string/jumbo v0, "javax.xml.transform.SourceLocator"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$javax$xml$transform$SourceLocator:Ljava/lang/Class;

    :goto_24
    aput-object v0, v1, v5

    sget-object v0, class$com$sun$org$apache$xml$internal$utils$PrefixResolver:Ljava/lang/Class;

    if-nez v0, :cond_96

    const-string v0, "com.sun.org.apache.xml.internal.utils.PrefixResolver"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$utils$PrefixResolver:Ljava/lang/Class;

    :goto_32
    aput-object v0, v1, v6

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, v1, v7

    const/4 v3, 0x4

    sget-object v0, class$javax$xml$transform$ErrorListener:Ljava/lang/Class;

    if-nez v0, :cond_99

    const-string/jumbo v0, "javax.xml.transform.ErrorListener"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$javax$xml$transform$ErrorListener:Ljava/lang/Class;

    :goto_46
    aput-object v0, v1, v3

    const/4 v3, 0x5

    sget-object v0, class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    if-nez v0, :cond_9c

    const-string v0, "com.sun.org.apache.xpath.internal.compiler.FunctionTable"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    :goto_55
    aput-object v0, v1, v3

    const/4 v0, 0x6

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object v2, v3, v5

    aput-object p2, v3, v6

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v0, v3, v7

    const/4 v0, 0x4

    aput-object v2, v3, v0

    const/4 v0, 0x5

    sget-object v5, _funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    aput-object v5, v3, v0

    :try_start_6f
    sget-object v0, class$com$sun$org$apache$xpath$internal$XPath:Ljava/lang/Class;

    if-nez v0, :cond_9f

    const-string v0, "com.sun.org.apache.xpath.internal.XPath"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xpath$internal$XPath:Ljava/lang/Class;

    :goto_7b
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xpath/internal/XPath;
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_6f .. :try_end_85} :catch_a2

    :goto_85
    if-nez v0, :cond_8f

    new-instance v0, Lcom/sun/org/apache/xpath/internal/XPath;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xpath/internal/XPath;-><init>(Ljava/lang/String;Ljavax/xml/transform/SourceLocator;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;ILjavax/xml/transform/ErrorListener;)V

    :cond_8f
    return-object v0

    :cond_90
    sget-object v0, class$java$lang$String:Ljava/lang/Class;

    goto :goto_15

    :cond_93
    sget-object v0, class$javax$xml$transform$SourceLocator:Ljava/lang/Class;

    goto :goto_24

    :cond_96
    sget-object v0, class$com$sun$org$apache$xml$internal$utils$PrefixResolver:Ljava/lang/Class;

    goto :goto_32

    :cond_99
    sget-object v0, class$javax$xml$transform$ErrorListener:Ljava/lang/Class;

    goto :goto_46

    :cond_9c
    sget-object v0, class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    goto :goto_55

    :cond_9f
    :try_start_9f
    sget-object v0, class$com$sun$org$apache$xpath$internal$XPath:Ljava/lang/Class;
    :try_end_a1
    .catch Ljava/lang/Throwable; {:try_start_9f .. :try_end_a1} :catch_a2

    goto :goto_7b

    :catch_a2
    move-exception v0

    move-object v0, v2

    goto :goto_85
.end method

.method private static fixupFunctionTable()V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Registering Here function"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_15
    const/4 v2, 0x2

    :try_start_16
    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v2, class$java$lang$String:Ljava/lang/Class;

    if-nez v2, :cond_102

    const-string/jumbo v2, "java.lang.String"

    invoke-static {v2}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, class$java$lang$String:Ljava/lang/Class;

    :goto_26
    aput-object v2, v3, v4

    const/4 v4, 0x1

    sget-object v2, class$com$sun$org$apache$xpath$internal$Expression:Ljava/lang/Class;

    if-nez v2, :cond_106

    const-string v2, "com.sun.org.apache.xpath.internal.Expression"

    invoke-static {v2}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, class$com$sun$org$apache$xpath$internal$Expression:Ljava/lang/Class;

    :goto_35
    aput-object v2, v3, v4

    sget-object v2, class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    if-nez v2, :cond_10a

    const-string v2, "com.sun.org.apache.xpath.internal.compiler.FunctionTable"

    invoke-static {v2}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    :goto_43
    const-string/jumbo v4, "installFunction"

    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_68

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "here"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHere;

    invoke-direct {v5}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHere;-><init>()V

    aput-object v5, v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_67} :catch_10e

    move v0, v1

    :cond_68
    move v2, v0

    :goto_69
    if-nez v2, :cond_148

    :try_start_6b
    new-instance v0, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;-><init>()V

    sput-object v0, _funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v0, class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_125

    const-string/jumbo v0, "java.lang.String"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$java$lang$String:Ljava/lang/Class;

    :goto_83
    aput-object v0, v3, v4

    const/4 v4, 0x1

    sget-object v0, class$java$lang$Class:Ljava/lang/Class;

    if-nez v0, :cond_129

    const-string/jumbo v0, "java.lang.Class"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$java$lang$Class:Ljava/lang/Class;

    :goto_93
    aput-object v0, v3, v4

    sget-object v0, class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    if-nez v0, :cond_12d

    const-string v0, "com.sun.org.apache.xpath.internal.compiler.FunctionTable"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    :goto_a1
    const-string/jumbo v4, "installFunction"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string/jumbo v5, "here"

    aput-object v5, v4, v0

    const/4 v5, 0x1

    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    if-nez v0, :cond_131

    const-string v0, "com.sun.org.apache.xml.internal.security.transforms.implementations.FuncHere"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    :goto_be
    aput-object v0, v4, v5

    sget-object v0, _funcTable:Lcom/sun/org/apache/xpath/internal/compiler/FunctionTable;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_6b .. :try_end_c5} :catch_134

    :goto_c5
    if-eqz v1, :cond_14e

    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_101

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Registered class "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    if-nez v0, :cond_14b

    const-string v0, "com.sun.org.apache.xml.internal.security.transforms.implementations.FuncHere"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    :goto_ec
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " for XPath function \'here()\' function in internal table"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :cond_101
    :goto_101
    return-void

    :cond_102
    :try_start_102
    sget-object v2, class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_26

    :cond_106
    sget-object v2, class$com$sun$org$apache$xpath$internal$Expression:Ljava/lang/Class;

    goto/16 :goto_35

    :cond_10a
    sget-object v2, class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;
    :try_end_10c
    .catch Ljava/lang/Throwable; {:try_start_102 .. :try_end_10c} :catch_10e

    goto/16 :goto_43

    :catch_10e
    move-exception v2

    sget-object v3, log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_122

    sget-object v3, log:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v5, "Error installing function using the static installFunction method"

    invoke-virtual {v3, v4, v5, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_122
    move v2, v0

    goto/16 :goto_69

    :cond_125
    :try_start_125
    sget-object v0, class$java$lang$String:Ljava/lang/Class;

    goto/16 :goto_83

    :cond_129
    sget-object v0, class$java$lang$Class:Ljava/lang/Class;

    goto/16 :goto_93

    :cond_12d
    sget-object v0, class$com$sun$org$apache$xpath$internal$compiler$FunctionTable:Ljava/lang/Class;

    goto/16 :goto_a1

    :cond_131
    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;
    :try_end_133
    .catch Ljava/lang/Throwable; {:try_start_125 .. :try_end_133} :catch_134

    goto :goto_be

    :catch_134
    move-exception v0

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_148

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v4, "Error installing function using the static installFunction method"

    invoke-virtual {v1, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_148
    move v1, v2

    goto/16 :goto_c5

    :cond_14b
    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    goto :goto_ec

    :cond_14e
    sget-object v0, log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_101

    sget-object v1, log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to register class "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    if-nez v0, :cond_18a

    const-string v0, "com.sun.org.apache.xml.internal.security.transforms.implementations.FuncHere"

    invoke-static {v0}, class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    :goto_173
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, " for XPath function \'here()\' function in internal table"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto/16 :goto_101

    :cond_18a
    sget-object v0, class$com$sun$org$apache$xml$internal$security$transforms$implementations$FuncHere:Ljava/lang/Class;

    goto :goto_173
.end method

.method public static getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 5

    const/4 v3, 0x3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v3, :cond_30

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_14
    if-eqz v1, :cond_2b

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v3, :cond_26

    move-object v0, v1

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_26
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_14

    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2f
    return-object v0

    :cond_30
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    check-cast p0, Lorg/w3c/dom/Attr;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_3e
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4c

    check-cast p0, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f

    :cond_4c
    const/4 v0, 0x0

    goto :goto_2f
.end method


# virtual methods
.method public eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2}, getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p1}, eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, xpathStr:Ljava/lang/String;

    if-eq p3, v0, :cond_22

    const-string/jumbo v0, "here()"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    iget-object v0, p0, _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->reset()V

    iget-object v0, p0, _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v0

    iput-object v0, p0, _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    :cond_1a
    :try_start_1a
    invoke-direct {p0, p3, p4}, createXPath(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v0

    iput-object v0, p0, xpath:Lcom/sun/org/apache/xpath/internal/XPath;
    :try_end_20
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1a .. :try_end_20} :catch_3e

    iput-object p3, p0, xpathStr:Ljava/lang/String;

    :cond_22
    iget-object v0, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    if-nez v0, :cond_2f

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    iget-object v1, p0, _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-direct {v0, p2, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;-><init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    iput-object v0, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    :cond_2f
    iget-object v0, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v0

    iget-object v1, p0, xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v2, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    invoke-virtual {v1, v2, v0, p4}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    return-object v0

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/ClassNotFoundException;

    if-eqz v2, :cond_71

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FuncHere"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_71

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v3, "endorsed.jdk1.4.0"

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/utils/I18n;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_71
    throw v0
.end method

.method public eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    iget-object v0, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    if-nez v0, :cond_d

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    iget-object v1, p0, _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    invoke-direct {v0, p2, v1}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;-><init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/dtm/DTMManager;)V

    iput-object v0, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    :cond_d
    new-instance v0, Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;

    invoke-interface {p4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_1d

    check-cast p4, Lorg/w3c/dom/Document;

    invoke-interface {p4}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p4

    :cond_1d
    invoke-direct {v0, p4}, Lcom/sun/org/apache/xml/internal/utils/PrefixResolverDefault;-><init>(Lorg/w3c/dom/Node;)V

    iget-object v1, p0, xpathStr:Ljava/lang/String;

    if-eq p3, v1, :cond_42

    const-string/jumbo v1, "here()"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_3a

    iget-object v1, p0, _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->reset()V

    iget-object v1, p0, _context:Lcom/sun/org/apache/xpath/internal/XPathContext;

    invoke-virtual {v1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMManager()Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    move-result-object v1

    iput-object v1, p0, _dtmManager:Lcom/sun/org/apache/xml/internal/dtm/DTMManager;

    :cond_3a
    invoke-direct {p0, p3, v0}, createXPath(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/XPath;

    move-result-object v1

    iput-object v1, p0, xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    iput-object p3, p0, xpathStr:Ljava/lang/String;

    :cond_42
    iget-object v1, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xpath/internal/XPathContext;->getDTMHandleFromNode(Lorg/w3c/dom/Node;)I

    move-result v1

    iget-object v2, p0, xpath:Lcom/sun/org/apache/xpath/internal/XPath;

    iget-object v3, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    invoke-virtual {v2, v3, v1, v0}, Lcom/sun/org/apache/xpath/internal/XPath;->execute(Lcom/sun/org/apache/xpath/internal/XPathContext;ILcom/sun/org/apache/xml/internal/utils/PrefixResolver;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    return-object v0
.end method

.method public getFuncHereContext()Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;
    .registers 2

    iget-object v0, p0, _funcHereContext:Lcom/sun/org/apache/xml/internal/security/transforms/implementations/FuncHereContext;

    return-object v0
.end method

.method public selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p1}, selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2}, getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p3}, eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodeset()Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    return-object v0
.end method

.method public selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-static {p2}, getStrFromNode(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0, p1}, selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public selectNodeList(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/NodeList;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, eval(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Ljava/lang/String;Lorg/w3c/dom/Node;)Lcom/sun/org/apache/xpath/internal/objects/XObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xpath/internal/objects/XObject;->nodelist()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p1}, selectSingleNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public selectSingleNode(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, selectNodeIterator(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/traversal/NodeIterator;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/traversal/NodeIterator;->nextNode()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method
