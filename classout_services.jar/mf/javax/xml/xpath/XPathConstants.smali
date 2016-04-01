.class public Lmf/javax/xml/xpath/XPathConstants;
.super Ljava/lang/Object;
.source "XPathConstants.java"


# static fields
.field public static final BOOLEAN:Lmf/javax/xml/namespace/QName;

.field public static final DOM_OBJECT_MODEL:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final NODE:Lmf/javax/xml/namespace/QName;

.field public static final NODESET:Lmf/javax/xml/namespace/QName;

.field public static final NUMBER:Lmf/javax/xml/namespace/QName;

.field public static final STRING:Lmf/javax/xml/namespace/QName;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 70
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "NUMBER"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, NUMBER:Lmf/javax/xml/namespace/QName;

    .line 77
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "STRING"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, STRING:Lmf/javax/xml/namespace/QName;

    .line 84
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "BOOLEAN"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, BOOLEAN:Lmf/javax/xml/namespace/QName;

    .line 91
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "NODESET"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, NODESET:Lmf/javax/xml/namespace/QName;

    .line 98
    new-instance v0, Lmf/javax/xml/namespace/QName;

    const-string/jumbo v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "NODE"

    invoke-direct {v0, v1, v2}, Lmf/javax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, NODE:Lmf/javax/xml/namespace/QName;

    .line 103
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
